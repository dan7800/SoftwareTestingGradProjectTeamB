package com.android.email.provider;

import android.database.sqlite.*;
import com.android.emailcommon.mail.*;
import com.android.mail.utils.*;
import android.database.*;
import android.text.*;
import android.accounts.*;
import android.os.*;
import android.content.*;
import com.android.emailcommon.provider.*;

public final class f
{
    private static String RV;
    private static final String[] RW;
    private static final String[] RX;
    private static final String[] RY;
    private static final String[] RZ;
    private static final int[] Sa;
    private static final String[] Sb;
    
    static {
        f.RV = "_id integer primary key autoincrement, messageKey integer, messageServerId text, accountKey integer, status integer, ";
        RW = new String[] { "hostAuthKeyRecv", "emailAddress" };
        RX = new String[] { "protocol", "password" };
        RY = new String[] { "_id", "flags", "hostAuthKeyRecv" };
        RZ = new String[] { "protocol" };
        Sa = new int[] { 17, 16, 14, 18, 15 };
        Sb = new String[] { "bccList", "ccList", "fromList", "replyToList", "toList" };
    }
    
    static void a(final Context context, final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create trigger message_delete_duplicates_on_insert before insert on Message for each row when new.syncServerId is not null and (select type from Mailbox where _id=new.mailboxKey)!=8 and (select HostAuth.protocol from HostAuth,Account where new.accountKey=Account._id and Account.hostAuthKeyRecv=HostAuth._id)='" + context.getString(2131297000) + "' begin delete from Message where new." + "syncServerId=syncServerId and new." + "accountKey=accountKey and (select " + "Mailbox.type from " + "Mailbox where _id=" + "mailboxKey)!=8" + "; end");
    }
    
    static void a(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end");
        sqLiteDatabase.execSQL("create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end");
        sqLiteDatabase.execSQL("create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end");
    }
    
    static void a(final SQLiteDatabase sqLiteDatabase, final Context context) {
        b(sqLiteDatabase, context);
    }
    
    private static void a(final SQLiteDatabase sqLiteDatabase, final String s) {
        sqLiteDatabase.execSQL(h(s, "messageKey"));
        sqLiteDatabase.execSQL(h(s, "accountKey"));
    }
    
    static void b(final Context context, final SQLiteDatabase sqLiteDatabase) {
        int i = 0;
        final String string = " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, " + "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, snippet text, protocolSearchInfo text, threadTopic text, syncData text, flagSeen integer, mainMailboxKey integer);";
        final String string2 = " (_id integer unique, syncServerId text, syncServerTimeStamp integer, " + "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, snippet text, protocolSearchInfo text, threadTopic text, syncData text, flagSeen integer, mainMailboxKey integer);";
        sqLiteDatabase.execSQL("create table Message" + string);
        sqLiteDatabase.execSQL("create table Message_Updates" + string2);
        sqLiteDatabase.execSQL("create table Message_Deletes" + string2);
        for (String[] array = { "timeStamp", "flagRead", "flagLoaded", "mailboxKey", "syncServerId" }; i < array.length; ++i) {
            sqLiteDatabase.execSQL(h("Message", array[i]));
        }
        sqLiteDatabase.execSQL("create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end");
        sqLiteDatabase.execSQL("create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end");
        sqLiteDatabase.execSQL("create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end");
        sqLiteDatabase.execSQL("create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end");
        sqLiteDatabase.execSQL("create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end");
        a(sqLiteDatabase);
        a(context, sqLiteDatabase);
    }
    
    private static void b(final Context context, final String s, final String s2, final String s3) {
        final AccountManager value = AccountManager.get(context);
        final Account[] accountsByType = value.getAccountsByType(s2);
    Label_0068:
        while (true) {
            if (accountsByType != null) {
                for (final Account account : accountsByType) {
                    if (TextUtils.equals((CharSequence)account.name, (CharSequence)s) && TextUtils.equals((CharSequence)account.type, (CharSequence)s2)) {
                        final int n = 1;
                        break Label_0068;
                    }
                }
            }
            Label_0080: {
                break Label_0080;
                final int n;
                if (n != 0) {
                    return;
                }
                E.b("Email", "Creating account %s %s", s, s2);
                final Account account2 = new Account(s, s2);
                value.addAccountExplicitly(account2, s3, (Bundle)null);
                ContentResolver.setIsSyncable(account2, EmailContent.AUTHORITY, 1);
                ContentResolver.setSyncAutomatically(account2, EmailContent.AUTHORITY, true);
                ContentResolver.setIsSyncable(account2, "com.android.contacts", 0);
                ContentResolver.setIsSyncable(account2, "com.android.calendar", 0);
                return;
            }
            final int n = 0;
            continue Label_0068;
        }
    }
    
    static void b(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Credential" + " (_id integer primary key autoincrement, provider text,accessToken text,refreshToken text,expiration integer);");
        sqLiteDatabase.execSQL("create trigger host_auth_delete after delete on HostAuth begin delete from Credential where _id=old.credentialKey and (select count(*) from HostAuth where credentialKey=old.credentialKey)=0; end");
    }
    
    private static void b(final SQLiteDatabase p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/google/common/collect/y;
        //     3: dup            
        //     4: invokespecial   com/google/common/collect/y.<init>:()V
        //     7: ldc_w           "pop3"
        //    10: aload_1        
        //    11: ldc_w           2131296985
        //    14: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //    17: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //    20: ldc_w           "imap"
        //    23: aload_1        
        //    24: ldc_w           2131296987
        //    27: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //    30: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //    33: ldc_w           "eas"
        //    36: aload_1        
        //    37: ldc_w           2131296984
        //    40: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //    43: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //    46: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //    49: astore_2       
        //    50: aload_0        
        //    51: ldc_w           "Account"
        //    54: getstatic       com/android/email/provider/f.RW:[Ljava/lang/String;
        //    57: aconst_null    
        //    58: aconst_null    
        //    59: aconst_null    
        //    60: aconst_null    
        //    61: aconst_null    
        //    62: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    65: astore          5
        //    67: iconst_1       
        //    68: anewarray       Ljava/lang/String;
        //    71: astore          7
        //    73: aload           5
        //    75: invokeinterface android/database/Cursor.moveToNext:()Z
        //    80: ifeq            361
        //    83: aload           7
        //    85: iconst_0       
        //    86: aload           5
        //    88: iconst_0       
        //    89: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    94: aastore        
        //    95: aload_0        
        //    96: ldc_w           "HostAuth"
        //    99: getstatic       com/android/email/provider/f.RX:[Ljava/lang/String;
        //   102: ldc             "_id=?"
        //   104: aload           7
        //   106: aconst_null    
        //   107: aconst_null    
        //   108: aconst_null    
        //   109: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   112: astore          8
        //   114: aload           8
        //   116: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   121: ifeq            238
        //   124: aload           8
        //   126: iconst_0       
        //   127: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   132: astore          10
        //   134: ldc_w           "imap"
        //   137: aload           10
        //   139: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   142: ifne            156
        //   145: ldc_w           "pop3"
        //   148: aload           10
        //   150: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   153: ifeq            289
        //   156: getstatic       com/android/email/b.DEBUG:Z
        //   159: ifeq            207
        //   162: ldc             "EmailProvider"
        //   164: new             Ljava/lang/StringBuilder;
        //   167: dup            
        //   168: ldc_w           "Create AccountManager account for "
        //   171: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   174: aload           10
        //   176: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   179: ldc_w           "account: "
        //   182: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   185: aload           5
        //   187: iconst_1       
        //   188: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   193: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   196: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   199: iconst_0       
        //   200: anewarray       Ljava/lang/Object;
        //   203: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   206: pop            
        //   207: aload_1        
        //   208: aload           5
        //   210: iconst_1       
        //   211: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   216: aload_2        
        //   217: aload           10
        //   219: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   224: checkcast       Ljava/lang/String;
        //   227: aload           8
        //   229: iconst_1       
        //   230: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   235: invokestatic    com/android/email/provider/f.b:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //   238: aload           8
        //   240: invokeinterface android/database/Cursor.close:()V
        //   245: goto            73
        //   248: astore          6
        //   250: aload           5
        //   252: invokeinterface android/database/Cursor.close:()V
        //   257: aload           6
        //   259: athrow         
        //   260: astore_3       
        //   261: ldc             "EmailProvider"
        //   263: new             Ljava/lang/StringBuilder;
        //   266: dup            
        //   267: ldc_w           "Exception while migrating accounts "
        //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   273: aload_3        
        //   274: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   277: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   280: iconst_0       
        //   281: anewarray       Ljava/lang/Object;
        //   284: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   287: pop            
        //   288: return         
        //   289: ldc_w           "eas"
        //   292: aload           10
        //   294: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   297: ifeq            238
        //   300: new             Landroid/accounts/Account;
        //   303: dup            
        //   304: aload           5
        //   306: iconst_1       
        //   307: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   312: aload_2        
        //   313: aload           10
        //   315: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   320: checkcast       Ljava/lang/String;
        //   323: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   326: astore          12
        //   328: aload           12
        //   330: getstatic       com/android/emailcommon/provider/EmailContent.AUTHORITY:Ljava/lang/String;
        //   333: iconst_1       
        //   334: invokestatic    android/content/ContentResolver.setIsSyncable:(Landroid/accounts/Account;Ljava/lang/String;I)V
        //   337: aload           12
        //   339: getstatic       com/android/emailcommon/provider/EmailContent.AUTHORITY:Ljava/lang/String;
        //   342: iconst_1       
        //   343: invokestatic    android/content/ContentResolver.setSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;Z)V
        //   346: goto            238
        //   349: astore          9
        //   351: aload           8
        //   353: invokeinterface android/database/Cursor.close:()V
        //   358: aload           9
        //   360: athrow         
        //   361: aload           5
        //   363: invokeinterface android/database/Cursor.close:()V
        //   368: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  50     67     260    289    Landroid/database/SQLException;
        //  67     73     248    260    Any
        //  73     114    248    260    Any
        //  114    156    349    361    Any
        //  156    207    349    361    Any
        //  207    238    349    361    Any
        //  238    245    248    260    Any
        //  250    260    260    289    Landroid/database/SQLException;
        //  289    346    349    361    Any
        //  351    361    248    260    Any
        //  361    368    260    289    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0156:
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
    
    private static void b(final SQLiteDatabase sqLiteDatabase, final String s) {
        sqLiteDatabase.execSQL("create trigger " + s + "_delete_message before delete on Message for each row begin delete from " + s + " where messageKey=old._id" + "; end");
        sqLiteDatabase.execSQL("create trigger " + s + "_delete_account before delete on Account for each row begin delete from " + s + " where accountKey=old._id" + "; end");
    }
    
    static void c(final Context context, final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("drop table Message");
                sqLiteDatabase.execSQL("drop table Message_Updates");
                sqLiteDatabase.execSQL("drop table Message_Deletes");
                b(context, sqLiteDatabase);
            }
            catch (SQLException ex) {
                continue;
            }
            break;
        }
    }
    
    static void c(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("drop trigger message_delete_duplicates_on_insert");
    }
    
    static void d(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Account" + " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, policyKey integer, maxAttachmentSize integer, pingDuration integer);");
        sqLiteDatabase.execSQL("create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end");
    }
    
    static void e(final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("drop table Account");
                d(sqLiteDatabase);
            }
            catch (SQLException ex) {
                continue;
            }
            break;
        }
    }
    
    static void f(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Policy" + " (_id integer primary key autoincrement, passwordMode integer, passwordMinLength integer, passwordExpirationDays integer, passwordHistory integer, passwordComplexChars integer, passwordMaxFails integer, maxScreenLockTime integer, requireRemoteWipe integer, requireEncryption integer, requireEncryptionExternal integer, requireManualSyncRoaming integer, dontAllowCamera integer, dontAllowAttachments integer, dontAllowHtml integer, maxAttachmentSize integer, maxTextTruncationSize integer, maxHTMLTruncationSize integer, maxEmailLookback integer, maxCalendarLookback integer, passwordRecoveryEnabled integer, protocolPoliciesEnforced text, protocolPoliciesUnsupported text);");
    }
    
    static void g(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table HostAuth" + " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer,certAlias text,serverCert blob,credentialKey integer);");
    }
    
    private static String h(final String s, final String s2) {
        return "create index " + s.toLowerCase() + '_' + s2 + " on " + s + " (" + s2 + ");";
    }
    
    static void h(final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("drop table HostAuth");
                g(sqLiteDatabase);
            }
            catch (SQLException ex) {
                continue;
            }
            break;
        }
    }
    
    static void i(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Mailbox" + " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0, lastTouchedTime integer default 0, uiSyncStatus integer default 0, uiLastSyncResult integer default 0, lastNotifiedMessageKey integer not null default 0, lastNotifiedMessageCount integer not null default 0, totalCount integer, hierarchicalName text, lastFullSyncTime integer);");
        sqLiteDatabase.execSQL("create index mailbox_serverId on Mailbox (serverId)");
        sqLiteDatabase.execSQL("create index mailbox_accountKey on Mailbox (accountKey)");
        sqLiteDatabase.execSQL("create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end");
    }
    
    static void j(final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("drop table Mailbox");
                i(sqLiteDatabase);
            }
            catch (SQLException ex) {
                continue;
            }
            break;
        }
    }
    
    static void k(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Attachment" + " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, accountKey integer, uiState integer, uiDestination integer, uiDownloadedSize integer, cachedFile text);");
        sqLiteDatabase.execSQL(h("Attachment", "messageKey"));
    }
    
    static void l(final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("drop table Attachment");
                k(sqLiteDatabase);
            }
            catch (SQLException ex) {
                continue;
            }
            break;
        }
    }
    
    static void m(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table QuickResponse" + " (_id integer primary key autoincrement, quickResponse text, accountKey integer);");
    }
    
    static void n(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table Body" + " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text, quotedTextStartPos integer);");
        sqLiteDatabase.execSQL(h("Body", "messageKey"));
    }
    
    static void o(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)");
    }
    
    static void p(final SQLiteDatabase sqLiteDatabase) {
        Cursor query = null;
        ContentValues contentValues;
        String[] array;
        long long1;
        Policy policy;
        boolean zs;
        boolean zt;
        boolean zu;
        Label_0209_Outer:Label_0230_Outer:
        while (true) {
            query = sqLiteDatabase.query("Account", new String[] { "_id", "securityFlags" }, "securityFlags>0", (String[])null, (String)null, (String)null, (String)null);
            while (true) {
            Label_0318:
                while (true) {
                Label_0312:
                    while (true) {
                        Label_0306: {
                            try {
                                contentValues = new ContentValues();
                                array = new String[] { null };
                                while (query.moveToNext()) {
                                    long1 = query.getLong(1);
                                    policy = new Policy();
                                    policy.ZL = (int)(0x1E0L & long1) >> 5;
                                    policy.ZM = (int)((0x1FL & long1) >> 0);
                                    policy.ZN = (int)((0x3E00L & long1) >> 9);
                                    policy.ZQ = (int)((0x1F00000000000L & long1) >> 44);
                                    policy.ZP = (int)((0xFF000000000L & long1) >> 36);
                                    policy.ZO = (int)((0xFFC000000L & long1) >> 26);
                                    policy.ZR = (int)((0x1FFC000L & long1) >> 14);
                                    if (0x0L == (0x2000000L & long1)) {
                                        break Label_0306;
                                    }
                                    zs = true;
                                    policy.ZS = zs;
                                    if (0x0L == (0x2000000000000L & long1)) {
                                        break Label_0312;
                                    }
                                    zt = true;
                                    policy.ZT = zt;
                                    if (0x0L == (long1 & 0x4000000000000L)) {
                                        break Label_0318;
                                    }
                                    zu = true;
                                    policy.ZU = zu;
                                    contentValues.put("policyKey", sqLiteDatabase.insert("Policy", (String)null, policy.lB()));
                                    contentValues.putNull("securityFlags");
                                    array[0] = Long.toString(query.getLong(0));
                                    sqLiteDatabase.update("Account", contentValues, "_id=?", array);
                                }
                                break;
                            }
                            finally {
                                query.close();
                            }
                        }
                        zs = false;
                        continue Label_0209_Outer;
                    }
                    zt = false;
                    continue Label_0230_Outer;
                }
                zu = false;
                continue;
            }
        }
        query.close();
    }
    
    static void q(final SQLiteDatabase sqLiteDatabase) {
        while (true) {
            try {
                sqLiteDatabase.execSQL("UPDATE Mailbox SET serverId=displayName WHERE Mailbox._id IN ( SELECT Mailbox._id FROM Mailbox,Account,HostAuth WHERE (Mailbox.parentKey isnull OR Mailbox.parentKey=0 ) AND Mailbox.accountKey=Account._id AND Account.hostAuthKeyRecv=HostAuth._id AND ( HostAuth.protocol='imap' OR HostAuth.protocol='pop3' ) )");
                ContentCache.ka();
            }
            catch (SQLException ex) {
                E.e("EmailProvider", "Exception upgrading EmailProvider.db from 17 to 18 " + ex, new Object[0]);
                continue;
            }
            break;
        }
    }
}
