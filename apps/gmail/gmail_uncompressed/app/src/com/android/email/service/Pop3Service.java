package com.android.email.service;

import android.app.*;
import com.android.emailcommon.provider.*;
import android.net.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.email.*;
import java.util.*;
import com.android.email.mail.store.*;
import com.android.email.provider.*;
import com.android.emailcommon.mail.*;
import java.io.*;
import android.content.*;
import android.os.*;

public class Pop3Service extends Service
{
    private final l Vm;
    
    public Pop3Service() {
        this.Vm = new A(this);
    }
    
    public static int a(final Context context, final Account account, final Mailbox mailbox, final int n) {
        TrafficStats.setThreadStatsTag(f.l(account));
        final m r = o.r(context);
        try {
            b(context, account, mailbox, n);
            if (r != null) {
                r.f(account.Ln);
            }
            return 0;
        }
        catch (MessagingException ex) {
            if (b.LOGD) {
                E.b(b.mW, "synchronizeMailbox", ex);
            }
            if (ex instanceof AuthenticationFailedException && r != null) {
                r.a(account.Ln, true);
            }
            throw ex;
        }
    }
    
    private static void a(final Context context, final Account account, final e e, final ArrayList<g> list, final Mailbox mailbox) {
        if (com.android.email.b.DEBUG) {
            E.c("Pop3Service", "Loading " + list.size() + " unsynced messages", new Object[0]);
        }
        while (true) {
            while (true) {
                Label_0178: {
                    try {
                        for (int size = list.size(), i = 0; i < size; ++i) {
                            final g g = list.get(i);
                            e.a(g, 1684, null);
                            if (g.isComplete()) {
                                break Label_0178;
                            }
                            final int n = 2;
                            if (com.android.email.b.DEBUG) {
                                final StringBuilder sb = new StringBuilder("Message is ");
                                String s;
                                if (g.isComplete()) {
                                    s = "";
                                }
                                else {
                                    s = "NOT ";
                                }
                                E.c("Pop3Service", sb.append(s).append("complete").toString(), new Object[0]);
                            }
                            H.a(context, g, account, mailbox, n);
                        }
                    }
                    catch (IOException ex) {
                        throw new MessagingException(1);
                    }
                    break;
                }
                final int n = 1;
                continue;
            }
        }
    }
    
    private static void b(final Context p0, final Account p1, final Mailbox p2, final int p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/android/email/service/Pop3Service;.class
        //     2: monitorenter   
        //     3: aload_0        
        //     4: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //     7: astore          5
        //     9: aload_2        
        //    10: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //    13: istore          6
        //    15: iload           6
        //    17: ifeq            24
        //    20: ldc             Lcom/android/email/service/Pop3Service;.class
        //    22: monitorexit    
        //    23: return         
        //    24: new             Ljava/util/HashMap;
        //    27: dup            
        //    28: invokespecial   java/util/HashMap.<init>:()V
        //    31: astore          7
        //    33: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //    36: astore          10
        //    38: invokestatic    com/android/email/service/C.kK:()[Ljava/lang/String;
        //    41: astore          11
        //    43: iconst_1       
        //    44: anewarray       Ljava/lang/String;
        //    47: astore          12
        //    49: aload           12
        //    51: iconst_0       
        //    52: aload_2        
        //    53: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //    56: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //    59: aastore        
        //    60: aload           5
        //    62: aload           10
        //    64: aload           11
        //    66: ldc             "mailboxKey=?"
        //    68: aload           12
        //    70: aconst_null    
        //    71: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    74: astore          13
        //    76: aload           13
        //    78: astore          9
        //    80: aload           9
        //    82: invokeinterface android/database/Cursor.moveToNext:()Z
        //    87: ifeq            142
        //    90: new             Lcom/android/email/service/C;
        //    93: dup            
        //    94: aload           9
        //    96: invokespecial   com/android/email/service/C.<init>:(Landroid/database/Cursor;)V
        //    99: astore          14
        //   101: aload           7
        //   103: aload           14
        //   105: getfield        com/android/email/service/C.Vv:Ljava/lang/String;
        //   108: aload           14
        //   110: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   113: pop            
        //   114: goto            80
        //   117: astore          8
        //   119: aload           9
        //   121: ifnull          131
        //   124: aload           9
        //   126: invokeinterface android/database/Cursor.close:()V
        //   131: aload           8
        //   133: athrow         
        //   134: astore          4
        //   136: ldc             Lcom/android/email/service/Pop3Service;.class
        //   138: monitorexit    
        //   139: aload           4
        //   141: athrow         
        //   142: aload           9
        //   144: ifnull          154
        //   147: aload           9
        //   149: invokeinterface android/database/Cursor.close:()V
        //   154: aload_1        
        //   155: aload_0        
        //   156: invokestatic    com/android/email/mail/b.a:(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
        //   159: checkcast       Lcom/android/email/mail/store/Pop3Store;
        //   162: astore          16
        //   164: aload           16
        //   166: ifnull          20
        //   169: aload           16
        //   171: aload_2        
        //   172: getfield        com/android/emailcommon/provider/Mailbox.Vv:Ljava/lang/String;
        //   175: invokevirtual   com/android/email/mail/store/Pop3Store.y:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
        //   178: checkcast       Lcom/android/email/mail/store/e;
        //   181: astore          17
        //   183: aload           17
        //   185: getstatic       com/android/emailcommon/mail/Folder$OpenMode.Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;
        //   188: invokevirtual   com/android/email/mail/store/e.a:(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
        //   191: iconst_1       
        //   192: anewarray       Ljava/lang/String;
        //   195: astore          18
        //   197: aload           18
        //   199: iconst_0       
        //   200: aload_1        
        //   201: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   204: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   207: aastore        
        //   208: aload_0        
        //   209: aload_1        
        //   210: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   213: bipush          6
        //   215: invokestatic    com/android/emailcommon/provider/Mailbox.c:(Landroid/content/Context;JI)J
        //   218: lstore          19
        //   220: aload           5
        //   222: getstatic       com/android/emailcommon/provider/g.YF:Landroid/net/Uri;
        //   225: getstatic       com/android/emailcommon/provider/g.YI:[Ljava/lang/String;
        //   228: ldc             "accountKey=?"
        //   230: aload           18
        //   232: aconst_null    
        //   233: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   236: astore          21
        //   238: aload           21
        //   240: invokeinterface android/database/Cursor.moveToNext:()Z
        //   245: ifeq            341
        //   248: aload           21
        //   250: iconst_0       
        //   251: invokeinterface android/database/Cursor.getLong:(I)J
        //   256: lstore          74
        //   258: aload_0        
        //   259: lload           74
        //   261: invokestatic    com/android/emailcommon/provider/g.t:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
        //   264: astore          76
        //   266: aload           76
        //   268: getfield        com/android/emailcommon/provider/g.YR:J
        //   271: lload           19
        //   273: lcmp           
        //   274: ifne            304
        //   277: aload           17
        //   279: aload           76
        //   281: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   284: invokevirtual   com/android/email/mail/store/e.A:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
        //   287: checkcast       Lcom/android/email/mail/store/g;
        //   290: astore          79
        //   292: aload           79
        //   294: ifnull          304
        //   297: aload           17
        //   299: aload           79
        //   301: invokevirtual   com/android/email/mail/store/e.a:(Lcom/android/emailcommon/mail/Message;)V
        //   304: getstatic       com/android/emailcommon/provider/g.YF:Landroid/net/Uri;
        //   307: lload           74
        //   309: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   312: astore          77
        //   314: aload_0        
        //   315: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   318: aload           77
        //   320: aconst_null    
        //   321: aconst_null    
        //   322: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   325: pop            
        //   326: goto            238
        //   329: astore          22
        //   331: aload           21
        //   333: invokeinterface android/database/Cursor.close:()V
        //   338: aload           22
        //   340: athrow         
        //   341: aload           21
        //   343: invokeinterface android/database/Cursor.close:()V
        //   348: aload           17
        //   350: invokevirtual   com/android/email/mail/store/e.ja:()I
        //   353: istore          23
        //   355: aload_2        
        //   356: aload_0        
        //   357: iload           23
        //   359: invokevirtual   com/android/emailcommon/provider/Mailbox.g:(Landroid/content/Context;I)V
        //   362: new             Ljava/util/ArrayList;
        //   365: dup            
        //   366: invokespecial   java/util/ArrayList.<init>:()V
        //   369: astore          24
        //   371: new             Ljava/util/HashMap;
        //   374: dup            
        //   375: invokespecial   java/util/HashMap.<init>:()V
        //   378: astore          25
        //   380: iload           23
        //   382: ifle            875
        //   385: aload           17
        //   387: iload           23
        //   389: iload           23
        //   391: invokevirtual   com/android/email/mail/store/e.C:(II)[Lcom/android/email/mail/store/g;
        //   394: astore          26
        //   396: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   399: new             Ljava/lang/StringBuilder;
        //   402: dup            
        //   403: ldc_w           "remoteMessageCount "
        //   406: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   409: iload           23
        //   411: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   414: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   417: iconst_0       
        //   418: anewarray       Ljava/lang/Object;
        //   421: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   424: pop            
        //   425: iconst_0       
        //   426: istore          28
        //   428: bipush          100
        //   430: istore          29
        //   432: aload           26
        //   434: arraylength    
        //   435: istore          30
        //   437: iconst_0       
        //   438: istore          31
        //   440: iload           31
        //   442: iload           30
        //   444: if_icmpge       473
        //   447: aload           26
        //   449: iload           31
        //   451: aaload         
        //   452: astore          32
        //   454: aload           25
        //   456: aload           32
        //   458: invokevirtual   com/android/email/mail/store/g.ln:()Ljava/lang/String;
        //   461: aload           32
        //   463: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   466: pop            
        //   467: iinc            31, 1
        //   470: goto            440
        //   473: aload           26
        //   475: arraylength    
        //   476: istore          34
        //   478: iconst_0       
        //   479: istore          35
        //   481: iload           35
        //   483: iload           34
        //   485: if_icmpge       624
        //   488: aload           26
        //   490: iload           35
        //   492: aaload         
        //   493: astore          36
        //   495: aload           36
        //   497: invokevirtual   com/android/email/mail/store/g.ln:()Ljava/lang/String;
        //   500: astore          37
        //   502: aload           7
        //   504: aload           37
        //   506: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   509: checkcast       Lcom/android/email/service/C;
        //   512: astore          38
        //   514: aload           38
        //   516: ifnonnull       792
        //   519: iinc            28, 1
        //   522: aload           38
        //   524: ifnull          545
        //   527: aload           38
        //   529: getfield        com/android/email/service/C.Vu:I
        //   532: iconst_1       
        //   533: if_icmpeq       835
        //   536: aload           38
        //   538: getfield        com/android/email/service/C.Vu:I
        //   541: iconst_2       
        //   542: if_icmpeq       835
        //   545: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   548: new             Ljava/lang/StringBuilder;
        //   551: dup            
        //   552: ldc_w           "need to sync "
        //   555: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   558: aload           37
        //   560: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   563: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   566: iconst_0       
        //   567: anewarray       Ljava/lang/Object;
        //   570: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   573: pop            
        //   574: aload           24
        //   576: aload           36
        //   578: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   581: pop            
        //   582: iload           28
        //   584: iload           29
        //   586: if_icmplt       1299
        //   589: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   592: new             Ljava/lang/StringBuilder;
        //   595: dup            
        //   596: ldc_w           "loaded "
        //   599: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   602: iload           28
        //   604: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   607: ldc_w           " messages, stopping"
        //   610: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   613: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   616: iconst_0       
        //   617: anewarray       Ljava/lang/Object;
        //   620: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   623: pop            
        //   624: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.CONTENT_URI:Landroid/net/Uri;
        //   627: astore          44
        //   629: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.XO:[Ljava/lang/String;
        //   632: astore          45
        //   634: iconst_1       
        //   635: anewarray       Ljava/lang/String;
        //   638: astore          46
        //   640: aload           46
        //   642: iconst_0       
        //   643: aload_1        
        //   644: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   647: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   650: aastore        
        //   651: aload           5
        //   653: aload           44
        //   655: aload           45
        //   657: ldc_w           "accountKey=? AND uiState=2"
        //   660: aload           46
        //   662: aconst_null    
        //   663: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   666: astore          47
        //   668: new             Landroid/content/ContentValues;
        //   671: dup            
        //   672: invokespecial   android/content/ContentValues.<init>:()V
        //   675: astore          48
        //   677: aload           47
        //   679: invokeinterface android/database/Cursor.moveToNext:()Z
        //   684: ifeq            1067
        //   687: aload           48
        //   689: ldc_w           "uiState"
        //   692: iconst_3       
        //   693: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   696: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   699: new             Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //   702: dup            
        //   703: invokespecial   com/android/emailcommon/provider/EmailContent$Attachment.<init>:()V
        //   706: astore          60
        //   708: aload           60
        //   710: aload           47
        //   712: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.b:(Landroid/database/Cursor;)V
        //   715: aload_0        
        //   716: aload           60
        //   718: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //   721: invokestatic    com/android/emailcommon/provider/g.t:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
        //   724: astore          61
        //   726: aload           61
        //   728: ifnull          740
        //   731: aload           61
        //   733: getfield        com/android/emailcommon/provider/g.Vu:I
        //   736: iconst_1       
        //   737: if_icmpne       902
        //   740: aload           48
        //   742: ldc_w           "uiDownloadedSize"
        //   745: aload           60
        //   747: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Lo:J
        //   750: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   753: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   756: aload           5
        //   758: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.CONTENT_URI:Landroid/net/Uri;
        //   761: aload           60
        //   763: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ln:J
        //   766: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   769: aload           48
        //   771: aconst_null    
        //   772: aconst_null    
        //   773: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   776: pop            
        //   777: goto            677
        //   780: astore          49
        //   782: aload           47
        //   784: invokeinterface android/database/Cursor.close:()V
        //   789: aload           49
        //   791: athrow         
        //   792: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   795: new             Ljava/lang/StringBuilder;
        //   798: dup            
        //   799: ldc_w           "found a local message, need "
        //   802: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   805: iload_3        
        //   806: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   809: ldc_w           " more remote messages"
        //   812: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   815: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   818: iconst_0       
        //   819: anewarray       Ljava/lang/Object;
        //   822: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   825: pop            
        //   826: iload_3        
        //   827: istore          29
        //   829: iconst_0       
        //   830: istore          28
        //   832: goto            522
        //   835: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   838: astore          40
        //   840: new             Ljava/lang/StringBuilder;
        //   843: dup            
        //   844: ldc_w           "don't need to sync "
        //   847: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   850: astore          41
        //   852: aload           40
        //   854: aload           41
        //   856: aload           37
        //   858: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   861: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   864: iconst_0       
        //   865: anewarray       Ljava/lang/Object;
        //   868: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   871: pop            
        //   872: goto            582
        //   875: getstatic       com/android/email/b.DEBUG:Z
        //   878: ifeq            894
        //   881: ldc             "Pop3Service"
        //   883: ldc_w           "*** Message count is zero??"
        //   886: iconst_0       
        //   887: anewarray       Ljava/lang/Object;
        //   890: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   893: pop            
        //   894: aload           17
        //   896: invokevirtual   com/android/email/mail/store/e.iY:()V
        //   899: goto            20
        //   902: aload           61
        //   904: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   907: astore          63
        //   909: aload           25
        //   911: aload           63
        //   913: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   916: checkcast       Lcom/android/email/mail/store/g;
        //   919: astore          64
        //   921: aload           64
        //   923: ifnull          1036
        //   926: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.CONTENT_URI:Landroid/net/Uri;
        //   929: aload           60
        //   931: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ln:J
        //   934: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   937: astore          65
        //   939: aload           17
        //   941: aload           64
        //   943: iconst_m1      
        //   944: new             Lcom/android/email/service/B;
        //   947: dup            
        //   948: aload           5
        //   950: aload           65
        //   952: invokespecial   com/android/email/service/B.<init>:(Landroid/content/ContentResolver;Landroid/net/Uri;)V
        //   955: invokevirtual   com/android/email/mail/store/e.a:(Lcom/android/email/mail/store/g;ILorg/apache/james/mime4j/e;)V
        //   958: aload           48
        //   960: ldc_w           "uiState"
        //   963: iconst_3       
        //   964: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   967: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   970: aload           5
        //   972: aload           65
        //   974: aload           48
        //   976: aconst_null    
        //   977: aconst_null    
        //   978: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   981: pop            
        //   982: aload           64
        //   984: invokevirtual   com/android/email/mail/store/g.isComplete:()Z
        //   987: ifne            1003
        //   990: ldc             "Pop3Service"
        //   992: ldc_w           "How is this possible?"
        //   995: iconst_0       
        //   996: anewarray       Ljava/lang/Object;
        //   999: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1002: pop            
        //  1003: aload_0        
        //  1004: aload           64
        //  1006: aload_1        
        //  1007: aload_2        
        //  1008: iconst_1       
        //  1009: invokestatic    com/android/email/provider/H.a:(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
        //  1012: aload           5
        //  1014: aload           65
        //  1016: aconst_null    
        //  1017: aconst_null    
        //  1018: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1021: pop            
        //  1022: goto            677
        //  1025: astore          66
        //  1027: new             Lcom/android/emailcommon/mail/MessagingException;
        //  1030: dup            
        //  1031: iconst_1       
        //  1032: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(I)V
        //  1035: athrow         
        //  1036: ldc             "Pop3Service"
        //  1038: new             Ljava/lang/StringBuilder;
        //  1041: dup            
        //  1042: ldc_w           "Could not find message for attachment "
        //  1045: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1048: aload           63
        //  1050: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1053: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1056: iconst_0       
        //  1057: anewarray       Ljava/lang/Object;
        //  1060: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1063: pop            
        //  1064: goto            677
        //  1067: aload           47
        //  1069: invokeinterface android/database/Cursor.close:()V
        //  1074: new             Ljava/util/HashSet;
        //  1077: dup            
        //  1078: aload           7
        //  1080: invokevirtual   java/util/HashMap.keySet:()Ljava/util/Set;
        //  1083: invokespecial   java/util/HashSet.<init>:(Ljava/util/Collection;)V
        //  1086: astore          50
        //  1088: aload           50
        //  1090: aload           25
        //  1092: invokevirtual   java/util/HashMap.keySet:()Ljava/util/Set;
        //  1095: invokevirtual   java/util/HashSet.removeAll:(Ljava/util/Collection;)Z
        //  1098: pop            
        //  1099: aload           50
        //  1101: invokevirtual   java/util/HashSet.iterator:()Ljava/util/Iterator;
        //  1104: astore          52
        //  1106: aload           52
        //  1108: invokeinterface java/util/Iterator.hasNext:()Z
        //  1113: ifeq            1242
        //  1116: aload           52
        //  1118: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //  1123: checkcast       Ljava/lang/String;
        //  1126: astore          54
        //  1128: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //  1131: new             Ljava/lang/StringBuilder;
        //  1134: dup            
        //  1135: ldc_w           "need to delete "
        //  1138: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1141: aload           54
        //  1143: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1146: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1149: iconst_0       
        //  1150: anewarray       Ljava/lang/Object;
        //  1153: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1156: pop            
        //  1157: aload           7
        //  1159: aload           54
        //  1161: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //  1164: checkcast       Lcom/android/email/service/C;
        //  1167: astore          56
        //  1169: aload_0        
        //  1170: aload_1        
        //  1171: getfield        com/android/emailcommon/provider/Account.Ln:J
        //  1174: aload           56
        //  1176: getfield        com/android/email/service/C.Ln:J
        //  1179: invokestatic    com/android/emailcommon/b/a.c:(Landroid/content/Context;JJ)V
        //  1182: aload           5
        //  1184: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //  1187: aload           56
        //  1189: getfield        com/android/email/service/C.Ln:J
        //  1192: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1195: aconst_null    
        //  1196: aconst_null    
        //  1197: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1200: pop            
        //  1201: aload           5
        //  1203: getstatic       com/android/emailcommon/provider/g.YF:Landroid/net/Uri;
        //  1206: aload           56
        //  1208: getfield        com/android/email/service/C.Ln:J
        //  1211: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1214: aconst_null    
        //  1215: aconst_null    
        //  1216: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1219: pop            
        //  1220: aload           5
        //  1222: getstatic       com/android/emailcommon/provider/g.DELETED_CONTENT_URI:Landroid/net/Uri;
        //  1225: aload           56
        //  1227: getfield        com/android/email/service/C.Ln:J
        //  1230: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1233: aconst_null    
        //  1234: aconst_null    
        //  1235: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1238: pop            
        //  1239: goto            1106
        //  1242: ldc             "Pop3Service"
        //  1244: new             Ljava/lang/StringBuilder;
        //  1247: dup            
        //  1248: ldc_w           "loadUnsynchedMessages "
        //  1251: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1254: aload           24
        //  1256: invokevirtual   java/util/ArrayList.size:()I
        //  1259: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1262: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1265: iconst_0       
        //  1266: anewarray       Ljava/lang/Object;
        //  1269: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1272: pop            
        //  1273: aload_0        
        //  1274: aload_1        
        //  1275: aload           17
        //  1277: aload           24
        //  1279: aload_2        
        //  1280: invokestatic    com/android/email/service/Pop3Service.a:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/store/e;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
        //  1283: aload           17
        //  1285: invokevirtual   com/android/email/mail/store/e.iY:()V
        //  1288: goto            20
        //  1291: astore          8
        //  1293: aconst_null    
        //  1294: astore          9
        //  1296: goto            119
        //  1299: iinc            35, 1
        //  1302: goto            481
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      15     134    142    Any
        //  24     33     134    142    Any
        //  33     76     1291   1299   Any
        //  80     114    117    119    Any
        //  124    131    134    142    Any
        //  131    134    134    142    Any
        //  147    154    134    142    Any
        //  154    164    134    142    Any
        //  169    238    134    142    Any
        //  238    292    329    341    Any
        //  297    304    329    341    Any
        //  304    326    329    341    Any
        //  331    341    134    142    Any
        //  341    380    134    142    Any
        //  385    425    134    142    Any
        //  432    437    134    142    Any
        //  447    467    134    142    Any
        //  473    478    134    142    Any
        //  488    514    134    142    Any
        //  527    545    134    142    Any
        //  545    582    134    142    Any
        //  589    624    134    142    Any
        //  624    668    134    142    Any
        //  668    677    780    792    Any
        //  677    726    780    792    Any
        //  731    740    780    792    Any
        //  740    777    780    792    Any
        //  782    792    134    142    Any
        //  792    826    134    142    Any
        //  835    872    134    142    Any
        //  875    894    134    142    Any
        //  894    899    134    142    Any
        //  902    921    780    792    Any
        //  926    939    780    792    Any
        //  939    958    1025   1036   Ljava/io/IOException;
        //  939    958    780    792    Any
        //  958    1003   780    792    Any
        //  1003   1022   780    792    Any
        //  1027   1036   780    792    Any
        //  1036   1064   780    792    Any
        //  1067   1106   134    142    Any
        //  1106   1239   134    142    Any
        //  1242   1288   134    142    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0080:
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
    
    public IBinder onBind(final Intent intent) {
        this.Vm.g((Context)this);
        return (IBinder)this.Vm;
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        return 1;
    }
}
