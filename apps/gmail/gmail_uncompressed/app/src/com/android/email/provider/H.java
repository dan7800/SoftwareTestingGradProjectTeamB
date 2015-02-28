package com.android.email.provider;

import android.database.sqlite.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;
import android.database.*;
import android.text.*;
import android.accounts.*;
import android.os.*;
import android.content.*;
import com.android.emailcommon.provider.*;

public final class h extends SQLiteOpenHelper
{
    final Context mContext;
    
    h(final Context mContext, final String s) {
        super(mContext, s, (SQLiteDatabase$CursorFactory)null, 127);
        this.mContext = mContext;
    }
    
    public final void onCreate(final SQLiteDatabase sqLiteDatabase) {
        E.c("EmailProvider", "Creating EmailProvider database", new Object[0]);
        f.b(this.mContext, sqLiteDatabase);
        f.k(sqLiteDatabase);
        f.i(sqLiteDatabase);
        f.g(sqLiteDatabase);
        f.d(sqLiteDatabase);
        f.u(sqLiteDatabase);
        f.v(sqLiteDatabase);
        f.f(sqLiteDatabase);
        f.m(sqLiteDatabase);
        f.b(sqLiteDatabase);
    }
    
    public final void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        if (n == 101 && n2 == 100) {
            E.c("EmailProvider", "Downgrade from v101 to v100", new Object[0]);
            return;
        }
        super.onDowngrade(sqLiteDatabase, n, n2);
    }
    
    public final void onOpen(final SQLiteDatabase sqLiteDatabase) {
        try {
            sqLiteDatabase.execSQL("DELETE FROM Account WHERE displayName ISNULL;");
            sqLiteDatabase.execSQL("DELETE FROM HostAuth WHERE protocol ISNULL;");
        }
        catch (SQLException ex) {
            E.e("EmailProvider", (Throwable)ex, "Exception cleaning EmailProvider.db", new Object[0]);
        }
    }
    
    public final void onUpgrade(final SQLiteDatabase p0, final int p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iload_2        
        //     1: iconst_5       
        //     2: if_icmpge       87
        //     5: aload_0        
        //     6: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //     9: invokestatic    android/accounts/AccountManager.get:(Landroid/content/Context;)Landroid/accounts/AccountManager;
        //    12: ldc             "eas"
        //    14: invokevirtual   android/accounts/AccountManager.getAccountsByType:(Ljava/lang/String;)[Landroid/accounts/Account;
        //    17: astore          74
        //    19: aload           74
        //    21: arraylength    
        //    22: istore          75
        //    24: iconst_0       
        //    25: istore          76
        //    27: iload           76
        //    29: iload           75
        //    31: if_icmpge       62
        //    34: aload           74
        //    36: iload           76
        //    38: aaload         
        //    39: astore          77
        //    41: aload_0        
        //    42: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //    45: invokestatic    android/accounts/AccountManager.get:(Landroid/content/Context;)Landroid/accounts/AccountManager;
        //    48: aload           77
        //    50: aconst_null    
        //    51: aconst_null    
        //    52: invokevirtual   android/accounts/AccountManager.removeAccount:(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
        //    55: pop            
        //    56: iinc            76, 1
        //    59: goto            27
        //    62: aload_0        
        //    63: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //    66: aload_1        
        //    67: invokestatic    com/android/email/provider/f.c:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
        //    70: aload_1        
        //    71: invokestatic    com/android/email/provider/f.l:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    74: aload_1        
        //    75: invokestatic    com/android/email/provider/f.j:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    78: aload_1        
        //    79: invokestatic    com/android/email/provider/f.h:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    82: aload_1        
        //    83: invokestatic    com/android/email/provider/f.e:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    86: return         
        //    87: iload_2        
        //    88: iconst_5       
        //    89: if_icmpne       110
        //    92: aload_1        
        //    93: ldc             "alter table Message add column syncServerTimeStamp integer;"
        //    95: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //    98: aload_1        
        //    99: ldc             "alter table Message_Updates add column syncServerTimeStamp integer;"
        //   101: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   104: aload_1        
        //   105: ldc             "alter table Message_Deletes add column syncServerTimeStamp integer;"
        //   107: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   110: iload_2        
        //   111: bipush          6
        //   113: if_icmpgt       128
        //   116: aload_1        
        //   117: ldc             "drop trigger mailbox_delete;"
        //   119: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   122: aload_1        
        //   123: ldc             "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"
        //   125: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   128: iload_2        
        //   129: bipush          7
        //   131: if_icmpgt       140
        //   134: aload_1        
        //   135: ldc             "alter table Account add column securityFlags integer;"
        //   137: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   140: iload_2        
        //   141: bipush          8
        //   143: if_icmpgt       158
        //   146: aload_1        
        //   147: ldc             "alter table Account add column securitySyncKey text;"
        //   149: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   152: aload_1        
        //   153: ldc             "alter table Account add column signature text;"
        //   155: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   158: iload_2        
        //   159: bipush          9
        //   161: if_icmpgt       182
        //   164: aload_1        
        //   165: ldc             "alter table Message add column meetingInfo text;"
        //   167: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   170: aload_1        
        //   171: ldc             "alter table Message_Updates add column meetingInfo text;"
        //   173: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   176: aload_1        
        //   177: ldc             "alter table Message_Deletes add column meetingInfo text;"
        //   179: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   182: iload_2        
        //   183: bipush          10
        //   185: if_icmpgt       200
        //   188: aload_1        
        //   189: ldc             "alter table Attachment add column content text;"
        //   191: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   194: aload_1        
        //   195: ldc             "alter table Attachment add column flags integer;"
        //   197: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   200: iload_2        
        //   201: bipush          11
        //   203: if_icmpgt       212
        //   206: aload_1        
        //   207: ldc             "alter table Attachment add column content_bytes blob;"
        //   209: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   212: iload_2        
        //   213: bipush          12
        //   215: if_icmpgt       228
        //   218: aload_1        
        //   219: ldc             "alter table Mailbox add column messageCount integer not null default 0;"
        //   221: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   224: aload_1        
        //   225: invokestatic    com/android/email/provider/f.o:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   228: iload_2        
        //   229: bipush          13
        //   231: if_icmpgt       240
        //   234: aload_1        
        //   235: ldc             "alter table Message add column snippet text;"
        //   237: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   240: iload_2        
        //   241: bipush          14
        //   243: if_icmpgt       258
        //   246: aload_1        
        //   247: ldc             "alter table Message_Deletes add column snippet text;"
        //   249: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   252: aload_1        
        //   253: ldc             "alter table Message_Updates add column snippet text;"
        //   255: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   258: iload_2        
        //   259: bipush          15
        //   261: if_icmpgt       276
        //   264: aload_1        
        //   265: ldc             "alter table Attachment add column accountKey integer;"
        //   267: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   270: aload_1        
        //   271: ldc             "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"
        //   273: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   276: iload_2        
        //   277: bipush          16
        //   279: if_icmpgt       288
        //   282: aload_1        
        //   283: ldc             "alter table Mailbox add column parentKey integer;"
        //   285: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   288: iload_2        
        //   289: bipush          17
        //   291: if_icmpgt       298
        //   294: aload_1        
        //   295: invokestatic    com/android/email/provider/f.q:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   298: iload_2        
        //   299: bipush          18
        //   301: if_icmpgt       330
        //   304: aload_1        
        //   305: ldc             "alter table Account add column policyKey integer;"
        //   307: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   310: aload_1        
        //   311: ldc             "drop trigger account_delete;"
        //   313: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   316: aload_1        
        //   317: ldc             "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"
        //   319: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   322: aload_1        
        //   323: invokestatic    com/android/email/provider/f.f:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   326: aload_1        
        //   327: invokestatic    com/android/email/provider/f.p:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   330: iload_2        
        //   331: bipush          19
        //   333: if_icmpgt       396
        //   336: aload_1        
        //   337: ldc             "alter table Policy add column requireManualSyncRoaming integer;"
        //   339: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   342: aload_1        
        //   343: ldc             "alter table Policy add column dontAllowCamera integer;"
        //   345: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   348: aload_1        
        //   349: ldc             "alter table Policy add column dontAllowAttachments integer;"
        //   351: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   354: aload_1        
        //   355: ldc             "alter table Policy add column dontAllowHtml integer;"
        //   357: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   360: aload_1        
        //   361: ldc             "alter table Policy add column maxAttachmentSize integer;"
        //   363: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   366: aload_1        
        //   367: ldc             "alter table Policy add column maxTextTruncationSize integer;"
        //   369: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   372: aload_1        
        //   373: ldc             "alter table Policy add column maxHTMLTruncationSize integer;"
        //   375: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   378: aload_1        
        //   379: ldc             "alter table Policy add column maxEmailLookback integer;"
        //   381: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   384: aload_1        
        //   385: ldc             "alter table Policy add column maxCalendarLookback integer;"
        //   387: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   390: aload_1        
        //   391: ldc             "alter table Policy add column passwordRecoveryEnabled integer;"
        //   393: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   396: iload_2        
        //   397: bipush          21
        //   399: if_icmpgt       413
        //   402: aload_1        
        //   403: aload_0        
        //   404: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //   407: invokestatic    com/android/email/provider/f.a:(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
        //   410: bipush          22
        //   412: istore_2       
        //   413: iload_2        
        //   414: bipush          22
        //   416: if_icmpgt       423
        //   419: aload_1        
        //   420: invokestatic    com/android/email/provider/f.w:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   423: iload_2        
        //   424: bipush          23
        //   426: if_icmpgt       433
        //   429: aload_1        
        //   430: invokestatic    com/android/email/provider/f.x:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   433: iload_2        
        //   434: bipush          24
        //   436: if_icmpgt       443
        //   439: aload_1        
        //   440: invokestatic    com/android/email/provider/f.y:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   443: iload_2        
        //   444: bipush          25
        //   446: if_icmpgt       453
        //   449: aload_1        
        //   450: invokestatic    com/android/email/provider/f.z:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   453: iload_2        
        //   454: bipush          26
        //   456: if_icmpgt       477
        //   459: aload_1        
        //   460: ldc             "alter table Message add column protocolSearchInfo text;"
        //   462: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   465: aload_1        
        //   466: ldc             "alter table Message_Deletes add column protocolSearchInfo text;"
        //   468: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   471: aload_1        
        //   472: ldc             "alter table Message_Updates add column protocolSearchInfo text;"
        //   474: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   477: iload_2        
        //   478: bipush          28
        //   480: if_icmpgt       495
        //   483: aload_1        
        //   484: ldc             "alter table Policy add column protocolPoliciesEnforced text;"
        //   486: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   489: aload_1        
        //   490: ldc             "alter table Policy add column protocolPoliciesUnsupported text;"
        //   492: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   495: iload_2        
        //   496: bipush          29
        //   498: if_icmpgt       505
        //   501: aload_1        
        //   502: invokestatic    com/android/email/provider/f.A:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   505: iload_2        
        //   506: bipush          30
        //   508: if_icmpgt       523
        //   511: aload_1        
        //   512: ldc             "alter table Mailbox add column uiSyncStatus integer;"
        //   514: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   517: aload_1        
        //   518: ldc             "alter table Mailbox add column uiLastSyncResult integer;"
        //   520: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   523: iload_2        
        //   524: bipush          31
        //   526: if_icmpgt       553
        //   529: aload_1        
        //   530: ldc             "alter table Mailbox add column lastNotifiedMessageKey integer;"
        //   532: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   535: aload_1        
        //   536: ldc             "alter table Mailbox add column lastNotifiedMessageCount integer;"
        //   538: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   541: aload_1        
        //   542: ldc             "update Mailbox set lastNotifiedMessageKey=0 where lastNotifiedMessageKey IS NULL"
        //   544: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   547: aload_1        
        //   548: ldc             "update Mailbox set lastNotifiedMessageCount=0 where lastNotifiedMessageCount IS NULL"
        //   550: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   553: iload_2        
        //   554: bipush          32
        //   556: if_icmpgt       583
        //   559: aload_1        
        //   560: ldc             "alter table Attachment add column uiState integer;"
        //   562: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   565: aload_1        
        //   566: ldc             "alter table Attachment add column uiDestination integer;"
        //   568: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   571: aload_1        
        //   572: ldc             "alter table Attachment add column uiDownloadedSize integer;"
        //   574: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   577: aload_1        
        //   578: ldc             "update Attachment set uiState=3 where contentUri is not null;"
        //   580: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   583: iload_2        
        //   584: bipush          33
        //   586: if_icmpgt       595
        //   589: aload_1        
        //   590: ldc             "alter table Mailbox add column totalCount integer;"
        //   592: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   595: iload_2        
        //   596: bipush          34
        //   598: if_icmpgt       613
        //   601: aload_1        
        //   602: ldc             "update Mailbox set lastTouchedTime = 2 WHERE type = 3"
        //   604: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   607: aload_1        
        //   608: ldc             "update Mailbox set lastTouchedTime = 1 WHERE type = 5"
        //   610: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   613: iload_2        
        //   614: bipush          36
        //   616: if_icmpgt       625
        //   619: aload_1        
        //   620: ldc             "update Mailbox set flags=flags|64 where (flags&8)!=0 and accountKey IN (SELECT Account._id from Account,HostAuth where Account.hostAuthKeyRecv=HostAuth._id and protocol='eas')"
        //   622: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   625: iload_2        
        //   626: bipush          37
        //   628: if_icmpgt       637
        //   631: aload_1        
        //   632: ldc             "alter table Message add column threadTopic text;"
        //   634: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   637: iload_2        
        //   638: bipush          38
        //   640: if_icmpgt       655
        //   643: aload_1        
        //   644: ldc             "alter table Message_Deletes add column threadTopic text;"
        //   646: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   649: aload_1        
        //   650: ldc             "alter table Message_Updates add column threadTopic text;"
        //   652: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   655: iload_2        
        //   656: bipush          39
        //   658: if_icmpgt       665
        //   661: aload_1        
        //   662: invokestatic    com/android/email/provider/f.B:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   665: iload_2        
        //   666: bipush          102
        //   668: if_icmpgt       678
        //   671: aload_1        
        //   672: ldc_w           "alter table Mailbox add hierarchicalName text"
        //   675: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   678: iload_2        
        //   679: bipush          103
        //   681: if_icmpgt       691
        //   684: aload_1        
        //   685: ldc_w           "alter table Message add syncData text"
        //   688: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   691: iload_2        
        //   692: bipush          104
        //   694: if_icmpgt       711
        //   697: aload_1        
        //   698: ldc_w           "alter table Message_Updates add syncData text"
        //   701: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   704: aload_1        
        //   705: ldc_w           "alter table Message_Deletes add syncData text"
        //   708: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   711: iload_2        
        //   712: bipush          105
        //   714: if_icmpgt       724
        //   717: aload_1        
        //   718: ldc_w           "alter table HostAuth add serverCert blob"
        //   721: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   724: iload_2        
        //   725: bipush          106
        //   727: if_icmpgt       751
        //   730: aload_1        
        //   731: ldc_w           "alter table Message add flagSeen integer"
        //   734: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   737: aload_1        
        //   738: ldc_w           "alter table Message_Updates add flagSeen integer"
        //   741: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   744: aload_1        
        //   745: ldc_w           "alter table Message_Deletes add flagSeen integer"
        //   748: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   751: iload_2        
        //   752: bipush          107
        //   754: if_icmpgt       764
        //   757: aload_1        
        //   758: ldc_w           "alter table Attachment add column cachedFile text;"
        //   761: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   764: iload_2        
        //   765: bipush          108
        //   767: if_icmpgt       778
        //   770: aload_1        
        //   771: aload_0        
        //   772: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //   775: invokestatic    com/android/email/provider/f.c:(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
        //   778: iload_2        
        //   779: bipush          109
        //   781: if_icmpgt       805
        //   784: aload_1        
        //   785: ldc_w           "update Mailbox set syncInterval=-2 where syncInterval<-2"
        //   788: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   791: aload_1        
        //   792: ldc_w           "update Account set syncLookback=3 where syncLookback is null or syncLookback<1 or syncLookback>6"
        //   795: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   798: aload_1        
        //   799: ldc_w           "update Mailbox set syncLookback=0 where syncLookback is null or syncLookback<1 or syncLookback>6"
        //   802: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   805: iload_2        
        //   806: bipush          110
        //   808: if_icmpgt       818
        //   811: aload_1        
        //   812: ldc_w           "delete from Mailbox where type=68"
        //   815: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   818: iload_2        
        //   819: bipush          111
        //   821: if_icmpgt       831
        //   824: aload_1        
        //   825: ldc_w           "update Mailbox set syncInterval=case when syncInterval=-1 then 0 else 1 end"
        //   828: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   831: iload_2        
        //   832: bipush          110
        //   834: if_icmplt       851
        //   837: iload_2        
        //   838: bipush          112
        //   840: if_icmpgt       851
        //   843: aload_1        
        //   844: invokestatic    com/android/email/provider/f.o:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   847: aload_1        
        //   848: invokestatic    com/android/email/provider/f.a:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   851: iload_2        
        //   852: bipush          113
        //   854: if_icmpgt       898
        //   857: aload_1        
        //   858: ldc_w           "alter table Mailbox add column lastFullSyncTime integer;"
        //   861: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   864: new             Landroid/content/ContentValues;
        //   867: dup            
        //   868: iconst_1       
        //   869: invokespecial   android/content/ContentValues.<init>:(I)V
        //   872: astore          14
        //   874: aload           14
        //   876: ldc_w           "lastFullSyncTime"
        //   879: iconst_0       
        //   880: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   883: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   886: aload_1        
        //   887: ldc_w           "Mailbox"
        //   890: aload           14
        //   892: aconst_null    
        //   893: aconst_null    
        //   894: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   897: pop            
        //   898: iload_2        
        //   899: bipush          114
        //   901: if_icmpgt       945
        //   904: aload_1        
        //   905: ldc_w           "alter table Account add column pingDuration integer;"
        //   908: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   911: new             Landroid/content/ContentValues;
        //   914: dup            
        //   915: iconst_1       
        //   916: invokespecial   android/content/ContentValues.<init>:(I)V
        //   919: astore          10
        //   921: aload           10
        //   923: ldc_w           "pingDuration"
        //   926: iconst_0       
        //   927: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   930: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   933: aload_1        
        //   934: ldc_w           "Account"
        //   937: aload           10
        //   939: aconst_null    
        //   940: aconst_null    
        //   941: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   944: pop            
        //   945: iload_2        
        //   946: bipush          115
        //   948: if_icmpgt       959
        //   951: aload_1        
        //   952: invokestatic    com/android/email/provider/f.u:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   955: aload_1        
        //   956: invokestatic    com/android/email/provider/f.v:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   959: iload_2        
        //   960: bipush          117
        //   962: if_icmpgt       1032
        //   965: aload_1        
        //   966: new             Ljava/lang/StringBuilder;
        //   969: dup            
        //   970: ldc_w           "update Mailbox set syncInterval=0 where accountKey in (select Account._id from Account join HostAuth where HostAuth._id=Account.hostAuthKeyRecv and (HostAuth.protocol='"
        //   973: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   976: aload_0        
        //   977: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //   980: ldc_w           2131296997
        //   983: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //   986: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   989: ldc_w           "' or HostAuth.protocol"
        //   992: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   995: ldc_w           "='"
        //   998: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1001: aload_0        
        //  1002: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //  1005: ldc_w           2131296998
        //  1008: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //  1011: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1014: ldc_w           "' or HostAuth.protocol"
        //  1017: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1020: ldc_w           "='imap'));"
        //  1023: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1026: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1029: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1032: iload_2        
        //  1033: bipush          118
        //  1035: if_icmpgt       1052
        //  1038: aload_1        
        //  1039: ldc_w           "update Mailbox set syncInterval=0 where type=3"
        //  1042: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1045: aload_1        
        //  1046: ldc_w           "delete from Message where (syncServerId not null and syncServerId!='') and mailboxKey in (select _id from Mailbox where type=3)"
        //  1049: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1052: iload_2        
        //  1053: bipush          120
        //  1055: if_icmpgt       1072
        //  1058: aload_1        
        //  1059: ldc_w           "alter table Message add mainMailboxKey integer"
        //  1062: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1065: aload_1        
        //  1066: ldc_w           "delete from Mailbox where type=8"
        //  1069: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1072: iload_2        
        //  1073: bipush          121
        //  1075: if_icmpgt       1092
        //  1078: aload_1        
        //  1079: ldc_w           "alter table Message_Updates add mainMailboxKey integer"
        //  1082: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1085: aload_1        
        //  1086: ldc_w           "alter table Message_Deletes add mainMailboxKey integer"
        //  1089: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1092: iload_2        
        //  1093: bipush          122
        //  1095: if_icmpgt       1116
        //  1098: iload_2        
        //  1099: bipush          117
        //  1101: if_icmplt       1108
        //  1104: aload_1        
        //  1105: invokestatic    com/android/email/provider/f.c:(Landroid/database/sqlite/SQLiteDatabase;)V
        //  1108: aload_0        
        //  1109: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //  1112: aload_1        
        //  1113: invokestatic    com/android/email/provider/f.a:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
        //  1116: iload_2        
        //  1117: bipush          123
        //  1119: if_icmpgt       1163
        //  1122: aload_1        
        //  1123: ldc_w           "alter table Account add column maxAttachmentSize integer;"
        //  1126: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1129: new             Landroid/content/ContentValues;
        //  1132: dup            
        //  1133: iconst_1       
        //  1134: invokespecial   android/content/ContentValues.<init>:(I)V
        //  1137: astore          6
        //  1139: aload           6
        //  1141: ldc_w           "maxAttachmentSize"
        //  1144: iconst_0       
        //  1145: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1148: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1151: aload_1        
        //  1152: ldc_w           "Account"
        //  1155: aload           6
        //  1157: aconst_null    
        //  1158: aconst_null    
        //  1159: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1162: pop            
        //  1163: iload_2        
        //  1164: bipush          124
        //  1166: if_icmpgt       1187
        //  1169: aload_1        
        //  1170: invokestatic    com/android/email/provider/f.b:(Landroid/database/sqlite/SQLiteDatabase;)V
        //  1173: aload_1        
        //  1174: ldc_w           "alter table HostAuth add credentialKey integer"
        //  1177: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1180: aload_1        
        //  1181: ldc_w           "update HostAuth set credentialKey=-1"
        //  1184: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1187: iload_2        
        //  1188: bipush          125
        //  1190: if_icmpgt       1197
        //  1193: aload_1        
        //  1194: invokestatic    com/android/email/provider/f.C:(Landroid/database/sqlite/SQLiteDatabase;)V
        //  1197: iload_2        
        //  1198: bipush          126
        //  1200: if_icmpgt       86
        //  1203: aload_0        
        //  1204: getfield        com/android/email/provider/h.mContext:Landroid/content/Context;
        //  1207: aload_1        
        //  1208: invokestatic    com/android/email/provider/f.e:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
        //  1211: return         
        //  1212: astore          72
        //  1214: ldc             "EmailProvider"
        //  1216: ldc_w           "Exception upgrading EmailProvider.db from v5 to v6"
        //  1219: iconst_1       
        //  1220: anewarray       Ljava/lang/Object;
        //  1223: dup            
        //  1224: iconst_0       
        //  1225: aload           72
        //  1227: aastore        
        //  1228: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1231: pop            
        //  1232: goto            110
        //  1235: astore          70
        //  1237: ldc             "EmailProvider"
        //  1239: new             Ljava/lang/StringBuilder;
        //  1242: dup            
        //  1243: ldc_w           "Exception upgrading EmailProvider.db from 7 to 8 "
        //  1246: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1249: aload           70
        //  1251: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1254: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1257: iconst_0       
        //  1258: anewarray       Ljava/lang/Object;
        //  1261: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1264: pop            
        //  1265: goto            140
        //  1268: astore          68
        //  1270: ldc             "EmailProvider"
        //  1272: new             Ljava/lang/StringBuilder;
        //  1275: dup            
        //  1276: ldc_w           "Exception upgrading EmailProvider.db from 8 to 9 "
        //  1279: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1282: aload           68
        //  1284: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1287: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1290: iconst_0       
        //  1291: anewarray       Ljava/lang/Object;
        //  1294: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1297: pop            
        //  1298: goto            158
        //  1301: astore          66
        //  1303: ldc             "EmailProvider"
        //  1305: new             Ljava/lang/StringBuilder;
        //  1308: dup            
        //  1309: ldc_w           "Exception upgrading EmailProvider.db from 9 to 10 "
        //  1312: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1315: aload           66
        //  1317: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1320: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1323: iconst_0       
        //  1324: anewarray       Ljava/lang/Object;
        //  1327: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1330: pop            
        //  1331: goto            182
        //  1334: astore          64
        //  1336: ldc             "EmailProvider"
        //  1338: new             Ljava/lang/StringBuilder;
        //  1341: dup            
        //  1342: ldc_w           "Exception upgrading EmailProvider.db from 10 to 11 "
        //  1345: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1348: aload           64
        //  1350: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1353: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1356: iconst_0       
        //  1357: anewarray       Ljava/lang/Object;
        //  1360: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1363: pop            
        //  1364: goto            200
        //  1367: astore          62
        //  1369: ldc             "EmailProvider"
        //  1371: new             Ljava/lang/StringBuilder;
        //  1374: dup            
        //  1375: ldc_w           "Exception upgrading EmailProvider.db from 11 to 12 "
        //  1378: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1381: aload           62
        //  1383: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1386: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1389: iconst_0       
        //  1390: anewarray       Ljava/lang/Object;
        //  1393: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1396: pop            
        //  1397: goto            212
        //  1400: astore          60
        //  1402: ldc             "EmailProvider"
        //  1404: new             Ljava/lang/StringBuilder;
        //  1407: dup            
        //  1408: ldc_w           "Exception upgrading EmailProvider.db from 12 to 13 "
        //  1411: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1414: aload           60
        //  1416: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1419: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1422: iconst_0       
        //  1423: anewarray       Ljava/lang/Object;
        //  1426: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1429: pop            
        //  1430: goto            228
        //  1433: astore          58
        //  1435: ldc             "EmailProvider"
        //  1437: new             Ljava/lang/StringBuilder;
        //  1440: dup            
        //  1441: ldc_w           "Exception upgrading EmailProvider.db from 13 to 14 "
        //  1444: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1447: aload           58
        //  1449: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1452: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1455: iconst_0       
        //  1456: anewarray       Ljava/lang/Object;
        //  1459: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1462: pop            
        //  1463: goto            240
        //  1466: astore          56
        //  1468: ldc             "EmailProvider"
        //  1470: new             Ljava/lang/StringBuilder;
        //  1473: dup            
        //  1474: ldc_w           "Exception upgrading EmailProvider.db from 14 to 15 "
        //  1477: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1480: aload           56
        //  1482: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1485: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1488: iconst_0       
        //  1489: anewarray       Ljava/lang/Object;
        //  1492: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1495: pop            
        //  1496: goto            258
        //  1499: astore          54
        //  1501: ldc             "EmailProvider"
        //  1503: new             Ljava/lang/StringBuilder;
        //  1506: dup            
        //  1507: ldc_w           "Exception upgrading EmailProvider.db from 15 to 16 "
        //  1510: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1513: aload           54
        //  1515: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1518: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1521: iconst_0       
        //  1522: anewarray       Ljava/lang/Object;
        //  1525: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1528: pop            
        //  1529: goto            276
        //  1532: astore          52
        //  1534: ldc             "EmailProvider"
        //  1536: new             Ljava/lang/StringBuilder;
        //  1539: dup            
        //  1540: ldc_w           "Exception upgrading EmailProvider.db from 16 to 17 "
        //  1543: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1546: aload           52
        //  1548: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1551: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1554: iconst_0       
        //  1555: anewarray       Ljava/lang/Object;
        //  1558: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1561: pop            
        //  1562: goto            288
        //  1565: astore          50
        //  1567: ldc             "EmailProvider"
        //  1569: new             Ljava/lang/StringBuilder;
        //  1572: dup            
        //  1573: ldc_w           "Exception upgrading EmailProvider.db from 18 to 19 "
        //  1576: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1579: aload           50
        //  1581: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1584: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1587: iconst_0       
        //  1588: anewarray       Ljava/lang/Object;
        //  1591: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1594: pop            
        //  1595: goto            330
        //  1598: astore          48
        //  1600: ldc             "EmailProvider"
        //  1602: new             Ljava/lang/StringBuilder;
        //  1605: dup            
        //  1606: ldc_w           "Exception upgrading EmailProvider.db from 19 to 20 "
        //  1609: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1612: aload           48
        //  1614: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1617: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1620: iconst_0       
        //  1621: anewarray       Ljava/lang/Object;
        //  1624: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1627: pop            
        //  1628: goto            396
        //  1631: astore          46
        //  1633: ldc             "EmailProvider"
        //  1635: new             Ljava/lang/StringBuilder;
        //  1638: dup            
        //  1639: ldc_w           "Exception upgrading EmailProvider.db from 26 to 27 "
        //  1642: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1645: aload           46
        //  1647: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1650: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1653: iconst_0       
        //  1654: anewarray       Ljava/lang/Object;
        //  1657: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1660: pop            
        //  1661: goto            477
        //  1664: astore          44
        //  1666: ldc             "EmailProvider"
        //  1668: new             Ljava/lang/StringBuilder;
        //  1671: dup            
        //  1672: ldc_w           "Exception upgrading EmailProvider.db from 28 to 29 "
        //  1675: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1678: aload           44
        //  1680: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1683: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1686: iconst_0       
        //  1687: anewarray       Ljava/lang/Object;
        //  1690: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1693: pop            
        //  1694: goto            495
        //  1697: astore          42
        //  1699: ldc             "EmailProvider"
        //  1701: new             Ljava/lang/StringBuilder;
        //  1704: dup            
        //  1705: ldc_w           "Exception upgrading EmailProvider.db from 30 to 31 "
        //  1708: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1711: aload           42
        //  1713: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1716: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1719: iconst_0       
        //  1720: anewarray       Ljava/lang/Object;
        //  1723: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1726: pop            
        //  1727: goto            523
        //  1730: astore          40
        //  1732: ldc             "EmailProvider"
        //  1734: new             Ljava/lang/StringBuilder;
        //  1737: dup            
        //  1738: ldc_w           "Exception upgrading EmailProvider.db from 31 to 32 "
        //  1741: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1744: aload           40
        //  1746: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1749: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1752: iconst_0       
        //  1753: anewarray       Ljava/lang/Object;
        //  1756: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1759: pop            
        //  1760: goto            553
        //  1763: astore          38
        //  1765: ldc             "EmailProvider"
        //  1767: new             Ljava/lang/StringBuilder;
        //  1770: dup            
        //  1771: ldc_w           "Exception upgrading EmailProvider.db from 32 to 33 "
        //  1774: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1777: aload           38
        //  1779: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1782: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1785: iconst_0       
        //  1786: anewarray       Ljava/lang/Object;
        //  1789: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1792: pop            
        //  1793: goto            583
        //  1796: astore          36
        //  1798: ldc             "EmailProvider"
        //  1800: new             Ljava/lang/StringBuilder;
        //  1803: dup            
        //  1804: ldc_w           "Exception upgrading EmailProvider.db from 33 to 34 "
        //  1807: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1810: aload           36
        //  1812: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1815: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1818: iconst_0       
        //  1819: anewarray       Ljava/lang/Object;
        //  1822: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1825: pop            
        //  1826: goto            595
        //  1829: astore          34
        //  1831: ldc             "EmailProvider"
        //  1833: new             Ljava/lang/StringBuilder;
        //  1836: dup            
        //  1837: ldc_w           "Exception upgrading EmailProvider.db from 34 to 35 "
        //  1840: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1843: aload           34
        //  1845: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1848: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1851: iconst_0       
        //  1852: anewarray       Ljava/lang/Object;
        //  1855: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1858: pop            
        //  1859: goto            613
        //  1862: astore          32
        //  1864: ldc             "EmailProvider"
        //  1866: new             Ljava/lang/StringBuilder;
        //  1869: dup            
        //  1870: ldc_w           "Exception upgrading EmailProvider.db from 35 to 36 "
        //  1873: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1876: aload           32
        //  1878: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1881: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1884: iconst_0       
        //  1885: anewarray       Ljava/lang/Object;
        //  1888: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1891: pop            
        //  1892: goto            625
        //  1895: astore          30
        //  1897: ldc             "EmailProvider"
        //  1899: new             Ljava/lang/StringBuilder;
        //  1902: dup            
        //  1903: ldc_w           "Exception upgrading EmailProvider.db from 37 to 38 "
        //  1906: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1909: aload           30
        //  1911: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1914: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1917: iconst_0       
        //  1918: anewarray       Ljava/lang/Object;
        //  1921: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1924: pop            
        //  1925: goto            637
        //  1928: astore          28
        //  1930: ldc             "EmailProvider"
        //  1932: new             Ljava/lang/StringBuilder;
        //  1935: dup            
        //  1936: ldc_w           "Exception upgrading EmailProvider.db from 38 to 39 "
        //  1939: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1942: aload           28
        //  1944: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1947: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1950: iconst_0       
        //  1951: anewarray       Ljava/lang/Object;
        //  1954: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1957: pop            
        //  1958: goto            655
        //  1961: astore          26
        //  1963: ldc             "EmailProvider"
        //  1965: ldc_w           "Exception upgrading EmailProvider.db from v10x to v103"
        //  1968: iconst_1       
        //  1969: anewarray       Ljava/lang/Object;
        //  1972: dup            
        //  1973: iconst_0       
        //  1974: aload           26
        //  1976: aastore        
        //  1977: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1980: pop            
        //  1981: goto            678
        //  1984: astore          24
        //  1986: ldc             "EmailProvider"
        //  1988: ldc_w           "Exception upgrading EmailProvider.db from v103 to v104"
        //  1991: iconst_1       
        //  1992: anewarray       Ljava/lang/Object;
        //  1995: dup            
        //  1996: iconst_0       
        //  1997: aload           24
        //  1999: aastore        
        //  2000: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2003: pop            
        //  2004: goto            691
        //  2007: astore          22
        //  2009: ldc             "EmailProvider"
        //  2011: ldc_w           "Exception upgrading EmailProvider.db from v104 to v105"
        //  2014: iconst_1       
        //  2015: anewarray       Ljava/lang/Object;
        //  2018: dup            
        //  2019: iconst_0       
        //  2020: aload           22
        //  2022: aastore        
        //  2023: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2026: pop            
        //  2027: goto            711
        //  2030: astore          20
        //  2032: ldc             "EmailProvider"
        //  2034: ldc_w           "Exception upgrading EmailProvider.db from v105 to v106"
        //  2037: iconst_1       
        //  2038: anewarray       Ljava/lang/Object;
        //  2041: dup            
        //  2042: iconst_0       
        //  2043: aload           20
        //  2045: aastore        
        //  2046: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2049: pop            
        //  2050: goto            724
        //  2053: astore          18
        //  2055: ldc             "EmailProvider"
        //  2057: ldc_w           "Exception upgrading EmailProvider.db from v106 to v107"
        //  2060: iconst_1       
        //  2061: anewarray       Ljava/lang/Object;
        //  2064: dup            
        //  2065: iconst_0       
        //  2066: aload           18
        //  2068: aastore        
        //  2069: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2072: pop            
        //  2073: goto            751
        //  2076: astore          16
        //  2078: ldc             "EmailProvider"
        //  2080: ldc_w           "Exception upgrading EmailProvider.db from v107 to v108"
        //  2083: iconst_1       
        //  2084: anewarray       Ljava/lang/Object;
        //  2087: dup            
        //  2088: iconst_0       
        //  2089: aload           16
        //  2091: aastore        
        //  2092: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2095: pop            
        //  2096: goto            764
        //  2099: astore          12
        //  2101: ldc             "EmailProvider"
        //  2103: ldc_w           "Exception upgrading EmailProvider.db from v113 to v114"
        //  2106: iconst_1       
        //  2107: anewarray       Ljava/lang/Object;
        //  2110: dup            
        //  2111: iconst_0       
        //  2112: aload           12
        //  2114: aastore        
        //  2115: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2118: pop            
        //  2119: goto            898
        //  2122: astore          8
        //  2124: ldc             "EmailProvider"
        //  2126: ldc_w           "Exception upgrading EmailProvider.db from v113 to v114"
        //  2129: iconst_1       
        //  2130: anewarray       Ljava/lang/Object;
        //  2133: dup            
        //  2134: iconst_0       
        //  2135: aload           8
        //  2137: aastore        
        //  2138: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2141: pop            
        //  2142: goto            945
        //  2145: astore          4
        //  2147: ldc             "EmailProvider"
        //  2149: ldc_w           "Exception upgrading EmailProvider.db from v123 to v124"
        //  2152: iconst_1       
        //  2153: anewarray       Ljava/lang/Object;
        //  2156: dup            
        //  2157: iconst_0       
        //  2158: aload           4
        //  2160: aastore        
        //  2161: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2164: pop            
        //  2165: goto            1163
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  92     110    1212   1235   Landroid/database/SQLException;
        //  134    140    1235   1268   Landroid/database/SQLException;
        //  146    158    1268   1301   Landroid/database/SQLException;
        //  164    182    1301   1334   Landroid/database/SQLException;
        //  188    200    1334   1367   Landroid/database/SQLException;
        //  206    212    1367   1400   Landroid/database/SQLException;
        //  218    228    1400   1433   Landroid/database/SQLException;
        //  234    240    1433   1466   Landroid/database/SQLException;
        //  246    258    1466   1499   Landroid/database/SQLException;
        //  264    276    1499   1532   Landroid/database/SQLException;
        //  282    288    1532   1565   Landroid/database/SQLException;
        //  304    330    1565   1598   Landroid/database/SQLException;
        //  336    396    1598   1631   Landroid/database/SQLException;
        //  459    477    1631   1664   Landroid/database/SQLException;
        //  483    495    1664   1697   Landroid/database/SQLException;
        //  511    523    1697   1730   Landroid/database/SQLException;
        //  529    553    1730   1763   Landroid/database/SQLException;
        //  559    583    1763   1796   Landroid/database/SQLException;
        //  589    595    1796   1829   Landroid/database/SQLException;
        //  601    613    1829   1862   Landroid/database/SQLException;
        //  619    625    1862   1895   Landroid/database/SQLException;
        //  631    637    1895   1928   Landroid/database/SQLException;
        //  643    655    1928   1961   Landroid/database/SQLException;
        //  671    678    1961   1984   Landroid/database/SQLException;
        //  684    691    1984   2007   Landroid/database/SQLException;
        //  697    711    2007   2030   Landroid/database/SQLException;
        //  717    724    2030   2053   Landroid/database/SQLException;
        //  730    751    2053   2076   Landroid/database/SQLException;
        //  757    764    2076   2099   Landroid/database/SQLException;
        //  857    898    2099   2122   Landroid/database/SQLException;
        //  904    945    2122   2145   Landroid/database/SQLException;
        //  1122   1163   2145   2168   Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 1015, Size: 1015
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
}
