package com.google.android.gm.provider;

import android.accounts.*;
import android.database.sqlite.*;
import com.google.common.collect.*;
import com.android.mail.utils.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.providers.*;
import android.text.*;
import android.net.*;
import android.database.*;
import android.app.*;
import java.io.*;
import android.os.*;
import android.content.*;
import java.util.*;

public final class g
{
    private static Random Wp;
    private static final String[] aCz;
    public static String bcH;
    private static final String[] bcI;
    private static final Map<Long, String> bcO;
    private final AccountManager Ud;
    private final DownloadManager azU;
    private final SQLiteDatabase bcJ;
    private final bG bcK;
    private final j bcL;
    private long bcM;
    private final Set<Long> bcN;
    private final String mAccount;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    
    static {
        g.bcH = "attachment_from_sender";
        bcI = new String[] { "filename", "status" };
        aCz = new String[] { "attachments._id", "messages_conversation", "messages_messageId", "messages_partId", "desiredRendition", "originExtras", "downloadedRendition", "downloadId", "status", "filename", "saveToSd", "mimeType", "automatic", "size" };
        g.Wp = new Random(SystemClock.uptimeMillis());
        bcO = Maps.aan();
    }
    
    public g(final Context mContext, final String mAccount, final SQLiteDatabase bcJ, final bG bcK, final j bcL) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.bcJ = bcJ;
        this.bcK = bcK;
        this.bcL = bcL;
        this.mContentResolver = this.mContext.getContentResolver();
        this.azU = (DownloadManager)this.mContext.getSystemService("download");
        this.Ud = AccountManager.get(this.mContext);
        this.bcM = this.dP(mAccount);
        this.bcN = new HashSet<Long>();
        this.bcL.g(new h(this));
        this.bcL.DS();
    }
    
    private void D(final List<Long> list) {
        final int size = list.size();
        if (size > 0) {
            final StringBuilder sb = new StringBuilder();
            sb.append("_id IN (");
            for (int i = 0; i < size; ++i) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append("'" + list.get(i).toString() + "'");
            }
            sb.append(')');
            this.bcJ.delete("attachments", sb.toString(), (String[])null);
        }
    }
    
    private boolean DM() {
        final File cacheDir = this.mContext.getCacheDir();
        if (cacheDir != null) {
            final long totalSpace = cacheDir.getTotalSpace();
            final long usableSpace = cacheDir.getUsableSpace();
            try {
                final long n = (long)(0.25f * totalSpace / this.Ud.getAccounts().length);
                if (this.bcM >= n) {
                    this.bcM = 0L;
                    this.bcM = this.dP(this.mAccount);
                }
                if (usableSpace >= 0.25f * totalSpace || this.bcM < n) {
                    return false;
                }
            }
            catch (NullPointerException ex) {
                E.f("Gmail", "This maybe called from tests where we don't have Account Manager.", new Object[0]);
                return false;
            }
        }
        return true;
    }
    
    private void DP() {
        final ArrayList<Long> list = new ArrayList<Long>();
        final ArrayList<String> list2 = new ArrayList<String>();
        final Cursor query = this.bcJ.query("attachments", g.aCz, "status NOT IN (?, ?, ?, ?)", new String[] { Integer.toString(190), Integer.toString(192), Integer.toString(193), Integer.toString(200) }, (String)null, (String)null, (String)null);
        while (true) {
            while (true) {
                Label_0175: {
                    try {
                        while (query.moveToNext()) {
                            final long long1 = query.getLong(0);
                            String string = query.getString(9);
                            if (query.getInt(10) == 0) {
                                break Label_0175;
                            }
                            final int n = 1;
                            list.add(long1);
                            if (n != 0) {
                                string = null;
                            }
                            list2.add(string);
                        }
                        break;
                    }
                    finally {
                        query.close();
                    }
                }
                final int n = 0;
                continue;
            }
        }
        query.close();
        E(list2);
        this.D(list);
    }
    
    private void DQ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/ArrayList;
        //     3: dup            
        //     4: invokespecial   java/util/ArrayList.<init>:()V
        //     7: astore_1       
        //     8: new             Ljava/util/ArrayList;
        //    11: dup            
        //    12: invokespecial   java/util/ArrayList.<init>:()V
        //    15: astore_2       
        //    16: aload_0        
        //    17: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    20: astore_3       
        //    21: getstatic       com/google/android/gm/provider/g.aCz:[Ljava/lang/String;
        //    24: astore          4
        //    26: iconst_1       
        //    27: anewarray       Ljava/lang/String;
        //    30: astore          5
        //    32: aload           5
        //    34: iconst_0       
        //    35: sipush          192
        //    38: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    41: aastore        
        //    42: aload_3        
        //    43: ldc             "attachments"
        //    45: aload           4
        //    47: ldc_w           "status = ?"
        //    50: aload           5
        //    52: aconst_null    
        //    53: aconst_null    
        //    54: aconst_null    
        //    55: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    58: astore          6
        //    60: aload           6
        //    62: invokeinterface android/database/Cursor.moveToNext:()Z
        //    67: ifeq            274
        //    70: aload           6
        //    72: iconst_0       
        //    73: invokeinterface android/database/Cursor.getLong:(I)J
        //    78: lstore          8
        //    80: aload           6
        //    82: bipush          7
        //    84: invokeinterface android/database/Cursor.getLong:(I)J
        //    89: lstore          10
        //    91: new             Landroid/app/DownloadManager$Query;
        //    94: dup            
        //    95: invokespecial   android/app/DownloadManager$Query.<init>:()V
        //    98: iconst_1       
        //    99: newarray        J
        //   101: dup            
        //   102: iconst_0       
        //   103: lload           10
        //   105: lastore        
        //   106: invokevirtual   android/app/DownloadManager$Query.setFilterById:([J)Landroid/app/DownloadManager$Query;
        //   109: astore          12
        //   111: aload_0        
        //   112: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   115: aload           12
        //   117: invokevirtual   android/app/DownloadManager.query:(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
        //   120: astore          13
        //   122: aload           13
        //   124: ifnull          60
        //   127: aload           13
        //   129: invokeinterface android/database/Cursor.moveToNext:()Z
        //   134: ifeq            195
        //   137: aload           13
        //   139: aload           13
        //   141: ldc             "status"
        //   143: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   148: invokeinterface android/database/Cursor.getInt:(I)I
        //   153: istore          19
        //   155: iload           19
        //   157: iconst_1       
        //   158: if_icmpeq       173
        //   161: iload           19
        //   163: iconst_2       
        //   164: if_icmpeq       173
        //   167: iload           19
        //   169: iconst_4       
        //   170: if_icmpne       195
        //   173: aload           13
        //   175: invokeinterface android/database/Cursor.close:()V
        //   180: goto            60
        //   183: astore          7
        //   185: aload           6
        //   187: invokeinterface android/database/Cursor.close:()V
        //   192: aload           7
        //   194: athrow         
        //   195: aload           13
        //   197: invokeinterface android/database/Cursor.close:()V
        //   202: aload           6
        //   204: bipush          9
        //   206: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   211: astore          15
        //   213: aload           6
        //   215: bipush          10
        //   217: invokeinterface android/database/Cursor.getInt:(I)I
        //   222: ifeq            268
        //   225: iconst_1       
        //   226: istore          16
        //   228: aload_1        
        //   229: lload           8
        //   231: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   234: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   237: pop            
        //   238: iload           16
        //   240: ifeq            246
        //   243: aconst_null    
        //   244: astore          15
        //   246: aload_2        
        //   247: aload           15
        //   249: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   252: pop            
        //   253: goto            60
        //   256: astore          14
        //   258: aload           13
        //   260: invokeinterface android/database/Cursor.close:()V
        //   265: aload           14
        //   267: athrow         
        //   268: iconst_0       
        //   269: istore          16
        //   271: goto            228
        //   274: aload           6
        //   276: invokeinterface android/database/Cursor.close:()V
        //   281: aload_2        
        //   282: invokestatic    com/google/android/gm/provider/g.E:(Ljava/util/List;)V
        //   285: aload_0        
        //   286: aload_1        
        //   287: invokespecial   com/google/android/gm/provider/g.D:(Ljava/util/List;)V
        //   290: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  60     122    183    195    Any
        //  127    155    256    268    Any
        //  173    180    183    195    Any
        //  195    225    183    195    Any
        //  228    238    183    195    Any
        //  246    253    183    195    Any
        //  258    268    183    195    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0173:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private static void E(final List<String> list) {
        if (list != null) {
            for (final String s : list) {
                if (s != null) {
                    new File(dQ(s)).delete();
                }
            }
        }
    }
    
    private static String L(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: bipush          46
        //     3: invokevirtual   java/lang/String.lastIndexOf:(I)I
        //     6: istore_2       
        //     7: ldc_w           ""
        //    10: astore_3       
        //    11: iload_2        
        //    12: iconst_m1      
        //    13: if_icmpeq       29
        //    16: aload_1        
        //    17: iload_2        
        //    18: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //    21: astore_3       
        //    22: aload_1        
        //    23: iconst_0       
        //    24: iload_2        
        //    25: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    28: astore_1       
        //    29: aload_1        
        //    30: getstatic       java/io/File.separatorChar:C
        //    33: invokevirtual   java/lang/String.indexOf:(I)I
        //    36: iconst_m1      
        //    37: if_icmpeq       50
        //    40: aload_1        
        //    41: getstatic       java/io/File.separatorChar:C
        //    44: bipush          95
        //    46: invokevirtual   java/lang/String.replace:(CC)Ljava/lang/String;
        //    49: astore_1       
        //    50: new             Ljava/io/File;
        //    53: dup            
        //    54: aload_0        
        //    55: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    58: astore          4
        //    60: aload           4
        //    62: invokevirtual   java/io/File.exists:()Z
        //    65: ifne            134
        //    68: aload           4
        //    70: invokevirtual   java/io/File.mkdirs:()Z
        //    73: pop            
        //    74: aload_0        
        //    75: getstatic       java/io/File.separator:Ljava/lang/String;
        //    78: invokevirtual   java/lang/String.endsWith:(Ljava/lang/String;)Z
        //    81: ifne            92
        //    84: aload_0        
        //    85: getstatic       java/io/File.separator:Ljava/lang/String;
        //    88: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //    91: astore_0       
        //    92: new             Ljava/lang/StringBuilder;
        //    95: dup            
        //    96: invokespecial   java/lang/StringBuilder.<init>:()V
        //    99: aload_0        
        //   100: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   103: aload_1        
        //   104: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   107: aload_3        
        //   108: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   111: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   114: astore          5
        //   116: new             Ljava/io/File;
        //   119: dup            
        //   120: aload           5
        //   122: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   125: invokevirtual   java/io/File.exists:()Z
        //   128: ifne            144
        //   131: aload           5
        //   133: areturn        
        //   134: aload           4
        //   136: invokevirtual   java/io/File.isDirectory:()Z
        //   139: ifne            74
        //   142: aconst_null    
        //   143: areturn        
        //   144: aload_1        
        //   145: ldc_w           "-"
        //   148: invokevirtual   java/lang/String.lastIndexOf:(Ljava/lang/String;)I
        //   151: istore          6
        //   153: iload           6
        //   155: iconst_m1      
        //   156: if_icmpeq       339
        //   159: iload           6
        //   161: iconst_1       
        //   162: iadd           
        //   163: istore          13
        //   165: aload_1        
        //   166: iload           13
        //   168: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   171: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   174: istore          15
        //   176: iload           15
        //   178: iconst_1       
        //   179: iadd           
        //   180: istore          7
        //   182: aload_1        
        //   183: iconst_0       
        //   184: iload           6
        //   186: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   189: astore          17
        //   191: aload           17
        //   193: astore_1       
        //   194: new             Ljava/lang/StringBuilder;
        //   197: dup            
        //   198: invokespecial   java/lang/StringBuilder.<init>:()V
        //   201: aload_1        
        //   202: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   205: ldc_w           "-"
        //   208: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   211: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   214: astore          8
        //   216: iconst_1       
        //   217: istore          9
        //   219: iload           9
        //   221: ldc_w           1000000000
        //   224: if_icmpge       324
        //   227: iconst_0       
        //   228: istore          10
        //   230: iload           7
        //   232: istore          11
        //   234: iload           10
        //   236: bipush          9
        //   238: if_icmpge       310
        //   241: new             Ljava/lang/StringBuilder;
        //   244: dup            
        //   245: invokespecial   java/lang/StringBuilder.<init>:()V
        //   248: aload_0        
        //   249: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   252: aload           8
        //   254: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   257: iload           11
        //   259: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   262: aload_3        
        //   263: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   266: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   269: astore          12
        //   271: new             Ljava/io/File;
        //   274: dup            
        //   275: aload           12
        //   277: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   280: invokevirtual   java/io/File.exists:()Z
        //   283: ifne            289
        //   286: aload           12
        //   288: areturn        
        //   289: iload           11
        //   291: iconst_1       
        //   292: getstatic       com/google/android/gm/provider/g.Wp:Ljava/util/Random;
        //   295: iload           9
        //   297: invokevirtual   java/util/Random.nextInt:(I)I
        //   300: iadd           
        //   301: iadd           
        //   302: istore          11
        //   304: iinc            10, 1
        //   307: goto            234
        //   310: iload           9
        //   312: bipush          10
        //   314: imul           
        //   315: istore          9
        //   317: iload           11
        //   319: istore          7
        //   321: goto            219
        //   324: aconst_null    
        //   325: areturn        
        //   326: astore          14
        //   328: iconst_1       
        //   329: istore          7
        //   331: goto            194
        //   334: astore          16
        //   336: goto            194
        //   339: iconst_1       
        //   340: istore          7
        //   342: goto            194
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  165    176    326    334    Ljava/lang/NumberFormatException;
        //  182    191    334    339    Ljava/lang/NumberFormatException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0194:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private long a(final long n, final long n2, final GmailAttachment gmailAttachment, final int n3, long n4, final boolean b, final boolean b2, final int n5) {
        int n6 = 190;
        if (gmailAttachment.bom == 1) {
            if (n4 == 0L) {
                n4 = -1L;
            }
            n6 = 200;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("messages_conversation", n);
        contentValues.put("messages_messageId", n2);
        contentValues.put("desiredRendition", F.toString(n3));
        contentValues.put("downloadedRendition", F.toString(n3));
        contentValues.put("downloadId", n4);
        int n7;
        if (b2) {
            n7 = 1;
        }
        else {
            n7 = 0;
        }
        contentValues.put("automatic", n7);
        contentValues.put("priority", n5);
        int n8;
        if (b) {
            n8 = 1;
        }
        else {
            n8 = 0;
        }
        contentValues.put("saveToSd", n8);
        contentValues.put("status", n6);
        contentValues.put("messages_partId", gmailAttachment.partId);
        contentValues.put("originExtras", gmailAttachment.Ib());
        String s;
        if (!TextUtils.isEmpty((CharSequence)gmailAttachment.bor)) {
            s = gmailAttachment.bor;
        }
        else {
            s = gmailAttachment.getName();
        }
        contentValues.put("filename", s);
        contentValues.put("mimeType", gmailAttachment.getContentType());
        contentValues.put("size", gmailAttachment.size);
        return this.bcJ.insertWithOnConflict("attachments", (String)null, contentValues, 4);
    }
    
    private static String a(final long n, final long n2, final String s, final int n3, final boolean b) {
        return "conversationId = " + n + ", messageId = " + n2 + ", partId = " + s + ", rendition = " + F.toString(n3) + ", saveToSd = " + Boolean.toString(b);
    }
    
    private void a(final long n, final long n2, final int n3, final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            new File(dQ(s)).delete();
        }
        final ContentValues contentValues = new ContentValues(2);
        contentValues.put("status", n3);
        contentValues.put("downloadId", -1);
        this.bcJ.update("attachments", contentValues, "_id = ?", new String[] { Long.toString(n2) });
        this.ac(n);
    }
    
    private void a(final long n, final long n2, final long n3, final String s, final int n4, final boolean b, final int n5, final String s2) {
        this.a(n3, s, n4, n5, s2);
        if (n4 == 1) {
            int n6;
            if (b) {
                n6 = 1;
            }
            else {
                n6 = 0;
            }
            GmailProvider.a(this.mAccount, n2, n3, s, n6, n5, s2);
            return;
        }
        E.c("Gmail", "Dropping download finished, as this is an thumbnail attachment.  %d/%d/%d/%s", n2, n3, n, s);
    }
    
    private void a(final long p0, final long p1, final long p2, final String p3, final int p4, final boolean p5, final String p6, final long p7, final String p8, final String p9, final String p10, final boolean p11, final int p12) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iload           9
        //     2: ifeq            241
        //     5: getstatic       android/os/Environment.DIRECTORY_DOWNLOADS:Ljava/lang/String;
        //     8: invokestatic    android/os/Environment.getExternalStoragePublicDirectory:(Ljava/lang/String;)Ljava/io/File;
        //    11: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    14: astore          18
        //    16: aload           18
        //    18: aload           10
        //    20: invokestatic    com/google/android/gm/provider/g.L:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    23: astore          19
        //    25: aconst_null    
        //    26: astore          20
        //    28: lload           11
        //    30: invokestatic    com/google/android/gm/provider/g.ab:(J)Z
        //    33: ifeq            254
        //    36: new             Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
        //    39: dup            
        //    40: aload_0        
        //    41: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //    44: lload           11
        //    46: invokevirtual   android/app/DownloadManager.openDownloadedFile:(J)Landroid/os/ParcelFileDescriptor;
        //    49: invokespecial   android/os/ParcelFileDescriptor$AutoCloseInputStream.<init>:(Landroid/os/ParcelFileDescriptor;)V
        //    52: astore          24
        //    54: new             Ljava/io/FileOutputStream;
        //    57: dup            
        //    58: aload           19
        //    60: invokespecial   java/io/FileOutputStream.<init>:(Ljava/lang/String;)V
        //    63: astore          35
        //    65: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //    68: lstore          44
        //    70: sipush          4096
        //    73: newarray        B
        //    75: astore          46
        //    77: iconst_0       
        //    78: istore          47
        //    80: aload           24
        //    82: aload           46
        //    84: invokevirtual   java/io/InputStream.read:([B)I
        //    87: istore          48
        //    89: iload           48
        //    91: iconst_m1      
        //    92: if_icmpeq       391
        //    95: aload           35
        //    97: aload           46
        //    99: iconst_0       
        //   100: iload           48
        //   102: invokevirtual   java/io/OutputStream.write:([BII)V
        //   105: iload           47
        //   107: iload           48
        //   109: iadd           
        //   110: istore          49
        //   112: iload           9
        //   114: ifne            129
        //   117: aload_0        
        //   118: aload_0        
        //   119: getfield        com/google/android/gm/provider/g.bcM:J
        //   122: iload           48
        //   124: i2l            
        //   125: ladd           
        //   126: putfield        com/google/android/gm/provider/g.bcM:J
        //   129: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   132: lload           44
        //   134: lsub           
        //   135: ldc2_w          3600000
        //   138: lcmp           
        //   139: ifle            384
        //   142: new             Ljava/io/IOException;
        //   145: dup            
        //   146: ldc_w           "Timed out reading attachment data."
        //   149: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   152: athrow         
        //   153: astore          36
        //   155: ldc             "Gmail"
        //   157: aload           36
        //   159: ldc_w           "Cannot write to file %s"
        //   162: iconst_1       
        //   163: anewarray       Ljava/lang/Object;
        //   166: dup            
        //   167: iconst_0       
        //   168: aload           19
        //   170: aastore        
        //   171: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   174: pop            
        //   175: new             Ljava/io/File;
        //   178: dup            
        //   179: aload           19
        //   181: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   184: invokevirtual   java/io/File.delete:()Z
        //   187: pop            
        //   188: aload_0        
        //   189: lload_1        
        //   190: lload_3        
        //   191: lload           5
        //   193: aload           7
        //   195: iload           8
        //   197: iload           9
        //   199: sipush          1000
        //   202: aconst_null    
        //   203: invokespecial   com/google/android/gm/provider/g.a:(JJJLjava/lang/String;IZILjava/lang/String;)V
        //   206: lload           11
        //   208: invokestatic    com/google/android/gm/provider/g.ab:(J)Z
        //   211: ifeq            230
        //   214: aload_0        
        //   215: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   218: iconst_1       
        //   219: newarray        J
        //   221: dup            
        //   222: iconst_0       
        //   223: lload           11
        //   225: lastore        
        //   226: invokevirtual   android/app/DownloadManager.remove:([J)I
        //   229: pop            
        //   230: aload           24
        //   232: invokevirtual   java/io/InputStream.close:()V
        //   235: aload           35
        //   237: invokevirtual   java/io/OutputStream.close:()V
        //   240: return         
        //   241: aload_0        
        //   242: aload_0        
        //   243: getfield        com/google/android/gm/provider/g.mAccount:Ljava/lang/String;
        //   246: invokespecial   com/google/android/gm/provider/g.dO:(Ljava/lang/String;)Ljava/lang/String;
        //   249: astore          18
        //   251: goto            16
        //   254: new             Ljava/io/FileInputStream;
        //   257: dup            
        //   258: aload           13
        //   260: invokestatic    com/google/android/gm/provider/g.dQ:(Ljava/lang/String;)Ljava/lang/String;
        //   263: invokespecial   java/io/FileInputStream.<init>:(Ljava/lang/String;)V
        //   266: astore          24
        //   268: goto            54
        //   271: astore          31
        //   273: iconst_2       
        //   274: anewarray       Ljava/lang/Object;
        //   277: astore          32
        //   279: aload           32
        //   281: iconst_0       
        //   282: lload           11
        //   284: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   287: aastore        
        //   288: aload           32
        //   290: iconst_1       
        //   291: aload           13
        //   293: aastore        
        //   294: ldc             "Gmail"
        //   296: ldc_w           "File not found for download %d or file %s"
        //   299: aload           32
        //   301: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   304: pop            
        //   305: aload_0        
        //   306: lload_1        
        //   307: lload_3        
        //   308: lload           5
        //   310: aload           7
        //   312: iload           8
        //   314: iload           9
        //   316: sipush          404
        //   319: aconst_null    
        //   320: invokespecial   com/google/android/gm/provider/g.a:(JJJLjava/lang/String;IZILjava/lang/String;)V
        //   323: aload           20
        //   325: ifnull          240
        //   328: aload           20
        //   330: invokevirtual   java/io/InputStream.close:()V
        //   333: return         
        //   334: astore          34
        //   336: return         
        //   337: astore          27
        //   339: ldc             "Gmail"
        //   341: ldc_w           "This maybe called from tests where we don't have Download Manager."
        //   344: iconst_0       
        //   345: anewarray       Ljava/lang/Object;
        //   348: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   351: pop            
        //   352: aload_0        
        //   353: lload_1        
        //   354: lload_3        
        //   355: lload           5
        //   357: aload           7
        //   359: iload           8
        //   361: iload           9
        //   363: sipush          200
        //   366: aconst_null    
        //   367: invokespecial   com/google/android/gm/provider/g.a:(JJJLjava/lang/String;IZILjava/lang/String;)V
        //   370: aload           20
        //   372: ifnull          240
        //   375: aload           20
        //   377: invokevirtual   java/io/InputStream.close:()V
        //   380: return         
        //   381: astore          30
        //   383: return         
        //   384: iload           49
        //   386: istore          47
        //   388: goto            80
        //   391: iload           47
        //   393: ifeq            414
        //   396: iload           8
        //   398: iconst_1       
        //   399: if_icmpne       695
        //   402: iload           17
        //   404: ifeq            695
        //   407: iload           47
        //   409: iload           17
        //   411: if_icmpeq       695
        //   414: bipush          6
        //   416: anewarray       Ljava/lang/Object;
        //   419: astore          50
        //   421: aload           50
        //   423: iconst_0       
        //   424: iload           47
        //   426: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   429: aastore        
        //   430: aload           50
        //   432: iconst_1       
        //   433: iload           17
        //   435: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   438: aastore        
        //   439: aload           50
        //   441: iconst_2       
        //   442: lload_1        
        //   443: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   446: aastore        
        //   447: aload           50
        //   449: iconst_3       
        //   450: lload           11
        //   452: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   455: aastore        
        //   456: aload           50
        //   458: iconst_4       
        //   459: aload           13
        //   461: aastore        
        //   462: aload           50
        //   464: iconst_5       
        //   465: aload           19
        //   467: aastore        
        //   468: ldc             "Gmail"
        //   470: ldc_w           "DownloadManager file size %d != expectedSize %d for attachment %d download %d or file %s to file %s."
        //   473: aload           50
        //   475: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   478: pop            
        //   479: aload_0        
        //   480: lload_1        
        //   481: lload_3        
        //   482: lload           5
        //   484: aload           7
        //   486: iload           8
        //   488: iload           9
        //   490: sipush          404
        //   493: aconst_null    
        //   494: invokespecial   com/google/android/gm/provider/g.a:(JJJLjava/lang/String;IZILjava/lang/String;)V
        //   497: aload_0        
        //   498: getfield        com/google/android/gm/provider/g.mAccount:Ljava/lang/String;
        //   501: lload_3        
        //   502: lload           5
        //   504: aload           7
        //   506: invokestatic    com/google/android/gm/provider/GmailProvider.a:(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
        //   509: astore          52
        //   511: iload           9
        //   513: ifeq            644
        //   516: iconst_1       
        //   517: istore          53
        //   519: aload_0        
        //   520: lload_3        
        //   521: lload_1        
        //   522: aload           52
        //   524: aload           19
        //   526: iload           53
        //   528: iconst_0       
        //   529: sipush          404
        //   532: invokespecial   com/google/android/gm/provider/g.a:(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V
        //   535: iload           16
        //   537: ifeq            650
        //   540: ldc             "Gmail"
        //   542: ldc_w           "Retrying download."
        //   545: iconst_0       
        //   546: anewarray       Ljava/lang/Object;
        //   549: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   552: pop            
        //   553: new             Landroid/content/ContentValues;
        //   556: dup            
        //   557: iconst_2       
        //   558: invokespecial   android/content/ContentValues.<init>:(I)V
        //   561: astore          55
        //   563: aload           55
        //   565: ldc             "filename"
        //   567: aload           52
        //   569: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.getName:()Ljava/lang/String;
        //   572: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   575: aload           55
        //   577: ldc             "automatic"
        //   579: iconst_0       
        //   580: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   583: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   586: aload_0        
        //   587: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   590: astore          56
        //   592: iconst_1       
        //   593: anewarray       Ljava/lang/String;
        //   596: astore          57
        //   598: aload           57
        //   600: iconst_0       
        //   601: lload_1        
        //   602: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   605: aastore        
        //   606: aload           56
        //   608: ldc             "attachments"
        //   610: aload           55
        //   612: ldc_w           "_id = ?"
        //   615: aload           57
        //   617: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   620: pop            
        //   621: aload_0        
        //   622: lload_1        
        //   623: ldc2_w          -1
        //   626: iconst_0       
        //   627: invokespecial   com/google/android/gm/provider/g.c:(JJZ)V
        //   630: aload           24
        //   632: invokevirtual   java/io/InputStream.close:()V
        //   635: aload           35
        //   637: invokevirtual   java/io/OutputStream.close:()V
        //   640: return         
        //   641: astore          60
        //   643: return         
        //   644: iconst_0       
        //   645: istore          53
        //   647: goto            519
        //   650: ldc             "Gmail"
        //   652: ldc_w           "Marking as fail."
        //   655: iconst_0       
        //   656: anewarray       Ljava/lang/Object;
        //   659: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   662: pop            
        //   663: goto            630
        //   666: astore          22
        //   668: aload           35
        //   670: astore          23
        //   672: aload           24
        //   674: ifnull          682
        //   677: aload           24
        //   679: invokevirtual   java/io/InputStream.close:()V
        //   682: aload           23
        //   684: ifnull          692
        //   687: aload           23
        //   689: invokevirtual   java/io/OutputStream.close:()V
        //   692: aload           22
        //   694: athrow         
        //   695: new             Ljava/lang/StringBuilder;
        //   698: dup            
        //   699: ldc_w           "file://"
        //   702: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   705: aload           19
        //   707: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   710: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   713: astore          62
        //   715: aload_0        
        //   716: lload_1        
        //   717: lload_3        
        //   718: lload           5
        //   720: aload           7
        //   722: iload           8
        //   724: iload           9
        //   726: sipush          200
        //   729: aload           62
        //   731: invokespecial   com/google/android/gm/provider/g.a:(JJJLjava/lang/String;IZILjava/lang/String;)V
        //   734: iload           9
        //   736: ifeq            206
        //   739: aload_0        
        //   740: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   743: ldc_w           2131297143
        //   746: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //   749: astore          63
        //   751: aload_0        
        //   752: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   755: ldc_w           2131297144
        //   758: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //   761: astore          64
        //   763: aload           15
        //   765: ifnonnull       845
        //   768: aload           63
        //   770: ifnonnull       777
        //   773: aload           10
        //   775: astore          63
        //   777: aload           10
        //   779: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   782: ifne            868
        //   785: aload           10
        //   787: astore          70
        //   789: aload_0        
        //   790: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   793: aload           70
        //   795: aload           63
        //   797: iconst_1       
        //   798: aload           14
        //   800: aload           19
        //   802: iload           47
        //   804: i2l            
        //   805: iconst_0       
        //   806: invokevirtual   android/app/DownloadManager.addCompletedDownload:(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
        //   809: pop2           
        //   810: new             Landroid/content/Intent;
        //   813: dup            
        //   814: ldc_w           "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
        //   817: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   820: astore          68
        //   822: aload           68
        //   824: aload           62
        //   826: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   829: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   832: pop            
        //   833: aload_0        
        //   834: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   837: aload           68
        //   839: invokevirtual   android/content/Context.sendBroadcast:(Landroid/content/Intent;)V
        //   842: goto            206
        //   845: aload           64
        //   847: iconst_1       
        //   848: anewarray       Ljava/lang/Object;
        //   851: dup            
        //   852: iconst_0       
        //   853: aload           15
        //   855: aastore        
        //   856: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   859: astore          65
        //   861: aload           65
        //   863: astore          63
        //   865: goto            768
        //   868: aload           19
        //   870: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   873: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   876: astore          73
        //   878: aload           73
        //   880: astore          70
        //   882: goto            789
        //   885: astore          66
        //   887: ldc             "Gmail"
        //   889: aload           66
        //   891: ldc_w           "Failed to save download to Downloads app."
        //   894: iconst_0       
        //   895: anewarray       Ljava/lang/Object;
        //   898: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   901: pop            
        //   902: goto            810
        //   905: astore          39
        //   907: ldc             "Gmail"
        //   909: ldc_w           "This maybe called from tests where we don't have Download Manager."
        //   912: iconst_0       
        //   913: anewarray       Ljava/lang/Object;
        //   916: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   919: pop            
        //   920: goto            230
        //   923: astore          59
        //   925: goto            635
        //   928: astore          41
        //   930: goto            235
        //   933: astore          42
        //   935: return         
        //   936: astore          26
        //   938: goto            682
        //   941: astore          25
        //   943: goto            692
        //   946: astore          21
        //   948: aload           21
        //   950: astore          22
        //   952: aconst_null    
        //   953: astore          23
        //   955: aconst_null    
        //   956: astore          24
        //   958: goto            672
        //   961: astore          22
        //   963: aconst_null    
        //   964: astore          23
        //   966: goto            672
        //   969: astore          28
        //   971: aload           20
        //   973: astore          24
        //   975: aload           28
        //   977: astore          22
        //   979: aconst_null    
        //   980: astore          23
        //   982: goto            672
        //   985: astore          75
        //   987: aload           24
        //   989: astore          20
        //   991: goto            339
        //   994: astore          74
        //   996: aload           24
        //   998: astore          20
        //  1000: goto            273
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  28     54     271    273    Ljava/io/FileNotFoundException;
        //  28     54     337    339    Ljava/lang/NullPointerException;
        //  28     54     946    961    Any
        //  54     65     994    1003   Ljava/io/FileNotFoundException;
        //  54     65     985    994    Ljava/lang/NullPointerException;
        //  54     65     961    969    Any
        //  65     77     153    206    Ljava/io/IOException;
        //  65     77     666    672    Any
        //  80     89     153    206    Ljava/io/IOException;
        //  80     89     666    672    Any
        //  95     105    153    206    Ljava/io/IOException;
        //  95     105    666    672    Any
        //  117    129    153    206    Ljava/io/IOException;
        //  117    129    666    672    Any
        //  129    153    153    206    Ljava/io/IOException;
        //  129    153    666    672    Any
        //  155    206    666    672    Any
        //  206    230    905    923    Ljava/lang/NullPointerException;
        //  206    230    666    672    Any
        //  230    235    928    933    Ljava/io/IOException;
        //  235    240    933    936    Ljava/io/IOException;
        //  254    268    271    273    Ljava/io/FileNotFoundException;
        //  254    268    337    339    Ljava/lang/NullPointerException;
        //  254    268    946    961    Any
        //  273    323    969    985    Any
        //  328    333    334    337    Ljava/io/IOException;
        //  339    370    969    985    Any
        //  375    380    381    384    Ljava/io/IOException;
        //  414    511    153    206    Ljava/io/IOException;
        //  414    511    666    672    Any
        //  519    535    153    206    Ljava/io/IOException;
        //  519    535    666    672    Any
        //  540    630    153    206    Ljava/io/IOException;
        //  540    630    666    672    Any
        //  630    635    923    928    Ljava/io/IOException;
        //  635    640    641    644    Ljava/io/IOException;
        //  650    663    153    206    Ljava/io/IOException;
        //  650    663    666    672    Any
        //  677    682    936    941    Ljava/io/IOException;
        //  687    692    941    946    Ljava/io/IOException;
        //  695    734    153    206    Ljava/io/IOException;
        //  695    734    666    672    Any
        //  739    763    153    206    Ljava/io/IOException;
        //  739    763    666    672    Any
        //  777    785    885    905    Ljava/lang/IllegalArgumentException;
        //  777    785    153    206    Ljava/io/IOException;
        //  777    785    666    672    Any
        //  789    810    885    905    Ljava/lang/IllegalArgumentException;
        //  789    810    153    206    Ljava/io/IOException;
        //  789    810    666    672    Any
        //  810    842    153    206    Ljava/io/IOException;
        //  810    842    666    672    Any
        //  845    861    153    206    Ljava/io/IOException;
        //  845    861    666    672    Any
        //  868    878    885    905    Ljava/lang/IllegalArgumentException;
        //  868    878    153    206    Ljava/io/IOException;
        //  868    878    666    672    Any
        //  887    902    153    206    Ljava/io/IOException;
        //  887    902    666    672    Any
        //  907    920    666    672    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 486, Size: 486
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
    
    private void a(final long n, final long n2, final GmailAttachment gmailAttachment, final String s, final int n3, final boolean b, final int n4) {
        final boolean b2 = Uri.parse(s).getAuthority() != null && new File(dQ(s)).exists();
        if (b) {
            if (gmailAttachment != null && gmailAttachment.ayN == n3) {
                gmailAttachment.setState(5);
            }
            this.a(n, n2, -1, null);
            return;
        }
        if (b2) {
            if (gmailAttachment != null && gmailAttachment.ayN == n3) {
                gmailAttachment.setState(3);
            }
            this.a(n, n2, 200, null);
            return;
        }
        if (gmailAttachment != null && gmailAttachment.ayN == n3) {
            gmailAttachment.setState(0);
            gmailAttachment.aw(null);
        }
        this.a(n, n2, n4, s);
    }
    
    private void a(final long n, final String s, final int n2, final int n3, final String s2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("downloadId", -1);
        if (s2 != null) {
            contentValues.put("filename", s2);
        }
        contentValues.put("status", n3);
        this.bcJ.update("attachments", contentValues, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ?", new String[] { Long.toString(n), s, F.toString(n2) });
    }
    
    public static String aa(final long n) {
        return g.bcO.remove(n);
    }
    
    private static boolean ab(final long n) {
        return n != -1L;
    }
    
    private void ac(final long n) {
        this.mContext.getContentResolver().notifyChange(Gmail.g(this.mAccount, n), (ContentObserver)null, false);
        GmailProvider.n(this.mAccount, n);
    }
    
    private boolean ad(final long n) {
        int n2 = 1;
        final DownloadManager$Query downloadManager$Query = new DownloadManager$Query();
        final long[] filterById = new long[n2];
        filterById[0] = n;
        final Cursor query = this.azU.query(downloadManager$Query.setFilterById(filterById));
        if (query == null) {
            E.f("Gmail", "null cursor from DownloadManager", new Object[0]);
            return false;
        }
        try {
            final int columnIndex = query.getColumnIndex("status");
            if (query.moveToNext()) {
                if (query.getInt(columnIndex) != 4) {
                    n2 = 0;
                }
                return n2 != 0;
            }
            return false;
        }
        finally {
            query.close();
        }
    }
    
    private void c(final long p0, final long p1, final boolean p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //     4: invokevirtual   android/database/sqlite/SQLiteDatabase.isDbLockedByCurrentThread:()Z
        //     7: ifeq            23
        //    10: ldc             "Gmail"
        //    12: ldc_w           "SQLiteDatabase lock held beforecalling startAttachmentDownloadInDownloadManager"
        //    15: iconst_0       
        //    16: anewarray       Ljava/lang/Object;
        //    19: invokestatic    com/google/android/gm/provider/ad.g:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    22: pop            
        //    23: aload_0        
        //    24: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    27: astore          6
        //    29: getstatic       com/google/android/gm/provider/g.aCz:[Ljava/lang/String;
        //    32: astore          7
        //    34: iconst_1       
        //    35: anewarray       Ljava/lang/String;
        //    38: astore          8
        //    40: aload           8
        //    42: iconst_0       
        //    43: lload_1        
        //    44: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    47: aastore        
        //    48: aload           6
        //    50: ldc             "attachments"
        //    52: aload           7
        //    54: ldc_w           "_id = ?"
        //    57: aload           8
        //    59: aconst_null    
        //    60: aconst_null    
        //    61: aconst_null    
        //    62: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    65: astore          9
        //    67: aload           9
        //    69: invokeinterface android/database/Cursor.moveToNext:()Z
        //    74: ifne            110
        //    77: iconst_1       
        //    78: anewarray       Ljava/lang/Object;
        //    81: astore          62
        //    83: aload           62
        //    85: iconst_0       
        //    86: lload_1        
        //    87: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    90: aastore        
        //    91: ldc             "Gmail"
        //    93: ldc_w           "Cannot find attachment %d"
        //    96: aload           62
        //    98: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   101: pop            
        //   102: aload           9
        //   104: invokeinterface android/database/Cursor.close:()V
        //   109: return         
        //   110: new             Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
        //   113: dup            
        //   114: invokespecial   com/google/android/gm/provider/uiprovider/GmailAttachment.<init>:()V
        //   117: astore          11
        //   119: aload           11
        //   121: aload           9
        //   123: iconst_1       
        //   124: invokeinterface android/database/Cursor.getLong:(I)J
        //   129: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bku:J
        //   132: aload           11
        //   134: aload           9
        //   136: iconst_2       
        //   137: invokeinterface android/database/Cursor.getLong:(I)J
        //   142: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bol:J
        //   145: aload           11
        //   147: aload           9
        //   149: iconst_3       
        //   150: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   155: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.partId:Ljava/lang/String;
        //   158: aload           11
        //   160: aload           9
        //   162: iconst_5       
        //   163: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   168: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.fo:(Ljava/lang/String;)V
        //   171: aload           11
        //   173: getfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bku:J
        //   176: lstore          12
        //   178: aload           11
        //   180: getfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bol:J
        //   183: lstore          14
        //   185: aload           11
        //   187: getfield        com/google/android/gm/provider/uiprovider/GmailAttachment.partId:Ljava/lang/String;
        //   190: astore          16
        //   192: aload           9
        //   194: bipush          6
        //   196: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   201: invokestatic    com/android/mail/providers/F.cg:(Ljava/lang/String;)I
        //   204: istore          17
        //   206: aload           9
        //   208: bipush          10
        //   210: invokeinterface android/database/Cursor.getInt:(I)I
        //   215: istore          18
        //   217: aload           9
        //   219: bipush          9
        //   221: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   226: astore          19
        //   228: aload           19
        //   230: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   233: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   236: astore          20
        //   238: iload           18
        //   240: iconst_1       
        //   241: if_icmpne       353
        //   244: iconst_1       
        //   245: istore          21
        //   247: lload           12
        //   249: lload           14
        //   251: aload           16
        //   253: iload           17
        //   255: iload           21
        //   257: invokestatic    com/google/android/gm/provider/g.a:(JJLjava/lang/String;IZ)Ljava/lang/String;
        //   260: astore          22
        //   262: iload           17
        //   264: ifeq            359
        //   267: iconst_1       
        //   268: istore          23
        //   270: aload_0        
        //   271: getfield        com/google/android/gm/provider/g.bcK:Lcom/google/android/gm/provider/bG;
        //   274: aload_0        
        //   275: getfield        com/google/android/gm/provider/g.bcL:Lcom/google/android/gm/provider/j;
        //   278: invokeinterface com/google/android/gm/provider/j.DR:()I
        //   283: lload           14
        //   285: aload           16
        //   287: iload           23
        //   289: invokevirtual   com/google/android/gm/provider/bG.a:(IJLjava/lang/String;Z)Ljava/net/URI;
        //   292: astore          24
        //   294: aload_0        
        //   295: getfield        com/google/android/gm/provider/g.bcL:Lcom/google/android/gm/provider/j;
        //   298: invokeinterface com/google/android/gm/provider/j.Cm:()Ljava/lang/String;
        //   303: astore          61
        //   305: aload           61
        //   307: astore          26
        //   309: aload           26
        //   311: ifnonnull       365
        //   314: iconst_2       
        //   315: anewarray       Ljava/lang/Object;
        //   318: astore          59
        //   320: aload           59
        //   322: iconst_0       
        //   323: lload_1        
        //   324: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   327: aastore        
        //   328: aload           59
        //   330: iconst_1       
        //   331: aload           22
        //   333: aastore        
        //   334: ldc             "Gmail"
        //   336: ldc_w           "Authentication failed for attachment %d, %s"
        //   339: aload           59
        //   341: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   344: pop            
        //   345: aload           9
        //   347: invokeinterface android/database/Cursor.close:()V
        //   352: return         
        //   353: iconst_0       
        //   354: istore          21
        //   356: goto            247
        //   359: iconst_0       
        //   360: istore          23
        //   362: goto            270
        //   365: aload_0        
        //   366: getfield        com/google/android/gm/provider/g.mAccount:Ljava/lang/String;
        //   369: aload           26
        //   371: invokestatic    com/google/android/gm/provider/bG.ae:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   374: astore          27
        //   376: aload           24
        //   378: invokevirtual   java/net/URI.toString:()Ljava/lang/String;
        //   381: astore          28
        //   383: aload_0        
        //   384: getfield        com/google/android/gm/provider/g.mContentResolver:Landroid/content/ContentResolver;
        //   387: invokestatic    com/google/android/common/http/UrlRules.a:(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;
        //   390: aload           28
        //   392: invokevirtual   com/google/android/common/http/UrlRules.do:(Ljava/lang/String;)Lcom/google/android/common/http/j;
        //   395: aload           28
        //   397: invokevirtual   com/google/android/common/http/j.apply:(Ljava/lang/String;)Ljava/lang/String;
        //   400: astore          29
        //   402: aload           29
        //   404: ifnonnull       504
        //   407: ldc             "Gmail"
        //   409: ldc_w           "Abandon download of %s because it is blocked by rules."
        //   412: iconst_1       
        //   413: anewarray       Ljava/lang/Object;
        //   416: dup            
        //   417: iconst_0       
        //   418: aload           24
        //   420: aastore        
        //   421: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   424: pop            
        //   425: new             Landroid/content/ContentValues;
        //   428: dup            
        //   429: invokespecial   android/content/ContentValues.<init>:()V
        //   432: astore          31
        //   434: aload           31
        //   436: ldc             "status"
        //   438: sipush          1000
        //   441: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   444: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   447: aload_0        
        //   448: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   451: astore          32
        //   453: iconst_2       
        //   454: anewarray       Ljava/lang/String;
        //   457: astore          33
        //   459: aload           33
        //   461: iconst_0       
        //   462: lload_1        
        //   463: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   466: aastore        
        //   467: aload           33
        //   469: iconst_1       
        //   470: lload_3        
        //   471: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   474: aastore        
        //   475: aload           32
        //   477: ldc             "attachments"
        //   479: aload           31
        //   481: ldc_w           "_id = ? OR _id = ?"
        //   484: aload           33
        //   486: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   489: pop            
        //   490: aload_0        
        //   491: lload           12
        //   493: invokespecial   com/google/android/gm/provider/g.ac:(J)V
        //   496: aload           9
        //   498: invokeinterface android/database/Cursor.close:()V
        //   503: return         
        //   504: aload_0        
        //   505: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   508: invokestatic    com/android/mail/utils/b.ay:(Landroid/content/Context;)Z
        //   511: ifne            618
        //   514: ldc             "Gmail"
        //   516: ldc_w           "Abandon download of %s because there is no network connection."
        //   519: iconst_1       
        //   520: anewarray       Ljava/lang/Object;
        //   523: dup            
        //   524: iconst_0       
        //   525: aload           24
        //   527: aastore        
        //   528: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   531: pop            
        //   532: aload_0        
        //   533: getfield        com/google/android/gm/provider/g.mAccount:Ljava/lang/String;
        //   536: lload           12
        //   538: lload           14
        //   540: aload           16
        //   542: invokestatic    com/google/android/gm/provider/GmailProvider.a:(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
        //   545: astore          58
        //   547: lload_3        
        //   548: ldc2_w          -1
        //   551: lcmp           
        //   552: ifeq            572
        //   555: aload_0        
        //   556: lload           12
        //   558: lload_3        
        //   559: aload           58
        //   561: aload           19
        //   563: iload           18
        //   565: iconst_0       
        //   566: sipush          1000
        //   569: invokespecial   com/google/android/gm/provider/g.a:(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V
        //   572: aload_0        
        //   573: lload           12
        //   575: lload_1        
        //   576: aload           58
        //   578: aload           19
        //   580: iload           18
        //   582: iconst_0       
        //   583: sipush          1000
        //   586: invokespecial   com/google/android/gm/provider/g.a:(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V
        //   589: aload_0        
        //   590: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   593: ldc_w           2131297142
        //   596: iconst_0       
        //   597: invokestatic    android/widget/Toast.makeText:(Landroid/content/Context;II)Landroid/widget/Toast;
        //   600: invokevirtual   android/widget/Toast.show:()V
        //   603: goto            490
        //   606: astore          10
        //   608: aload           9
        //   610: invokeinterface android/database/Cursor.close:()V
        //   615: aload           10
        //   617: athrow         
        //   618: new             Landroid/app/DownloadManager$Request;
        //   621: dup            
        //   622: aload           29
        //   624: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   627: invokespecial   android/app/DownloadManager$Request.<init>:(Landroid/net/Uri;)V
        //   630: ldc_w           "Cookie"
        //   633: aload           27
        //   635: invokevirtual   android/app/DownloadManager$Request.addRequestHeader:(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
        //   638: aload           20
        //   640: invokevirtual   android/app/DownloadManager$Request.setTitle:(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
        //   643: iconst_0       
        //   644: invokevirtual   android/app/DownloadManager$Request.setVisibleInDownloadsUi:(Z)Landroid/app/DownloadManager$Request;
        //   647: astore          35
        //   649: lload_3        
        //   650: ldc2_w          -1
        //   653: lcmp           
        //   654: ifne            664
        //   657: aload           35
        //   659: iconst_2       
        //   660: invokevirtual   android/app/DownloadManager$Request.setNotificationVisibility:(I)Landroid/app/DownloadManager$Request;
        //   663: pop            
        //   664: iload           5
        //   666: ifeq            676
        //   669: aload           35
        //   671: iconst_2       
        //   672: invokevirtual   android/app/DownloadManager$Request.setAllowedNetworkTypes:(I)Landroid/app/DownloadManager$Request;
        //   675: pop            
        //   676: aload_0        
        //   677: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   680: aload           35
        //   682: invokevirtual   android/app/DownloadManager.enqueue:(Landroid/app/DownloadManager$Request;)J
        //   685: lstore          55
        //   687: lload           55
        //   689: lstore          45
        //   691: iconst_1       
        //   692: istore          47
        //   694: iload           47
        //   696: ifeq            490
        //   699: getstatic       com/google/android/gm/provider/g.bcO:Ljava/util/Map;
        //   702: lload           45
        //   704: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   707: aload_0        
        //   708: getfield        com/google/android/gm/provider/g.mAccount:Ljava/lang/String;
        //   711: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   716: pop            
        //   717: new             Landroid/content/ContentValues;
        //   720: dup            
        //   721: invokespecial   android/content/ContentValues.<init>:()V
        //   724: astore          49
        //   726: aload           49
        //   728: ldc             "downloadId"
        //   730: lload           45
        //   732: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   735: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   738: aload           49
        //   740: ldc             "status"
        //   742: sipush          192
        //   745: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   748: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   751: aload_0        
        //   752: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   755: astore          50
        //   757: iconst_2       
        //   758: anewarray       Ljava/lang/String;
        //   761: astore          51
        //   763: aload           51
        //   765: iconst_0       
        //   766: lload_1        
        //   767: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   770: aastore        
        //   771: aload           51
        //   773: iconst_1       
        //   774: lload_3        
        //   775: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   778: aastore        
        //   779: aload           50
        //   781: ldc             "attachments"
        //   783: aload           49
        //   785: ldc_w           "_id = ? OR _id = ?"
        //   788: aload           51
        //   790: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   793: pop            
        //   794: iconst_3       
        //   795: anewarray       Ljava/lang/Object;
        //   798: astore          53
        //   800: aload           53
        //   802: iconst_0       
        //   803: lload_1        
        //   804: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   807: aastore        
        //   808: aload           53
        //   810: iconst_1       
        //   811: lload           45
        //   813: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   816: aastore        
        //   817: aload           53
        //   819: iconst_2       
        //   820: aload           22
        //   822: aastore        
        //   823: ldc             "Gmail"
        //   825: ldc_w           "ATTACHMENT: start downloading attachment %d dlid=%d, %s"
        //   828: aload           53
        //   830: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   833: pop            
        //   834: goto            490
        //   837: astore          38
        //   839: iconst_2       
        //   840: anewarray       Ljava/lang/Object;
        //   843: astore          39
        //   845: aload           39
        //   847: iconst_0       
        //   848: lload_1        
        //   849: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   852: aastore        
        //   853: aload           39
        //   855: iconst_1       
        //   856: aload           22
        //   858: aastore        
        //   859: ldc             "Gmail"
        //   861: aload           38
        //   863: ldc_w           "ATTACHMENT: DownloadManager error downloading attachment %d, %s"
        //   866: aload           39
        //   868: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   871: pop            
        //   872: new             Landroid/content/ContentValues;
        //   875: dup            
        //   876: invokespecial   android/content/ContentValues.<init>:()V
        //   879: astore          41
        //   881: aload           41
        //   883: ldc             "status"
        //   885: sipush          404
        //   888: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   891: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   894: aload_0        
        //   895: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   898: astore          42
        //   900: iconst_2       
        //   901: anewarray       Ljava/lang/String;
        //   904: astore          43
        //   906: aload           43
        //   908: iconst_0       
        //   909: lload_1        
        //   910: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   913: aastore        
        //   914: aload           43
        //   916: iconst_1       
        //   917: lload_3        
        //   918: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   921: aastore        
        //   922: aload           42
        //   924: ldc             "attachments"
        //   926: aload           41
        //   928: ldc_w           "_id = ? OR _id = ?"
        //   931: aload           43
        //   933: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   936: pop            
        //   937: ldc2_w          -1
        //   940: lstore          45
        //   942: iconst_0       
        //   943: istore          47
        //   945: goto            694
        //   948: astore          25
        //   950: aconst_null    
        //   951: astore          26
        //   953: goto            309
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  67     102    606    618    Any
        //  110    238    606    618    Any
        //  247    262    606    618    Any
        //  270    294    606    618    Any
        //  294    305    948    956    Ljava/lang/Exception;
        //  294    305    606    618    Any
        //  314    345    606    618    Any
        //  365    402    606    618    Any
        //  407    490    606    618    Any
        //  490    496    606    618    Any
        //  504    547    606    618    Any
        //  555    572    606    618    Any
        //  572    603    606    618    Any
        //  618    649    606    618    Any
        //  657    664    606    618    Any
        //  669    676    606    618    Any
        //  676    687    837    948    Ljava/lang/IllegalArgumentException;
        //  676    687    606    618    Any
        //  699    834    606    618    Any
        //  839    937    606    618    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0309:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private static boolean dC(final int n) {
        return n != -1;
    }
    
    public static boolean dD(final int n) {
        return n == 190;
    }
    
    public static boolean dE(final int n) {
        return n == 192;
    }
    
    public static boolean dF(final int n) {
        return n == 193;
    }
    
    public static boolean dG(final int n) {
        return n == 200;
    }
    
    public static boolean dH(final int n) {
        return n > 200;
    }
    
    private String dO(final String s) {
        return this.mContext.getCacheDir().getAbsolutePath().concat("/").concat(s);
    }
    
    private long dP(final String s) {
        long n = 0L;
        final File file = new File(this.dO(s));
        if (file.listFiles() != null) {
            final File[] listFiles = file.listFiles();
            long n2;
            for (int length = listFiles.length, i = 0; i < length; ++i, n = n2) {
                n2 = n + listFiles[i].length();
            }
        }
        return n;
    }
    
    static String dQ(String substring) {
        if (substring.startsWith("file://")) {
            substring = substring.substring(7);
        }
        return substring;
    }
    
    public static boolean dR(final String s) {
        return new File(dQ(s)).exists();
    }
    
    public final void DN() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_1       
        //     2: aload_0        
        //     3: invokespecial   com/google/android/gm/provider/g.DM:()Z
        //     6: ifeq            23
        //     9: ldc             "Gmail"
        //    11: ldc_w           "Not enough free space to download attachments in background"
        //    14: iconst_0       
        //    15: anewarray       Ljava/lang/Object;
        //    18: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    21: pop            
        //    22: return         
        //    23: aload_0        
        //    24: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    27: astore_2       
        //    28: getstatic       com/google/android/gm/provider/g.aCz:[Ljava/lang/String;
        //    31: astore_3       
        //    32: iload_1        
        //    33: anewarray       Ljava/lang/String;
        //    36: astore          4
        //    38: aload           4
        //    40: iconst_0       
        //    41: sipush          192
        //    44: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    47: aastore        
        //    48: aload_2        
        //    49: ldc             "attachments"
        //    51: aload_3        
        //    52: ldc_w           "status = ?"
        //    55: aload           4
        //    57: aconst_null    
        //    58: aconst_null    
        //    59: aconst_null    
        //    60: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    63: astore          5
        //    65: aload           5
        //    67: invokeinterface android/database/Cursor.getCount:()I
        //    72: ifle            655
        //    75: new             Ljava/util/HashSet;
        //    78: dup            
        //    79: invokespecial   java/util/HashSet.<init>:()V
        //    82: astore          7
        //    84: aload           5
        //    86: invokeinterface android/database/Cursor.moveToNext:()Z
        //    91: ifeq            129
        //    94: aload           7
        //    96: aload           5
        //    98: bipush          7
        //   100: invokeinterface android/database/Cursor.getLong:(I)J
        //   105: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   108: invokeinterface java/util/Set.add:(Ljava/lang/Object;)Z
        //   113: pop            
        //   114: goto            84
        //   117: astore          6
        //   119: aload           5
        //   121: invokeinterface android/database/Cursor.close:()V
        //   126: aload           6
        //   128: athrow         
        //   129: new             Landroid/app/DownloadManager$Query;
        //   132: dup            
        //   133: invokespecial   android/app/DownloadManager$Query.<init>:()V
        //   136: iconst_2       
        //   137: invokevirtual   android/app/DownloadManager$Query.setFilterByStatus:(I)Landroid/app/DownloadManager$Query;
        //   140: astore          8
        //   142: aload_0        
        //   143: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   146: aload           8
        //   148: invokevirtual   android/app/DownloadManager.query:(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
        //   151: astore          9
        //   153: aload           9
        //   155: ifnonnull       179
        //   158: ldc             "Gmail"
        //   160: ldc_w           "null cursor from DownloadManager"
        //   163: iconst_0       
        //   164: anewarray       Ljava/lang/Object;
        //   167: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   170: pop            
        //   171: aload           5
        //   173: invokeinterface android/database/Cursor.close:()V
        //   178: return         
        //   179: aload           9
        //   181: ldc_w           "_id"
        //   184: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   189: istore          12
        //   191: aload           9
        //   193: invokeinterface android/database/Cursor.moveToNext:()Z
        //   198: ifeq            268
        //   201: aload           9
        //   203: iload           12
        //   205: invokeinterface android/database/Cursor.getLong:(I)J
        //   210: lstore          36
        //   212: aload           7
        //   214: lload           36
        //   216: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   219: invokeinterface java/util/Set.contains:(Ljava/lang/Object;)Z
        //   224: ifeq            191
        //   227: iconst_1       
        //   228: anewarray       Ljava/lang/Object;
        //   231: astore          38
        //   233: aload           38
        //   235: iconst_0       
        //   236: lload           36
        //   238: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   241: aastore        
        //   242: ldc             "Gmail"
        //   244: ldc_w           "ATTACHMENT: existing download in progress (dlid=%d), exiting"
        //   247: aload           38
        //   249: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   252: pop            
        //   253: aload           9
        //   255: invokeinterface android/database/Cursor.close:()V
        //   260: aload           5
        //   262: invokeinterface android/database/Cursor.close:()V
        //   267: return         
        //   268: aload           9
        //   270: invokeinterface android/database/Cursor.close:()V
        //   275: new             Landroid/app/DownloadManager$Query;
        //   278: dup            
        //   279: invokespecial   android/app/DownloadManager$Query.<init>:()V
        //   282: iconst_4       
        //   283: invokevirtual   android/app/DownloadManager$Query.setFilterByStatus:(I)Landroid/app/DownloadManager$Query;
        //   286: astore          13
        //   288: aload_0        
        //   289: getfield        com/google/android/gm/provider/g.azU:Landroid/app/DownloadManager;
        //   292: aload           13
        //   294: invokevirtual   android/app/DownloadManager.query:(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
        //   297: astore          14
        //   299: aload           14
        //   301: ifnull          655
        //   304: aload           14
        //   306: invokeinterface android/database/Cursor.getCount:()I
        //   311: istore          34
        //   313: iload           34
        //   315: ifle            674
        //   318: iload_1        
        //   319: istore          35
        //   321: aload           14
        //   323: invokeinterface android/database/Cursor.close:()V
        //   328: iload           35
        //   330: istore          15
        //   332: aload           5
        //   334: invokeinterface android/database/Cursor.close:()V
        //   339: aload_0        
        //   340: getfield        com/google/android/gm/provider/g.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   343: astore          16
        //   345: getstatic       com/google/android/gm/provider/g.aCz:[Ljava/lang/String;
        //   348: astore          17
        //   350: iload_1        
        //   351: anewarray       Ljava/lang/String;
        //   354: astore          18
        //   356: aload           18
        //   358: iconst_0       
        //   359: ldc_w           "0"
        //   362: aastore        
        //   363: aload           16
        //   365: ldc             "attachments"
        //   367: aload           17
        //   369: ldc_w           "downloadId = ?"
        //   372: aload           18
        //   374: aconst_null    
        //   375: aconst_null    
        //   376: ldc_w           "priority DESC"
        //   379: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   382: astore          19
        //   384: aload           19
        //   386: invokeinterface android/database/Cursor.moveToNext:()Z
        //   391: ifeq            639
        //   394: aload           19
        //   396: iconst_0       
        //   397: invokeinterface android/database/Cursor.getLong:(I)J
        //   402: lstore          22
        //   404: aload           19
        //   406: bipush          6
        //   408: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   413: invokestatic    com/android/mail/providers/F.cg:(Ljava/lang/String;)I
        //   416: ifeq            567
        //   419: iload_1        
        //   420: istore          24
        //   422: goto            661
        //   425: aload_0        
        //   426: getfield        com/google/android/gm/provider/g.mContext:Landroid/content/Context;
        //   429: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
        //   432: aconst_null    
        //   433: new             Landroid/content/IntentFilter;
        //   436: dup            
        //   437: ldc_w           "android.intent.action.BATTERY_CHANGED"
        //   440: invokespecial   android/content/IntentFilter.<init>:(Ljava/lang/String;)V
        //   443: invokevirtual   android/content/Context.registerReceiver:(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
        //   446: astore          25
        //   448: aload           25
        //   450: ldc_w           "level"
        //   453: iconst_m1      
        //   454: invokevirtual   android/content/Intent.getIntExtra:(Ljava/lang/String;I)I
        //   457: istore          26
        //   459: aload           25
        //   461: ldc_w           "scale"
        //   464: iconst_m1      
        //   465: invokevirtual   android/content/Intent.getIntExtra:(Ljava/lang/String;I)I
        //   468: istore          27
        //   470: aload           25
        //   472: ldc             "status"
        //   474: iconst_m1      
        //   475: invokevirtual   android/content/Intent.getIntExtra:(Ljava/lang/String;I)I
        //   478: iconst_2       
        //   479: if_icmpne       573
        //   482: iload_1        
        //   483: istore          28
        //   485: iload           28
        //   487: ifne            579
        //   490: iload           26
        //   492: i2f            
        //   493: iload           27
        //   495: i2f            
        //   496: fdiv           
        //   497: f2d            
        //   498: ldc2_w          0.2
        //   501: dcmpg          
        //   502: ifge            579
        //   505: iload_1        
        //   506: ifeq            584
        //   509: iconst_1       
        //   510: anewarray       Ljava/lang/Object;
        //   513: astore          29
        //   515: aload           29
        //   517: iconst_0       
        //   518: lload           22
        //   520: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   523: aastore        
        //   524: ldc             "Gmail"
        //   526: ldc_w           "ATTACHMENT: not downloading full version id=%d b/c battery level is low."
        //   529: aload           29
        //   531: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   534: pop            
        //   535: aload           19
        //   537: invokeinterface android/database/Cursor.close:()V
        //   542: return         
        //   543: astore          11
        //   545: aload           9
        //   547: invokeinterface android/database/Cursor.close:()V
        //   552: aload           11
        //   554: athrow         
        //   555: astore          33
        //   557: aload           14
        //   559: invokeinterface android/database/Cursor.close:()V
        //   564: aload           33
        //   566: athrow         
        //   567: iconst_0       
        //   568: istore          24
        //   570: goto            661
        //   573: iconst_0       
        //   574: istore          28
        //   576: goto            485
        //   579: iconst_0       
        //   580: istore_1       
        //   581: goto            505
        //   584: aload_0        
        //   585: lload           22
        //   587: ldc2_w          -1
        //   590: iload           24
        //   592: invokespecial   com/google/android/gm/provider/g.c:(JJZ)V
        //   595: goto            535
        //   598: astore          20
        //   600: aload           19
        //   602: invokeinterface android/database/Cursor.close:()V
        //   607: aload           20
        //   609: athrow         
        //   610: iconst_1       
        //   611: anewarray       Ljava/lang/Object;
        //   614: astore          31
        //   616: aload           31
        //   618: iconst_0       
        //   619: lload           22
        //   621: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   624: aastore        
        //   625: ldc             "Gmail"
        //   627: ldc_w           "ATTACHMENT: unable to download full version id=%d b/c DL mgr has paused an existing DL."
        //   630: aload           31
        //   632: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   635: pop            
        //   636: goto            535
        //   639: ldc             "Gmail"
        //   641: ldc_w           "ATTACHMENT: unable to find attachment download record to work on, exiting"
        //   644: iconst_0       
        //   645: anewarray       Ljava/lang/Object;
        //   648: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   651: pop            
        //   652: goto            535
        //   655: iconst_0       
        //   656: istore          15
        //   658: goto            332
        //   661: iload           24
        //   663: ifeq            425
        //   666: iload           15
        //   668: ifne            610
        //   671: goto            425
        //   674: iconst_0       
        //   675: istore          35
        //   677: goto            321
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  65     84     117    129    Any
        //  84     114    117    129    Any
        //  129    153    117    129    Any
        //  158    171    117    129    Any
        //  179    191    543    555    Any
        //  191    253    543    555    Any
        //  253    260    117    129    Any
        //  268    299    117    129    Any
        //  304    313    555    567    Any
        //  321    328    117    129    Any
        //  384    419    598    610    Any
        //  425    482    598    610    Any
        //  490    505    598    610    Any
        //  509    535    598    610    Any
        //  545    555    117    129    Any
        //  557    567    117    129    Any
        //  584    595    598    610    Any
        //  610    636    598    610    Any
        //  639    652    598    610    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 298, Size: 298
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
    
    final void DO() {
        E.c("Gmail", "Purging old attachments.", new Object[0]);
        if (this.bcJ.isDbLockedByCurrentThread()) {
            throw new IllegalStateException("Db should not be locked");
        }
        this.DP();
        this.DQ();
    }
    
    public final void a(final long n, final int n2, int n3) {
    Label_0413:
        while (true) {
            switch (n2) {
                case 8: {
                    n3 = 200;
                }
                default: {
                    n3 = 0;
                }
                case 16: {
                    Cursor query = null;
                Label_0364_Outer:
                    while (true) {
                        final String[] array = Arrays.copyOf(g.aCz, 1 + g.aCz.length);
                        array[-1 + array.length] = "fromAddress";
                        query = this.bcJ.query("attachments, messages", array, "downloadId = ? AND attachments.messages_messageId = messages.messageId", new String[] { Long.toString(n) }, (String)null, (String)null, "saveToSd DESC");
                        while (true) {
                            long long1 = 0L;
                            long long2 = 0L;
                            long long3 = 0L;
                            String string = null;
                            int cg = 0;
                            boolean b = false;
                            String lastPathSegment;
                            String string2;
                            int int1;
                            int int2;
                            String string3;
                            boolean b2;
                            Label_0214_Outer:Label_0301_Outer:
                            while (true) {
                                Label_0491: {
                                    while (true) {
                                    Label_0435:
                                        while (true) {
                                        Label_0427:
                                            while (true) {
                                                Label_0421: {
                                                    try {
                                                        if (query.getCount() == 0) {
                                                            E.f("Gmail", "No attachments found with downloadId %d", n);
                                                        }
                                                        while (query.moveToNext()) {
                                                            long1 = query.getLong(0);
                                                            long2 = query.getLong(1);
                                                            long3 = query.getLong(2);
                                                            string = query.getString(3);
                                                            cg = F.cg(query.getString(4));
                                                            if (query.getInt(10) == 0) {
                                                                break Label_0421;
                                                            }
                                                            b = true;
                                                            E.c("Gmail", "Download finished with status %d for download %d. %s", n3, n, a(long2, long3, string, cg, b));
                                                            if (!query.isFirst()) {
                                                                break Label_0491;
                                                            }
                                                            lastPathSegment = Uri.parse(query.getString(9)).getLastPathSegment();
                                                            if (lastPathSegment == null) {
                                                                break Label_0427;
                                                            }
                                                            string2 = query.getString(11);
                                                            int1 = query.getInt(12);
                                                            int2 = query.getInt(13);
                                                            string3 = query.getString(-1 + array.length);
                                                            if (!dG(n3)) {
                                                                break Label_0435;
                                                            }
                                                            if (int1 == 0) {
                                                                break Label_0214_Outer;
                                                            }
                                                            b2 = true;
                                                            this.a(long1, long2, long3, string, cg, b, lastPathSegment, n, null, string2, string3, b2, int2);
                                                            this.ac(long2);
                                                        }
                                                        break;
                                                    }
                                                    finally {
                                                        query.close();
                                                    }
                                                    continue Label_0413;
                                                }
                                                b = false;
                                                continue Label_0301_Outer;
                                            }
                                            lastPathSegment = "";
                                            continue Label_0364_Outer;
                                        }
                                        E.f("Gmail", "Download id %d failed with status %d", n, n3);
                                        this.a(long1, long2, long3, string, cg, b, n3, null);
                                        continue;
                                    }
                                }
                                this.a(long3, string, cg, n3, null);
                                continue Label_0214_Outer;
                            }
                            b2 = false;
                            continue;
                        }
                    }
                    query.close();
                    this.bcL.DS();
                }
            }
            break;
        }
    }
    
    public final void a(final long n, final long n2, final GmailAttachment gmailAttachment, final int n3, final boolean b, final int n4) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "queryAndStartDownloadingAttachment for %s", a(n, n2, gmailAttachment.partId, n3, b));
        }
        final Cursor query = this.bcJ.query("attachments", g.aCz, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? ", new String[] { Long.toString(n2), gmailAttachment.partId, F.toString(n3) }, (String)null, (String)null, (String)null);
        final Long[] array = { -1L, -1L };
        final long[] array2 = { -1L, -1L };
        final int[] array3 = { -1, -1 };
        final String[] array4 = { null, null };
        try {
            while (query.moveToNext()) {
                final int int1 = query.getInt(10);
                array[int1] = query.getLong(0);
                array2[int1] = query.getLong(7);
                array3[int1] = query.getInt(8);
                array4[int1] = query.getString(9);
            }
        }
        finally {
            query.close();
        }
        query.close();
        for (int i = 0; i < 2; ++i) {
            if (!dG(array3[i]) || !dR(array4[i])) {
                array4[i] = null;
            }
        }
        int n5;
        if (b) {
            n5 = 1;
        }
        else {
            n5 = 0;
        }
        for (int j = 0; j <= n5; ++j) {
            if (array[j] == -1L) {
                array[j] = this.a(n, n2, gmailAttachment, n3, -1L, j != 0, false, n4);
            }
        }
        Label_0452: {
            if (!dC(array3[0]) && !dC(array3[1])) {
                E.c("Gmail", "AttachmentManager.queryAndStartDownloadingAttachment() starting new download", new Object[0]);
            }
            else if (array4[0] != null || array4[1] != null) {
                E.c("Gmail", "AttachmentManager.queryAndStartDownloadingAttachment() file exists either on cache or sd card, will copy if needed", new Object[0]);
                if (array4[n5] == null) {
                    this.bcL.g(new i(this, array, n5, n, n2, gmailAttachment, n3, b, array4));
                }
                return;
            }
            else if (dE(array3[n5])) {
                E.c("Gmail", "AttachmentManager.queryAndStartDownloadingAttachment() download already running", new Object[0]);
                if (this.ad(array2[n5])) {
                    E.c("Gmail", "AttachmentManager.queryAndStartDownloadingAttachment() download was paused. Forcing it to start.", new Object[0]);
                    this.azU.remove(new long[] { array2[n5] });
                    final long longValue = array[n5];
                    final String partId = gmailAttachment.partId;
                    final String name = gmailAttachment.getName();
                    int n6;
                    if (b) {
                        n6 = 1;
                    }
                    else {
                        n6 = 0;
                    }
                    this.a(n, longValue, gmailAttachment, name, n6, false, -1);
                    this.c(array[0], array[1], false);
                }
                break Label_0452;
            }
            else {
                E.c("Gmail", "AttachmentManager.queryAndStartDownloadingAttachment() refetch attachment", new Object[0]);
                for (int k = 0; k <= n5; ++k) {
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("filename", gmailAttachment.getName());
                    contentValues.put("automatic", 0);
                    this.bcJ.update("attachments", contentValues, "_id = ?", new String[] { Long.toString(array[k]) });
                }
            }
            this.c(array[0], array[1], false);
        }
        this.ac(n);
    }
    
    public final void a(final long n, final long n2, final GmailAttachment gmailAttachment, final int n3, final boolean b, final boolean b2, final int n4) {
        final long a = this.a(n, n2, gmailAttachment, n3, 0L, b, b2, n4);
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "enqueueAttachment attachmentId: %d: %s", a, a(n, n2, gmailAttachment.partId, n3, b));
        }
        this.ac(n);
    }
    
    public final Cursor b(final long n, final String[] array) {
        return this.bcJ.query("attachments", array, "messages_conversation = ? AND desiredRendition = ?", new String[] { Long.toString(n), F.toString(1) }, (String)null, (String)null, (String)null);
    }
    
    public final ParcelFileDescriptor b(final long n, final long n2, final String s, final int n3, final boolean b) {
        final String a = a(n, n2, s, n3, b);
        E.c("Gmail", "AttachmentManager.openAttachment: %s", a);
        while (true) {
            try {
                final String[] bcI = g.bcI;
                final SQLiteDatabase bcJ = this.bcJ;
                final String[] array = { Long.toString(n2), s, F.toString(n3), null };
                long n4;
                if (b) {
                    n4 = 1L;
                }
                else {
                    n4 = 0L;
                }
                array[3] = Long.toString(n4);
                final Cursor query = bcJ.query("attachments", bcI, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? AND saveToSd = ?", array, (String)null, (String)null, (String)null);
                Label_0252: {
                    Label_0169: {
                        try {
                            if (!query.moveToNext()) {
                                break Label_0252;
                            }
                            if (!dG(query.getInt(1))) {
                                throw new FileNotFoundException("Download not complete or not successful.");
                            }
                            break Label_0169;
                        }
                        finally {}
                        if (query != null) {
                            query.close();
                        }
                        throw;
                    }
                    final String dq = dQ(query.getString(0));
                    final long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        E.c("Gmail", "Opening attachment %s", dq);
                        final ParcelFileDescriptor open = ParcelFileDescriptor.open(new File(dq), 268435456);
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        if (query != null) {
                            query.close();
                        }
                        return open;
                    }
                    finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
                E.f("Gmail", "Attachment is not requested %s", a);
                throw new FileNotFoundException("Attachment not requested.");
            }
            finally {
                final Cursor query = null;
                continue;
            }
            break;
        }
    }
    
    public final int c(final long n, final long n2, final String s, final int n3, final boolean b) {
        final GmailAttachment a = GmailProvider.a(this.mAccount, n, n2, s);
        Label_0255: {
            while (true) {
                Label_0066: {
                    if (!E.isLoggable("Gmail", 3) || a == null) {
                        break Label_0066;
                    }
                    if (a.ayN != 1) {
                        break Label_0255;
                    }
                    final boolean b2 = true;
                    E.c("Gmail", "cancelDownloadRequest: %s", a(n, n2, s, n3, b2));
                }
                final Cursor query = this.bcJ.query("attachments", new String[] { "_id", "downloadId", "filename", "saveToSd" }, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ?", new String[] { Long.toString(n2), s, F.toString(n3) }, (String)null, (String)null, "saveToSd DESC");
                boolean b3 = false;
                try {
                    while (query.moveToNext()) {
                        final long long1 = query.getLong(0);
                        final long long2 = query.getLong(1);
                        final String string = query.getString(2);
                        final int int1 = query.getInt(3);
                        if (this.azU != null && ab(long2)) {
                            this.azU.remove(new long[] { long2 });
                        }
                        this.a(n, long1, a, string, int1, b, -1);
                        b3 = true;
                    }
                    int n4;
                    if (b3) {
                        n4 = 1;
                    }
                    else {
                        n4 = 0;
                    }
                    return n4;
                    final boolean b2 = false;
                    continue;
                }
                finally {
                    query.close();
                }
                break;
            }
        }
    }
    
    public final void d(final Intent intent) {
        final long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (this.bcN.contains(longExtra)) {
            return;
        }
        if (longExtra == -1L) {
            E.f("Gmail", "Received notification from DownloadManager with invalid download id", new Object[0]);
            return;
        }
        final Cursor query = this.azU.query(new DownloadManager$Query().setFilterById(new long[] { longExtra }));
        if (query == null) {
            E.f("Gmail", "null cursor from DownloadManager", new Object[0]);
            return;
        }
        try {
            final int columnIndex = query.getColumnIndex("status");
            final int columnIndex2 = query.getColumnIndex("reason");
            if (query.moveToNext()) {
                this.a(longExtra, query.getInt(columnIndex), query.getInt(columnIndex2));
            }
        }
        finally {
            query.close();
        }
    }
    
    public final void e(final long n, final long n2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("messages_messageId", n2);
        this.bcJ.update("attachments", contentValues, "messages_messageId = ?", new String[] { Long.toString(n) });
    }
    
    public final void v(final Collection<Long> collection) {
        E.c("Gmail", "AttachmentManager: setting watched ids %s", collection);
        this.bcN.addAll(collection);
    }
    
    public final void w(final Collection<Long> collection) {
        E.c("Gmail", "AttachmentManager: removing watched ids %s", collection);
        this.bcN.removeAll(collection);
    }
}
