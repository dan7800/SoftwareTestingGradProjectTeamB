package com.google.android.gm.provider;

import android.app.*;
import com.google.android.gsf.*;
import java.io.*;
import com.android.mail.utils.*;
import android.database.sqlite.*;
import android.database.*;
import java.util.*;
import android.text.*;
import android.content.*;
import android.os.*;

public class MailIndexerService extends IntentService
{
    private static int bkK;
    private static String bkL;
    private static final String[] bkM;
    private static final String[] bkN;
    private static final String[] bkO;
    private static final String[] bkP;
    private static volatile MailIndexerService bkQ;
    private static int bkS;
    private volatile boolean bkR;
    private String mAccount;
    
    static {
        MailIndexerService.bkK = 50;
        MailIndexerService.bkL = "gmail_full_text_search_message_index_batch_size";
        bkM = new String[] { "messageId", "conversation", "subject", "snippet", "body", "fromAddress", "toAddresses", "ccAddresses", "bccAddresses" };
        bkN = new String[] { "_id", "subject", "snippet" };
        bkO = new String[] { "docid" };
        bkP = new String[] { "tbl_name" };
        MailIndexerService.bkS = -1;
    }
    
    public MailIndexerService() {
        super("MailIndexerService");
        this.bkR = false;
    }
    
    static void G(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS conversation_fts_table");
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS message_fts_table");
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS message_fts_table_index");
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS conversation_fts_table_index");
    }
    
    static void H(final SQLiteDatabase sqLiteDatabase) {
        G(sqLiteDatabase);
        I(sqLiteDatabase);
    }
    
    private boolean Hf() {
        final File filesDir = this.getFilesDir();
        final long usableSpace = filesDir.getUsableSpace();
        if (Gmail.bZ((Context)this)) {
            return usableSpace >= c.getLong(this.getContentResolver(), "gmail_large_data_partition_min_indexing_available_space", 1000000000L);
        }
        final long totalSpace = filesDir.getTotalSpace();
        final boolean b = usableSpace >= 0.3f * totalSpace;
        if (!b) {
            E.e("Gmail", "Data space requirement not met for indexing. Total: %d, Avail: %d", totalSpace, usableSpace);
        }
        return b;
    }
    
    public static void I(final SQLiteDatabase sqLiteDatabase) {
        if (!e(sqLiteDatabase, "conversation_fts_table")) {
            sqLiteDatabase.execSQL("CREATE VIRTUAL TABLE conversation_fts_table USING FTS4 (subject TEXT, snippet TEXT, fromAddress TEXT, )");
        }
        if (!e(sqLiteDatabase, "message_fts_table")) {
            sqLiteDatabase.execSQL("CREATE VIRTUAL TABLE message_fts_table USING FTS4 (conversation TEXT, subject TEXT, snippet TEXT, body TEXT, fromAddress TEXT, toAddresses TEXT, ccAddresses TEXT, bccAddresses TEXT, )");
        }
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS message_fts_table_index(docid INTEGER PRIMARY KEY)");
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS conversation_fts_table_index(docid INTEGER PRIMARY KEY)");
    }
    
    private boolean N(final MailEngine mailEngine) {
        final SQLiteDatabase bcJ = mailEngine.bcJ;
        final boolean a = this.a(bcJ, "message_fts_table", "message_fts_table_index", "messages", "message_fts_table_index.docid = messages.messageId", "messages.messageId is null");
        boolean b;
        if (a) {
            b = true;
        }
        else {
            if (!this.Hf()) {
                return false;
            }
            final HashSet<Long> set = new HashSet<Long>();
            final Cursor query = bcJ.query("messages", new String[] { "messageId" }, "queryId = 0 AND messageId NOT IN (SELECT docid from message_fts_table_index)", (String[])null, (String)null, (String)null, (String)null);
            if (query == null) {
                return false;
            }
            if (this.bkR) {
                return true;
            }
            try {
                while (query.moveToNext()) {
                    set.add(query.getLong(0));
                }
            }
            finally {
                query.close();
            }
            query.close();
            final int size = set.size();
            E.c("Gmail", "Number of messages to index: %d", size);
            final int int1 = c.getInt(this.getContentResolver(), MailIndexerService.bkL, MailIndexerService.bkK);
            final ArrayList<ContentValues> list = new ArrayList<ContentValues>();
            final Iterator<Object> iterator = set.iterator();
            int n = 0;
            b = a;
        Label_0445_Outer:
            while (iterator.hasNext()) {
                final Long n2 = iterator.next();
                ++n;
                final Cursor c = mailEngine.c(MailIndexerService.bkM, n2);
            Label_0746_Outer:
                while (true) {
                    if (c != null) {
                        try {
                            if (c.moveToFirst()) {
                                final ContentValues contentValues = new ContentValues(9);
                                contentValues.put("messageId", c.getLong(0));
                                contentValues.put("conversation", c.getLong(1));
                                contentValues.put("subject", c.getString(2));
                                contentValues.put("snippet", c.getString(3));
                                final String string = c.getString(4);
                                contentValues.put("fromAddress", c.getString(5));
                                contentValues.put("toAddresses", c.getString(6));
                                contentValues.put("ccAddresses", c.getString(7));
                                contentValues.put("bccAddresses", c.getString(8));
                                contentValues.put("body", N.cD(string));
                                list.add(contentValues);
                            }
                            c.close();
                            if (this.bkR) {
                                E.c("Gmail", "Yielded for contention, while indexing messages", new Object[0]);
                                return true;
                            }
                        }
                        catch (CompressedMessageCursor$CorruptedMessageException ex) {
                            E.e("Gmail", ex, "Unable to decompress the message body for indexing", new Object[0]);
                        }
                        catch (OutOfMemoryError outOfMemoryError) {
                            E.e("Gmail", outOfMemoryError, "Out of memory error when loading message body", new Object[0]);
                            if (!list.isEmpty()) {
                                return b;
                            }
                            continue Label_0746_Outer;
                        }
                        catch (IllegalStateException ex2) {
                            E.e("Gmail", ex2, "IllegalStateExcption reading message from cursor", new Object[0]);
                        }
                        finally {
                            c.close();
                        }
                        while (true) {
                            Label_1006: {
                                if (list.size() < int1 && n != size) {
                                    break Label_1006;
                                }
                                boolean b2 = false;
                            Label_1013:
                                while (true) {
                                    E.c("Gmail", "Indexing batch with %d messages", list.size());
                                    bcJ.beginTransactionNonExclusive();
                                    while (true) {
                                        Label_1020: {
                                            try {
                                                for (final ContentValues contentValues2 : list) {
                                                    Label_0697: {
                                                        if (contentValues2 == null) {
                                                            break Label_0697;
                                                        }
                                                        try {
                                                            final SQLiteDatabase bcJ2 = mailEngine.bcJ;
                                                            if (bcJ2 != null && bcJ2.isOpen() && mailEngine.Ge()) {
                                                                final ContentValues contentValues3 = new ContentValues();
                                                                final ContentValues contentValues4 = new ContentValues();
                                                                final String asString = contentValues2.getAsString("messageId");
                                                                if (asString != null) {
                                                                    bcJ2.delete("message_fts_table", "docid = ?", new String[] { asString });
                                                                }
                                                                if (asString != null) {
                                                                    contentValues3.put("docid", asString);
                                                                    contentValues4.put("docid", asString);
                                                                }
                                                                contentValues3.put("conversation", contentValues2.getAsString("conversation"));
                                                                contentValues3.put("subject", contentValues2.getAsString("subject"));
                                                                contentValues3.put("snippet", contentValues2.getAsString("snippet"));
                                                                final String asString2 = contentValues2.getAsString("body");
                                                                if (asString2 != null) {
                                                                    contentValues3.put("body", asString2);
                                                                }
                                                                contentValues3.put("fromAddress", contentValues2.getAsString("fromAddress"));
                                                                contentValues3.put("toAddresses", contentValues2.getAsString("toAddresses"));
                                                                contentValues3.put("ccAddresses", contentValues2.getAsString("ccAddresses"));
                                                                contentValues3.put("bccAddresses", contentValues2.getAsString("bccAddresses"));
                                                                bcJ2.replaceOrThrow("message_fts_table", (String)null, contentValues3);
                                                                bcJ2.replaceOrThrow("message_fts_table_index", (String)null, contentValues4);
                                                            }
                                                            if (!bcJ.yieldIfContendedSafely((long)MailIndexerService.bkS) && !this.bkR) {
                                                                continue Label_0445_Outer;
                                                            }
                                                            E.c("Gmail", "Yielded for contention, while indexing messages", new Object[0]);
                                                            b2 = true;
                                                            bcJ.setTransactionSuccessful();
                                                            bcJ.endTransaction();
                                                            list.clear();
                                                            if (b2) {
                                                                return b2;
                                                            }
                                                            break Label_1013;
                                                        }
                                                        catch (SQLiteException ex3) {
                                                            throw new SQLiteDatabaseCorruptException(ex3.getMessage());
                                                        }
                                                    }
                                                }
                                                break Label_1020;
                                            }
                                            finally {
                                                bcJ.endTransaction();
                                            }
                                            break Label_1006;
                                        }
                                        b2 = b;
                                        continue Label_0746_Outer;
                                    }
                                }
                                b = b2;
                                continue Label_0445_Outer;
                            }
                            boolean b2 = b;
                            continue;
                        }
                    }
                    continue;
                }
            }
        }
        return b;
    }
    
    private boolean O(final MailEngine mailEngine) {
        final SQLiteDatabase bcJ = mailEngine.bcJ;
        final boolean a = this.a(bcJ, "conversation_fts_table", "conversation_fts_table_index", "conversations", "conversation_fts_table_index.docid = conversations._id", "conversations._id is null");
        if (a) {
            return true;
        }
        if (!this.Hf()) {
            return false;
        }
        final ArrayList<ContentValues> list = new ArrayList<ContentValues>();
        final Cursor query = bcJ.query("conversations", MailIndexerService.bkN, "queryId = 0 AND _id NOT IN (SELECT docid from conversation_fts_table_index)", (String[])null, (String)null, (String)null, (String)null);
        if (query == null) {
            return false;
        }
        try {
            if (this.bkR) {
                return true;
            }
            while (query.moveToNext()) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put("_id", query.getLong(0));
                contentValues.put("subject", query.getString(1));
                contentValues.put("snippet", query.getString(2));
                contentValues.put("fromAddress", "");
                list.add(contentValues);
            }
        }
        finally {
            query.close();
        }
        while (true) {
            query.close();
            E.c("Gmail", "Number of conversations to index: %d", list.size());
            bcJ.beginTransactionNonExclusive();
            while (true) {
                Label_0503: {
                    try {
                        Label_0312: {
                            for (final ContentValues contentValues2 : list) {
                                if (contentValues2 != null) {
                                    final SQLiteDatabase bcJ2 = mailEngine.bcJ;
                                    if (bcJ2 != null && bcJ2.isOpen() && mailEngine.Ge()) {
                                        final ContentValues contentValues3 = new ContentValues();
                                        final ContentValues contentValues4 = new ContentValues();
                                        final String asString = contentValues2.getAsString("_id");
                                        bcJ2.delete("conversation_fts_table", "docid = ?", new String[] { asString });
                                        contentValues3.put("docid", asString);
                                        contentValues4.put("docid", asString);
                                        contentValues3.put("subject", contentValues2.getAsString("subject"));
                                        contentValues3.put("snippet", contentValues2.getAsString("snippet"));
                                        contentValues3.put("fromAddress", contentValues2.getAsString("fromAddress"));
                                        bcJ2.replaceOrThrow("conversation_fts_table", (String)null, contentValues3);
                                        bcJ2.replaceOrThrow("conversation_fts_table_index", (String)null, contentValues4);
                                    }
                                }
                                if (bcJ.yieldIfContendedSafely((long)MailIndexerService.bkS) || this.bkR) {
                                    break Label_0312;
                                }
                            }
                            break Label_0503;
                        }
                        E.c("Gmail", "Yielded for contention while indexing conversations", new Object[0]);
                        final boolean b = true;
                        bcJ.setTransactionSuccessful();
                        return b;
                    }
                    catch (SQLiteException ex) {
                        throw new SQLiteDatabaseCorruptException(ex.getMessage());
                    }
                    finally {
                        bcJ.endTransaction();
                    }
                }
                final boolean b = a;
                continue;
            }
        }
    }
    
    private boolean a(final SQLiteDatabase p0, final String p1, final String p2, final String p3, final String p4, final String p5) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/HashSet;
        //     3: dup            
        //     4: invokespecial   java/util/HashSet.<init>:()V
        //     7: astore          7
        //     9: aload_1        
        //    10: new             Ljava/lang/StringBuilder;
        //    13: dup            
        //    14: invokespecial   java/lang/StringBuilder.<init>:()V
        //    17: aload_3        
        //    18: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    21: ldc_w           " LEFT OUTER JOIN "
        //    24: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    27: aload           4
        //    29: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    32: ldc_w           " ON ("
        //    35: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    38: aload           5
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: ldc_w           ")"
        //    46: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    49: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    52: getstatic       com/google/android/gm/provider/MailIndexerService.bkO:[Ljava/lang/String;
        //    55: aload           6
        //    57: aconst_null    
        //    58: aconst_null    
        //    59: aconst_null    
        //    60: aconst_null    
        //    61: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    64: astore          8
        //    66: aload           8
        //    68: invokeinterface android/database/Cursor.moveToNext:()Z
        //    73: ifeq            110
        //    76: aload           7
        //    78: aload           8
        //    80: iconst_0       
        //    81: invokeinterface android/database/Cursor.getLong:(I)J
        //    86: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    89: invokeinterface java/util/Set.add:(Ljava/lang/Object;)Z
        //    94: pop            
        //    95: goto            66
        //    98: astore          9
        //   100: aload           8
        //   102: invokeinterface android/database/Cursor.close:()V
        //   107: aload           9
        //   109: athrow         
        //   110: aload           8
        //   112: invokeinterface android/database/Cursor.close:()V
        //   117: aload_0        
        //   118: getfield        com/google/android/gm/provider/MailIndexerService.bkR:Z
        //   121: ifeq            126
        //   124: iconst_1       
        //   125: ireturn        
        //   126: aload_1        
        //   127: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransactionNonExclusive:()V
        //   130: aload_1        
        //   131: new             Ljava/lang/StringBuilder;
        //   134: dup            
        //   135: ldc_w           "SELECT COUNT(*) FROM "
        //   138: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   141: aload_2        
        //   142: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   145: ldc_w           " WHERE docid = ?"
        //   148: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   151: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   154: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //   157: astore          13
        //   159: aload           7
        //   161: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   166: astore          14
        //   168: aload           14
        //   170: invokeinterface java/util/Iterator.hasNext:()Z
        //   175: ifeq            498
        //   178: aload           14
        //   180: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   185: checkcast       Ljava/lang/Long;
        //   188: astore          19
        //   190: aload           13
        //   192: iconst_1       
        //   193: aload           19
        //   195: invokevirtual   java/lang/Long.longValue:()J
        //   198: invokevirtual   android/database/sqlite/SQLiteStatement.bindLong:(IJ)V
        //   201: aload           13
        //   203: invokevirtual   android/database/sqlite/SQLiteStatement.simpleQueryForLong:()J
        //   206: lstore          30
        //   208: lload           30
        //   210: lconst_0       
        //   211: lcmp           
        //   212: ifle            386
        //   215: iconst_1       
        //   216: istore          22
        //   218: aload           13
        //   220: invokevirtual   android/database/sqlite/SQLiteStatement.clearBindings:()V
        //   223: iload           22
        //   225: ifeq            280
        //   228: iconst_1       
        //   229: anewarray       Ljava/lang/String;
        //   232: astore          26
        //   234: aload           26
        //   236: iconst_0       
        //   237: aload           19
        //   239: invokevirtual   java/lang/Long.toString:()Ljava/lang/String;
        //   242: aastore        
        //   243: aload_1        
        //   244: aload_2        
        //   245: ldc_w           "docid = ?"
        //   248: aload           26
        //   250: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   253: pop            
        //   254: iconst_1       
        //   255: anewarray       Ljava/lang/String;
        //   258: astore          28
        //   260: aload           28
        //   262: iconst_0       
        //   263: aload           19
        //   265: invokevirtual   java/lang/Long.toString:()Ljava/lang/String;
        //   268: aastore        
        //   269: aload_1        
        //   270: aload_3        
        //   271: ldc_w           "docid = ?"
        //   274: aload           28
        //   276: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   279: pop            
        //   280: aload_1        
        //   281: getstatic       com/google/android/gm/provider/MailIndexerService.bkS:I
        //   284: i2l            
        //   285: invokevirtual   android/database/sqlite/SQLiteDatabase.yieldIfContendedSafely:(J)Z
        //   288: ifne            298
        //   291: aload_0        
        //   292: getfield        com/google/android/gm/provider/MailIndexerService.bkR:Z
        //   295: ifeq            168
        //   298: ldc             "Gmail"
        //   300: ldc_w           "Yielded for contention, while deleting indexed content from table: %s"
        //   303: iconst_1       
        //   304: anewarray       Ljava/lang/Object;
        //   307: dup            
        //   308: iconst_0       
        //   309: aload_2        
        //   310: aastore        
        //   311: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   314: pop            
        //   315: iconst_1       
        //   316: istore          15
        //   318: ldc             "Gmail"
        //   320: iconst_3       
        //   321: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //   324: ifeq            360
        //   327: ldc             "Gmail"
        //   329: new             Ljava/lang/StringBuilder;
        //   332: dup            
        //   333: ldc_w           "Number of old index entries deleted: "
        //   336: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   339: aload           7
        //   341: invokeinterface java/util/Set.size:()I
        //   346: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   349: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   352: iconst_0       
        //   353: anewarray       Ljava/lang/Object;
        //   356: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   359: pop            
        //   360: aload_1        
        //   361: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   364: aload_1        
        //   365: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   368: iload           15
        //   370: ireturn        
        //   371: astore          17
        //   373: new             Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        //   376: dup            
        //   377: aload           17
        //   379: invokevirtual   java/lang/IllegalStateException.getMessage:()Ljava/lang/String;
        //   382: invokespecial   android/database/sqlite/SQLiteDatabaseCorruptException.<init>:(Ljava/lang/String;)V
        //   385: athrow         
        //   386: iconst_0       
        //   387: istore          22
        //   389: goto            218
        //   392: astore          21
        //   394: aload           13
        //   396: invokevirtual   android/database/sqlite/SQLiteStatement.clearBindings:()V
        //   399: iconst_0       
        //   400: istore          22
        //   402: goto            223
        //   405: astore          10
        //   407: aload_1        
        //   408: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   411: aload           10
        //   413: athrow         
        //   414: astore          20
        //   416: aload           13
        //   418: invokevirtual   android/database/sqlite/SQLiteStatement.clearBindings:()V
        //   421: aload           20
        //   423: athrow         
        //   424: astore          24
        //   426: ldc             "Gmail"
        //   428: aload           24
        //   430: ldc_w           "Exception attempting to delete docid: %d from table: %s"
        //   433: iconst_2       
        //   434: anewarray       Ljava/lang/Object;
        //   437: dup            
        //   438: iconst_0       
        //   439: aload           19
        //   441: aastore        
        //   442: dup            
        //   443: iconst_1       
        //   444: aload_2        
        //   445: aastore        
        //   446: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   449: pop            
        //   450: goto            280
        //   453: astore          16
        //   455: new             Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        //   458: dup            
        //   459: aload           16
        //   461: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   464: invokespecial   android/database/sqlite/SQLiteDatabaseCorruptException.<init>:(Ljava/lang/String;)V
        //   467: athrow         
        //   468: astore          12
        //   470: new             Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        //   473: dup            
        //   474: aload           12
        //   476: invokevirtual   java/lang/IllegalStateException.getMessage:()Ljava/lang/String;
        //   479: invokespecial   android/database/sqlite/SQLiteDatabaseCorruptException.<init>:(Ljava/lang/String;)V
        //   482: athrow         
        //   483: astore          11
        //   485: new             Landroid/database/sqlite/SQLiteDatabaseCorruptException;
        //   488: dup            
        //   489: aload           11
        //   491: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   494: invokespecial   android/database/sqlite/SQLiteDatabaseCorruptException.<init>:(Ljava/lang/String;)V
        //   497: athrow         
        //   498: iconst_0       
        //   499: istore          15
        //   501: goto            318
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                         
        //  -----  -----  -----  -----  ---------------------------------------------
        //  66     95     98     110    Any
        //  130    168    405    498    Any
        //  168    201    405    498    Any
        //  201    208    392    405    Landroid/database/sqlite/SQLiteDoneException;
        //  201    208    414    424    Any
        //  218    223    405    498    Any
        //  228    280    424    453    Landroid/database/sqlite/SQLiteException;
        //  228    280    405    498    Any
        //  280    298    405    498    Any
        //  298    315    405    498    Any
        //  318    360    405    498    Any
        //  360    364    405    498    Any
        //  364    368    371    386    Ljava/lang/IllegalStateException;
        //  364    368    453    468    Landroid/database/sqlite/SQLiteException;
        //  394    399    405    498    Any
        //  407    411    468    483    Ljava/lang/IllegalStateException;
        //  407    411    483    498    Landroid/database/sqlite/SQLiteException;
        //  416    424    405    498    Any
        //  426    450    405    498    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 232, Size: 232
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3553)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static boolean e(final SQLiteDatabase sqLiteDatabase, final String s) {
        int n = 1;
        final String[] bkP = MailIndexerService.bkP;
        final String[] array = new String[n];
        array[0] = s;
        final Cursor query = sqLiteDatabase.query((boolean)(n != 0), "sqlite_master", bkP, "tbl_name = ?", array, (String)null, (String)null, (String)null, (String)null);
        if (query != null) {
            try {
                if (query.getCount() <= 0) {
                    n = 0;
                }
                return n != 0;
            }
            finally {
                query.close();
            }
        }
        return false;
    }
    
    static void eY(final String s) {
        final MailIndexerService bkQ = MailIndexerService.bkQ;
        if (bkQ != null && TextUtils.equals((CharSequence)s, (CharSequence)bkQ.mAccount)) {
            E.c("Gmail", "Database access which requesting indexer delay for account: %s", s);
            bkQ.bkR = true;
        }
    }
    
    public void onCreate() {
        super.onCreate();
        if (MailIndexerService.bkS == -1) {
            MailIndexerService.bkS = this.getResources().getInteger(2131427399);
        }
    }
    
    protected void onHandleIntent(final Intent intent) {
        final String action = intent.getAction();
        E.c("Gmail", "MailIndexerService handling intent with action: %s", action);
        if (!"com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT".equals(action)) {
            return;
        }
        SQLiteDatabase bcJ;
        try {
            this.bkR = false;
            this.mAccount = intent.getStringExtra("account");
            MailIndexerService.bkQ = this;
            Process.setThreadPriority(10);
            final MailEngine w = MailEngine.W((Context)this, this.mAccount);
            if (w == null) {
                E.e("Gmail", "No MailEngine for account: %s", this.mAccount);
                return;
            }
            if (w.FT()) {
                E.e("Gmail", "Background tasks have been disabled for testing", new Object[0]);
                w.Gg();
                return;
            }
            if (!w.Ge()) {
                E.e("Gmail", "Full text search has been disabled for this account: %s", this.mAccount);
                w.Gg();
                return;
            }
            try {
                I(w.bcJ);
                boolean b = this.N(w);
                if (!b) {
                    b = this.O(w);
                }
                if (!b) {
                    E.c("Gmail", "Successful index run, cancel next scheduled index run", new Object[0]);
                    w.Gg();
                }
                return;
            }
            catch (SQLiteDatabaseCorruptException ex) {
                E.f("Gmail", "Database appears to be corrupt.  Canceling index pass", ex);
                w.Gg();
                bcJ = w.bcJ;
                E.e("Gmail", "Recreating search index tables", new Object[0]);
                bcJ.beginTransaction();
                final SQLiteDatabase sqLiteDatabase = bcJ;
                H(sqLiteDatabase);
                final SQLiteDatabase sqLiteDatabase2 = bcJ;
                sqLiteDatabase2.setTransactionSuccessful();
                final String s = "Gmail";
                final String s2 = "Search index tables created successfully";
                final int n = 0;
                final Object[] array = new Object[n];
                E.e(s, s2, array);
            }
        }
        finally {
            MailIndexerService.bkQ = null;
        }
        try {
            final SQLiteDatabase sqLiteDatabase = bcJ;
            H(sqLiteDatabase);
            final SQLiteDatabase sqLiteDatabase2 = bcJ;
            sqLiteDatabase2.setTransactionSuccessful();
            final String s = "Gmail";
            final String s2 = "Search index tables created successfully";
            final int n = 0;
            final Object[] array = new Object[n];
            E.e(s, s2, array);
        }
        finally {
            bcJ.endTransaction();
        }
    }
}
