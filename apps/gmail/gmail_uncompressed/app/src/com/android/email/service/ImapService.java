package com.android.email.service;

import android.app.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.a.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.emailcommon.b.*;
import android.database.*;
import android.net.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.mail.*;
import java.util.*;
import android.content.*;
import android.os.*;

public class ImapService extends Service
{
    private static final Flag[] Ve;
    private static final Flag[] Vf;
    private static final Flag[] Vg;
    private static long Vh;
    private static String Vi;
    private static Mailbox Vj;
    private static final HashMap<Long, y[]> Vk;
    private static String Vl;
    private final l Vm;
    
    static {
        Ve = new Flag[] { Flag.WQ };
        Vf = new Flag[] { Flag.WS };
        Vg = new Flag[] { Flag.WR };
        ImapService.Vh = -1L;
        ImapService.Vi = null;
        ImapService.Vj = null;
        Vk = new HashMap<Long, y[]>();
    }
    
    public ImapService() {
        this.Vm = new q(this);
    }
    
    private static int a(final Context context, final long n, final SearchParams searchParams, final long n2) {
        final Account k = Account.k(context, n);
        final Mailbox v = Mailbox.v(context, searchParams.PJ);
        final Mailbox v2 = Mailbox.v(context, n2);
        if (k == null || v == null || v2 == null) {
            E.c(b.mW, "Attempted search for %s but account or mailbox information was missing", searchParams);
            return 0;
        }
    Label_0260_Outer:
        while (true) {
            final ContentValues contentValues = new ContentValues(2);
            contentValues.put("uiSyncStatus", 2);
            v2.a(context, contentValues);
            while (true) {
                com.android.email.mail.b a;
                Folder y;
                y[] array = null;
                Message[] a2;
                int length;
                int n3;
                Message message;
                int n4;
                y[] array2;
                int length3 = 0;
                int min;
                ArrayList<Message> list;
                FetchProfile fetchProfile;
                Message[] array3;
                Message[] array4;
                int length4;
                int n5 = 0;
                Message message2 = null;
                ArrayList<j> list2;
                com.android.email.mail.b b = null;
                final Throwable t;
                Label_0733:Label_0609_Outer:
                while (true) {
                Label_0609:
                    while (true) {
                        try {
                            while (true) {
                                a = com.android.email.mail.b.a(k, context);
                                Label_0672: {
                                    while (true) {
                                        Label_0655: {
                                            try {
                                                y = a.y(v.Vv);
                                                y.a(Folder$OpenMode.Xg);
                                                array = new y[0];
                                                if (searchParams.gY == 0) {
                                                    a2 = y.a(searchParams);
                                                    length = a2.length;
                                                    if (length > 0) {
                                                        array = new y[length];
                                                        n3 = 0;
                                                        for (int length2 = a2.length, i = 0; i < length2; ++i, n3 = n4) {
                                                            message = a2[i];
                                                            n4 = n3 + 1;
                                                            array[n3] = new y(message, Long.parseLong(message.ln()));
                                                        }
                                                        Arrays.sort(array, new u());
                                                        ImapService.Vk.put(n, array);
                                                        break;
                                                    }
                                                    break;
                                                }
                                                else {
                                                    array2 = ImapService.Vk.get(n);
                                                    if (array2 == null) {
                                                        break Label_0733;
                                                    }
                                                    length3 = array2.length;
                                                    min = Math.min(length3 - searchParams.gY, searchParams.aaL);
                                                    v2.g(context, length3);
                                                    if (min <= 0) {
                                                        if (a != null) {
                                                            a.iM();
                                                        }
                                                        contentValues.put("syncTime", System.currentTimeMillis());
                                                        contentValues.put("uiSyncStatus", 0);
                                                        v2.a(context, contentValues);
                                                        return 0;
                                                    }
                                                    list = new ArrayList<Message>();
                                                    for (int j = searchParams.gY; j < min + searchParams.gY; ++j) {
                                                        list.add(array2[j].Vx);
                                                    }
                                                    fetchProfile = new FetchProfile();
                                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WJ);
                                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WK);
                                                    array3 = list.toArray(new Message[list.size()]);
                                                    y.a(array3, fetchProfile, new v(k, v, n2, context));
                                                    fetchProfile.clear();
                                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WL);
                                                    y.a(array3, fetchProfile, null);
                                                    array4 = new Message[] { null };
                                                    length4 = array3.length;
                                                    n5 = 0;
                                                    if (n5 < length4) {
                                                        message2 = array3[n5];
                                                        list2 = new ArrayList<j>();
                                                        i.a(message2, list2, new ArrayList<j>());
                                                        array4[0] = message2;
                                                        for (final j l : list2) {
                                                            fetchProfile.clear();
                                                            ((ArrayList<FetchProfile$Item>)fetchProfile).add(l);
                                                            y.a(array4, fetchProfile, null);
                                                        }
                                                        break Label_0655;
                                                    }
                                                    break Label_0672;
                                                }
                                            }
                                            finally {
                                                b = a;
                                            }
                                            break Label_0609;
                                        }
                                        H.a(context, message2, k, v2, 1);
                                        ++n5;
                                        continue Label_0609_Outer;
                                    }
                                    if (b != null) {
                                        b.iM();
                                    }
                                    contentValues.put("syncTime", System.currentTimeMillis());
                                    contentValues.put("uiSyncStatus", 0);
                                    v2.a(context, contentValues);
                                    throw t;
                                }
                                if (a != null) {
                                    a.iM();
                                }
                                contentValues.put("syncTime", System.currentTimeMillis());
                                contentValues.put("uiSyncStatus", 0);
                                v2.a(context, contentValues);
                                return length3;
                            }
                        }
                        finally {
                            b = null;
                            continue Label_0609;
                        }
                        break;
                    }
                    array2 = array;
                    continue Label_0260_Outer;
                }
                length3 = 0;
                continue;
            }
        }
    }
    
    public static int a(final Context p0, final Account p1, final Mailbox p2, final boolean p3, final boolean p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/android/email/service/ImapService;.class
        //     2: monitorenter   
        //     3: aload_1        
        //     4: invokestatic    com/android/emailcommon/f.l:(Lcom/android/emailcommon/provider/Account;)I
        //     7: invokestatic    android/net/TrafficStats.setThreadStatsTag:(I)V
        //    10: aload_0        
        //    11: invokestatic    com/android/email/o.r:(Landroid/content/Context;)Lcom/android/email/m;
        //    14: astore          6
        //    16: aload_1        
        //    17: aload_0        
        //    18: invokestatic    com/android/email/mail/b.a:(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
        //    21: astore          12
        //    23: aload           12
        //    25: astore          10
        //    27: aload_1        
        //    28: invokestatic    com/android/emailcommon/f.l:(Lcom/android/emailcommon/provider/Account;)I
        //    31: invokestatic    android/net/TrafficStats.setThreadStatsTag:(I)V
        //    34: iconst_1       
        //    35: anewarray       Ljava/lang/String;
        //    38: astore          13
        //    40: aload           13
        //    42: iconst_0       
        //    43: aload_1        
        //    44: getfield        com/android/emailcommon/provider/Account.Ln:J
        //    47: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    50: aastore        
        //    51: aload_0        
        //    52: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    55: getstatic       com/android/emailcommon/provider/g.DELETED_CONTENT_URI:Landroid/net/Uri;
        //    58: getstatic       com/android/emailcommon/provider/g.XO:[Ljava/lang/String;
        //    61: ldc_w           "accountKey=?"
        //    64: aload           13
        //    66: ldc_w           "mailboxKey"
        //    69: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    72: astore          14
        //    74: ldc2_w          -1
        //    77: lstore          15
        //    79: aload           14
        //    81: invokeinterface android/database/Cursor.moveToNext:()Z
        //    86: ifeq            481
        //    89: aload_0        
        //    90: aload           14
        //    92: ldc_w           Lcom/android/emailcommon/provider/g;.class
        //    95: invokestatic    com/android/emailcommon/provider/EmailContent.a:(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
        //    98: checkcast       Lcom/android/emailcommon/provider/g;
        //   101: astore          20
        //   103: aload           20
        //   105: ifnull          512
        //   108: aload           20
        //   110: getfield        com/android/emailcommon/provider/g.Ln:J
        //   113: lstore          15
        //   115: aload_0        
        //   116: aload           20
        //   118: invokestatic    com/android/email/service/ImapService.b:(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/provider/Mailbox;
        //   121: astore          21
        //   123: aload           21
        //   125: ifnull          79
        //   128: aload           21
        //   130: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //   133: bipush          6
        //   135: if_icmpne       515
        //   138: iconst_1       
        //   139: istore          22
        //   141: iload           22
        //   143: ifeq            200
        //   146: aload           21
        //   148: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //   151: bipush          6
        //   153: if_icmpne       200
        //   156: aload           10
        //   158: aload           21
        //   160: getfield        com/android/emailcommon/provider/Mailbox.Vv:Ljava/lang/String;
        //   163: invokevirtual   com/android/email/mail/b.y:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
        //   166: astore          25
        //   168: aload           25
        //   170: invokevirtual   com/android/emailcommon/mail/Folder.exists:()Z
        //   173: ifeq            200
        //   176: aload           25
        //   178: getstatic       com/android/emailcommon/mail/Folder$OpenMode.Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;
        //   181: invokevirtual   com/android/emailcommon/mail/Folder.a:(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
        //   184: aload           25
        //   186: invokevirtual   com/android/emailcommon/mail/Folder.iX:()Lcom/android/emailcommon/mail/Folder$OpenMode;
        //   189: getstatic       com/android/emailcommon/mail/Folder$OpenMode.Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;
        //   192: if_acmpeq       228
        //   195: aload           25
        //   197: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   200: getstatic       com/android/emailcommon/provider/g.DELETED_CONTENT_URI:Landroid/net/Uri;
        //   203: aload           20
        //   205: getfield        com/android/emailcommon/provider/g.Ln:J
        //   208: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   211: astore          23
        //   213: aload_0        
        //   214: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   217: aload           23
        //   219: aconst_null    
        //   220: aconst_null    
        //   221: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   224: pop            
        //   225: goto            512
        //   228: aload           25
        //   230: aload           20
        //   232: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   235: invokevirtual   com/android/emailcommon/mail/Folder.A:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
        //   238: astore          26
        //   240: aload           26
        //   242: ifnonnull       365
        //   245: aload           25
        //   247: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   250: goto            200
        //   253: astore          18
        //   255: getstatic       com/android/email/b.DEBUG:Z
        //   258: ifeq            301
        //   261: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   264: new             Ljava/lang/StringBuilder;
        //   267: dup            
        //   268: ldc_w           "Unable to process pending delete for id="
        //   271: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   274: lload           15
        //   276: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   279: ldc_w           ": "
        //   282: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   285: aload           18
        //   287: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   290: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   293: iconst_0       
        //   294: anewarray       Ljava/lang/Object;
        //   297: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   300: pop            
        //   301: aload           14
        //   303: invokeinterface android/database/Cursor.close:()V
        //   308: aload_0        
        //   309: aload_1        
        //   310: aload           10
        //   312: aload           13
        //   314: iload           4
        //   316: invokestatic    com/android/email/service/ImapService.a:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;Z)V
        //   319: aload_0        
        //   320: aload_1        
        //   321: aload           10
        //   323: aload           13
        //   325: invokestatic    com/android/email/service/ImapService.a:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;[Ljava/lang/String;)V
        //   328: aload_0        
        //   329: aload_1        
        //   330: aload           10
        //   332: aload_2        
        //   333: iload_3        
        //   334: iload           4
        //   336: invokestatic    com/android/email/service/ImapService.a:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/b;Lcom/android/emailcommon/provider/Mailbox;ZZ)V
        //   339: aload           6
        //   341: aload_1        
        //   342: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   345: invokeinterface com/android/email/m.f:(J)V
        //   350: aload           10
        //   352: ifnull          360
        //   355: aload           10
        //   357: invokevirtual   com/android/email/mail/b.iM:()V
        //   360: ldc             Lcom/android/email/service/ImapService;.class
        //   362: monitorexit    
        //   363: iconst_0       
        //   364: ireturn        
        //   365: aload           26
        //   367: getstatic       com/android/emailcommon/mail/Flag.WP:Lcom/android/emailcommon/mail/Flag;
        //   370: iconst_1       
        //   371: invokevirtual   com/android/emailcommon/mail/Message.a:(Lcom/android/emailcommon/mail/Flag;Z)V
        //   374: aload           25
        //   376: invokevirtual   com/android/emailcommon/mail/Folder.jc:()[Lcom/android/emailcommon/mail/Message;
        //   379: pop            
        //   380: aload           25
        //   382: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   385: goto            200
        //   388: astore          17
        //   390: aload           14
        //   392: invokeinterface android/database/Cursor.close:()V
        //   397: aload           17
        //   399: athrow         
        //   400: astore          7
        //   402: aload           10
        //   404: astore          8
        //   406: getstatic       com/android/emailcommon/b.LOGD:Z
        //   409: ifeq            431
        //   412: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   415: ldc_w           "synchronizeMailboxSynchronous"
        //   418: iconst_1       
        //   419: anewarray       Ljava/lang/Object;
        //   422: dup            
        //   423: iconst_0       
        //   424: aload           7
        //   426: aastore        
        //   427: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   430: pop            
        //   431: aload           7
        //   433: instanceof      Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //   436: ifeq            451
        //   439: aload           6
        //   441: aload_1        
        //   442: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   445: iconst_1       
        //   446: invokeinterface com/android/email/m.a:(JZ)V
        //   451: aload           7
        //   453: athrow         
        //   454: astore          9
        //   456: aload           8
        //   458: astore          10
        //   460: aload           10
        //   462: ifnull          470
        //   465: aload           10
        //   467: invokevirtual   com/android/email/mail/b.iM:()V
        //   470: aload           9
        //   472: athrow         
        //   473: astore          5
        //   475: ldc             Lcom/android/email/service/ImapService;.class
        //   477: monitorexit    
        //   478: aload           5
        //   480: athrow         
        //   481: aload           14
        //   483: invokeinterface android/database/Cursor.close:()V
        //   488: goto            308
        //   491: astore          9
        //   493: goto            460
        //   496: astore          9
        //   498: aconst_null    
        //   499: astore          10
        //   501: goto            460
        //   504: astore          7
        //   506: aconst_null    
        //   507: astore          8
        //   509: goto            406
        //   512: goto            79
        //   515: iconst_0       
        //   516: istore          22
        //   518: goto            141
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  3      16     473    481    Any
        //  16     23     504    512    Lcom/android/emailcommon/mail/MessagingException;
        //  16     23     496    504    Any
        //  27     74     400    406    Lcom/android/emailcommon/mail/MessagingException;
        //  27     74     491    496    Any
        //  79     103    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  79     103    388    400    Any
        //  108    123    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  108    123    388    400    Any
        //  128    138    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  128    138    388    400    Any
        //  146    200    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  146    200    388    400    Any
        //  200    225    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  200    225    388    400    Any
        //  228    240    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  228    240    388    400    Any
        //  245    250    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  245    250    388    400    Any
        //  255    301    388    400    Any
        //  301    308    400    406    Lcom/android/emailcommon/mail/MessagingException;
        //  301    308    491    496    Any
        //  308    350    400    406    Lcom/android/emailcommon/mail/MessagingException;
        //  308    350    491    496    Any
        //  355    360    473    481    Any
        //  365    385    253    308    Lcom/android/emailcommon/mail/MessagingException;
        //  365    385    388    400    Any
        //  390    400    400    406    Lcom/android/emailcommon/mail/MessagingException;
        //  390    400    491    496    Any
        //  406    431    454    460    Any
        //  431    451    454    460    Any
        //  451    454    454    460    Any
        //  465    470    473    481    Any
        //  470    473    473    481    Any
        //  481    488    400    406    Lcom/android/emailcommon/mail/MessagingException;
        //  481    488    491    496    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0079:
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
    
    private static void a(final Context context, final Account account, final com.android.email.mail.b b, final Mailbox mailbox, final boolean b2, final boolean b3) {
    Label_0394_Outer:
        while (true) {
            while (true) {
                while (true) {
                    int n18 = 0;
                Label_0141:
                    while (true) {
                    Label_0153:
                        while (true) {
                            synchronized (ImapService.class) {
                                E.c(b.mW, "synchronizeMailboxGeneric " + account + " " + mailbox + " " + b2 + " " + b3, new Object[0]);
                                final ArrayList list = new ArrayList();
                                final ContentResolver contentResolver = context.getContentResolver();
                                if (mailbox.Zr != 3 && mailbox.Zr != 4) {
                                    final long n = SystemClock.elapsedRealtime() - mailbox.ZB;
                                    if (!b3 && !b2 && n < 14400000L && n >= 0L) {
                                        break Label_0153;
                                    }
                                    break Label_0153;
                                }
                                return;
                                // iftrue(Label_0188:, account.XA != 6)
                                final long min = 0L;
                                // iftrue(Label_0435:, b != null)
                                E.c(b.mW, "account is apparently deleted", new Object[0]);
                                return;
                            }
                            break Label_0153;
                            final ArrayList list;
                            final ContentResolver contentResolver;
                            long min = 0L;
                            long n2;
                            Cursor query;
                            long long1;
                            int length;
                            long n3;
                            Folder$FolderType xe;
                            Folder y;
                            Message[] a = null;
                            final Throwable t;
                            Message[] array;
                            int length2;
                            int n4;
                            int n5;
                            Message[] array2;
                            Message[] array3;
                            long n6;
                            HashMap<Object, w> hashMap;
                            Cursor query2;
                            w w;
                            final Throwable t2;
                            ArrayList<Message> list2;
                            HashMap<String, Message> hashMap2;
                            int n7 = 0;
                            Message message;
                            w w2;
                            FetchProfile fetchProfile;
                            FetchProfile fetchProfile2;
                            List<Message> list3;
                            int n8;
                            List<Message> subList;
                            int n9 = 0;
                            int n10 = 0;
                            int n11 = 0;
                            Flag[] jb;
                            int length3;
                            int n12 = 0;
                            Flag flag;
                            int n13 = 0;
                            int n14 = 0;
                            int n15 = 0;
                            w w3;
                            int dm = 0;
                            Iterator<w> iterator;
                            int n16 = 0;
                            int length4;
                            int length5;
                            int n17 = 0;
                            boolean b4;
                            Message message2;
                            boolean b5;
                            boolean vs;
                            boolean b6;
                            boolean vt;
                            boolean b7;
                            int n19;
                            Uri withAppendedId;
                            ContentValues contentValues;
                            w w4;
                            int n20;
                            int n21;
                            Message message3;
                            int n22;
                            long n23;
                            Message[] array4;
                            Message[] a2;
                            Label_0379_Outer:Label_1157_Outer:Label_1509_Outer:Label_1665_Outer:Label_1809_Outer:
                            while (true) {
                                n2 = System.currentTimeMillis() - 604800000L;
                                Label_1809:Label_1773_Outer:
                                while (true) {
                                Label_1773:
                                    while (true) {
                                    Label_2133:
                                        while (true) {
                                        Label_1684:
                                            while (true) {
                                                Label_1665:Label_1567_Outer:
                                                while (true) {
                                                Label_1633:
                                                    while (true) {
                                                        Label_1567:Label_1801_Outer:
                                                        while (true) {
                                                        Label_2151:
                                                            while (true) {
                                                                while (true) {
                                                                    while (true) {
                                                                    Label_2115:
                                                                        while (true) {
                                                                        Label_2097:
                                                                            while (true) {
                                                                            Label_0379:
                                                                                while (true) {
                                                                                    try {
                                                                                        query = contentResolver.query(g.CONTENT_URI, x.Lm, "accountKey=? AND mailboxKey=? AND timeStamp!=0", new String[] { String.valueOf(account.Ln), String.valueOf(mailbox.Ln) }, (String)null);
                                                                                        while (true) {
                                                                                            Label_2070: {
                                                                                                if (query == null) {
                                                                                                    break Label_2070;
                                                                                                }
                                                                                            Block_27_Outer:
                                                                                                while (true) {
                                                                                                Label_0980:
                                                                                                    while (true) {
                                                                                                    Label_0931:
                                                                                                        while (true) {
                                                                                                            while (true) {
                                                                                                                Label_2045: {
                                                                                                                    while (true) {
                                                                                                                        Label_2038: {
                                                                                                                            try {
                                                                                                                                if (!query.moveToFirst()) {
                                                                                                                                    break;
                                                                                                                                }
                                                                                                                                long1 = query.getLong(0);
                                                                                                                                if (long1 > 0L) {
                                                                                                                                    min = Math.min(n2, long1);
                                                                                                                                    E.c(b.mW, "oldest local message " + long1, new Object[0]);
                                                                                                                                    if (query != null) {
                                                                                                                                        query.close();
                                                                                                                                    }
                                                                                                                                    E.c(b.mW, "full sync: original window: now - " + min, new Object[0]);
                                                                                                                                    continue Label_0153;
                                                                                                                                }
                                                                                                                                break;
                                                                                                                                // iftrue(Label_0745:, min >= 0L)
                                                                                                                                // iftrue(Label_0518:, y.iZ())
                                                                                                                                // iftrue(Label_2052:, array.length <= 20)
                                                                                                                                // iftrue(Label_0391:, query == null)
                                                                                                                                // iftrue(Label_0835:, array.length >= n4 || min <= 0L)
                                                                                                                                // iftrue(Label_0811:, !b2)
                                                                                                                                // iftrue(Label_0914:, array.length >= n4)
                                                                                                                                // iftrue(Label_0595:, n18 == 0 || length >= 10)
                                                                                                                                // iftrue(Label_0518:, mailbox.Zr != 6 && mailbox.Zr != 5 || y.exists())
                                                                                                                                // iftrue(Label_2059:, n4 <= 0)
                                                                                                                                while (true) {
                                                                                                                                    Label_0745: {
                                                                                                                                        while (true) {
                                                                                                                                            Label_0595: {
                                                                                                                                                while (true) {
                                                                                                                                                    Block_32_Outer:Label_0914_Outer:
                                                                                                                                                    while (true) {
                                                                                                                                                        length = 10;
                                                                                                                                                        break Label_0595;
                                                                                                                                                        while (true) {
                                                                                                                                                            while (true) {
                                                                                                                                                                Block_28: {
                                                                                                                                                                Block_37:
                                                                                                                                                                    while (true) {
                                                                                                                                                                        Block_33: {
                                                                                                                                                                            while (true) {
                                                                                                                                                                                min -= n3;
                                                                                                                                                                                break Block_33;
                                                                                                                                                                                xe = Folder$FolderType.Xe;
                                                                                                                                                                                break Block_28;
                                                                                                                                                                                length = 10 + a.length;
                                                                                                                                                                                break Label_0595;
                                                                                                                                                                                while (true) {
                                                                                                                                                                                    query.close();
                                                                                                                                                                                    throw t;
                                                                                                                                                                                    length2 = array.length;
                                                                                                                                                                                    break Block_37;
                                                                                                                                                                                    continue Label_0914_Outer;
                                                                                                                                                                                }
                                                                                                                                                                                continue Block_27_Outer;
                                                                                                                                                                            }
                                                                                                                                                                            min = System.currentTimeMillis() - 86400000L;
                                                                                                                                                                            E.c(b.mW, "quick sync: original window: now - " + min, new Object[0]);
                                                                                                                                                                            continue Label_0153;
                                                                                                                                                                        }
                                                                                                                                                                        E.c(b.mW, "window size too large, this is the last attempt", new Object[0]);
                                                                                                                                                                        min = 0L;
                                                                                                                                                                        break Label_0745;
                                                                                                                                                                        array2 = new Message[n5 + a.length];
                                                                                                                                                                        System.arraycopy(a, 0, array2, 0, a.length);
                                                                                                                                                                        System.arraycopy(array, array.length - n5, array2, a.length, n5);
                                                                                                                                                                        array3 = array2;
                                                                                                                                                                        n6 = min;
                                                                                                                                                                        break Label_0980;
                                                                                                                                                                        Label_0518: {
                                                                                                                                                                            y.a(Folder$OpenMode.Xg);
                                                                                                                                                                        }
                                                                                                                                                                        mailbox.g(context, y.ja());
                                                                                                                                                                        a = y.a(0L, min);
                                                                                                                                                                        E.c(b.mW, "received " + a.length + " messages", new Object[0]);
                                                                                                                                                                        continue Label_0914_Outer;
                                                                                                                                                                    }
                                                                                                                                                                    n5 = 20;
                                                                                                                                                                    continue Label_0931;
                                                                                                                                                                }
                                                                                                                                                                E.e(b.mW, "could not create remote folder type %d", mailbox.Zr);
                                                                                                                                                                return;
                                                                                                                                                                E.f(b.mW, "expected to find " + n4 + " more messages, only got " + array.length, new Object[0]);
                                                                                                                                                                continue Label_0379_Outer;
                                                                                                                                                            }
                                                                                                                                                            Label_0835: {
                                                                                                                                                                E.c(b.mW, "additionalMessages " + array.length, new Object[0]);
                                                                                                                                                            }
                                                                                                                                                            continue Label_1157_Outer;
                                                                                                                                                        }
                                                                                                                                                        hashMap = new HashMap<Object, w>();
                                                                                                                                                        try {
                                                                                                                                                            query2 = contentResolver.query(g.CONTENT_URI, com.android.email.service.w.Lm, "accountKey=? AND mailboxKey=? AND timeStamp>=?", new String[] { String.valueOf(account.Ln), String.valueOf(mailbox.Ln), "0" }, (String)null);
                                                                                                                                                            Label_1120: {
                                                                                                                                                                try {
                                                                                                                                                                    while (query2.moveToNext()) {
                                                                                                                                                                        w = new w(query2);
                                                                                                                                                                        if (!TextUtils.isEmpty((CharSequence)w.Vv)) {
                                                                                                                                                                            hashMap.put(w.Vv, w);
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    break Label_1120;
                                                                                                                                                                }
                                                                                                                                                                finally {}
                                                                                                                                                                if (query2 != null) {
                                                                                                                                                                    query2.close();
                                                                                                                                                                }
                                                                                                                                                                throw t2;
                                                                                                                                                            }
                                                                                                                                                            if (query2 != null) {
                                                                                                                                                                query2.close();
                                                                                                                                                            }
                                                                                                                                                            list2 = new ArrayList<Message>();
                                                                                                                                                            hashMap2 = new HashMap<String, Message>();
                                                                                                                                                            n7 = -1 + array3.length;
                                                                                                                                                            if (n7 >= 0) {
                                                                                                                                                                message = array3[n7];
                                                                                                                                                                E.c(b.mW, "remote message " + message.ln(), new Object[0]);
                                                                                                                                                                hashMap2.put(message.ln(), message);
                                                                                                                                                                w2 = hashMap.get(message.ln());
                                                                                                                                                                if (w2 == null || w2.Vu == 0 || w2.Vu == 2) {
                                                                                                                                                                    list2.add(message);
                                                                                                                                                                }
                                                                                                                                                                break Label_0379;
                                                                                                                                                            }
                                                                                                                                                            else {
                                                                                                                                                                if (list2.size() > 0) {
                                                                                                                                                                    fetchProfile = new FetchProfile();
                                                                                                                                                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WJ);
                                                                                                                                                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WK);
                                                                                                                                                                    y.a(list2.toArray(new Message[list2.size()]), fetchProfile, new r(new HashMap((Map<? extends K, ? extends V>)hashMap), context, account, mailbox, list));
                                                                                                                                                                }
                                                                                                                                                                fetchProfile2 = new FetchProfile();
                                                                                                                                                                ((ArrayList<FetchProfile$Item>)fetchProfile2).add(FetchProfile$Item.WJ);
                                                                                                                                                                if (array3.length > 500) {
                                                                                                                                                                    list3 = Arrays.asList(array3);
                                                                                                                                                                    for (int i = 0; i < list3.size(); i += 500) {
                                                                                                                                                                        n8 = i + 500;
                                                                                                                                                                        if (n8 >= list3.size()) {
                                                                                                                                                                            n8 = -1 + list3.size();
                                                                                                                                                                        }
                                                                                                                                                                        subList = list3.subList(i, n8);
                                                                                                                                                                        y.a(subList.toArray(new Message[subList.size()]), fetchProfile2, null);
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                else {
                                                                                                                                                                    y.a(array3, fetchProfile2, null);
                                                                                                                                                                }
                                                                                                                                                                n9 = 0;
                                                                                                                                                                n10 = 0;
                                                                                                                                                                n11 = 0;
                                                                                                                                                                jb = y.jb();
                                                                                                                                                                length3 = jb.length;
                                                                                                                                                                n12 = 0;
                                                                                                                                                                if (n12 >= length3) {
                                                                                                                                                                    break Label_2115;
                                                                                                                                                                }
                                                                                                                                                                flag = jb[n12];
                                                                                                                                                                if (flag != Flag.WQ) {
                                                                                                                                                                    break Label_2045;
                                                                                                                                                                }
                                                                                                                                                                n13 = 1;
                                                                                                                                                                if (flag != Flag.WS) {
                                                                                                                                                                    break Label_2038;
                                                                                                                                                                }
                                                                                                                                                                n14 = 1;
                                                                                                                                                                if (flag == Flag.WR) {
                                                                                                                                                                    n15 = 1;
                                                                                                                                                                    break Label_2097;
                                                                                                                                                                }
                                                                                                                                                                break Label_0980;
                                                                                                                                                            }
                                                                                                                                                            dm = w3.dM;
                                                                                                                                                            // iftrue(Label_2169:, 0x40000 & dm == 0x0)
                                                                                                                                                            // iftrue(Label_1987:, !iterator.hasNext())
                                                                                                                                                            // iftrue(Label_1801:, n16 >= length4)
                                                                                                                                                            // iftrue(Label_2151:, w3 == null)
                                                                                                                                                            // iftrue(Label_2175:, n11 == 0 || b4 == b5)
                                                                                                                                                            // iftrue(Label_2010:, n18 == 0)
                                                                                                                                                            // iftrue(Label_2157:, n9 == 0 || b6 == vs)
                                                                                                                                                            // iftrue(Label_2163:, n10 == 0 || vt == b7)
                                                                                                                                                            // iftrue(Label_2181:, !b5)
                                                                                                                                                            // iftrue(Label_1868:, w4.Vw < n6 || hashMap2.containsKey((Object)w4.Vv))
                                                                                                                                                            // iftrue(Label_1856:, n17 >= length5)
                                                                                                                                                            // iftrue(Label_2192:, !message3.b(Flag.WP))
                                                                                                                                                            Block_65: {
                                                                                                                                                                Block_63: {
                                                                                                                                                                Block_62:
                                                                                                                                                                    while (true) {
                                                                                                                                                                        Block_68: {
                                                                                                                                                                            Block_64: {
                                                                                                                                                                                Block_57: {
                                                                                                                                                                                    Block_66: {
                                                                                                                                                                                    Block_55:
                                                                                                                                                                                        while (true) {
                                                                                                                                                                                            Block_54: {
                                                                                                                                                                                                Block_60: {
                                                                                                                                                                                                    break Block_60;
                                                                                                                                                                                                    break Block_66;
                                                                                                                                                                                                    break Block_54;
                                                                                                                                                                                                    mailbox.w(context, SystemClock.elapsedRealtime());
                                                                                                                                                                                                    Label_2010: {
                                                                                                                                                                                                        break Label_2010;
                                                                                                                                                                                                        Label_1856: {
                                                                                                                                                                                                            iterator = hashMap.values().iterator();
                                                                                                                                                                                                        }
                                                                                                                                                                                                        continue Label_1567_Outer;
                                                                                                                                                                                                    }
                                                                                                                                                                                                    y.iY();
                                                                                                                                                                                                    return;
                                                                                                                                                                                                    length5 = array3.length;
                                                                                                                                                                                                    n17 = 0;
                                                                                                                                                                                                    break Label_1809;
                                                                                                                                                                                                }
                                                                                                                                                                                                b4 = true;
                                                                                                                                                                                                break Label_1684;
                                                                                                                                                                                            }
                                                                                                                                                                                            message2 = array3[n16];
                                                                                                                                                                                            w3 = hashMap.get(message2.ln());
                                                                                                                                                                                            break Block_55;
                                                                                                                                                                                            b5 = message2.b(Flag.WR);
                                                                                                                                                                                            break Block_62;
                                                                                                                                                                                            Label_1987: {
                                                                                                                                                                                                a(context, account, y, list2, mailbox);
                                                                                                                                                                                            }
                                                                                                                                                                                            continue Label_1801_Outer;
                                                                                                                                                                                        }
                                                                                                                                                                                        vs = w3.Vs;
                                                                                                                                                                                        b6 = message2.b(Flag.WQ);
                                                                                                                                                                                        break Block_57;
                                                                                                                                                                                        vt = w3.Vt;
                                                                                                                                                                                        b7 = message2.b(Flag.WS);
                                                                                                                                                                                        n19 = 1;
                                                                                                                                                                                        continue Label_1665;
                                                                                                                                                                                        withAppendedId = ContentUris.withAppendedId(g.CONTENT_URI, w3.Ln);
                                                                                                                                                                                        contentValues = new ContentValues();
                                                                                                                                                                                        contentValues.put("flagRead", b6);
                                                                                                                                                                                        contentValues.put("flagFavorite", b7);
                                                                                                                                                                                        break Block_63;
                                                                                                                                                                                    }
                                                                                                                                                                                    w4 = iterator.next();
                                                                                                                                                                                    break Block_68;
                                                                                                                                                                                    contentValues.put("flags", n20);
                                                                                                                                                                                    contentResolver.update(withAppendedId, contentValues, (String)null, (String[])null);
                                                                                                                                                                                    break Label_2151;
                                                                                                                                                                                    break Block_64;
                                                                                                                                                                                }
                                                                                                                                                                                n21 = 1;
                                                                                                                                                                                continue Label_1633;
                                                                                                                                                                            }
                                                                                                                                                                            message3 = array3[n17];
                                                                                                                                                                            break Block_65;
                                                                                                                                                                        }
                                                                                                                                                                        com.android.emailcommon.b.a.c(context, account.Ln, w4.Ln);
                                                                                                                                                                        contentResolver.delete(ContentUris.withAppendedId(g.CONTENT_URI, w4.Ln), (String)null, (String[])null);
                                                                                                                                                                        contentResolver.delete(ContentUris.withAppendedId(g.YF, w4.Ln), (String)null, (String[])null);
                                                                                                                                                                        contentResolver.delete(ContentUris.withAppendedId(g.DELETED_CONTENT_URI, w4.Ln), (String)null, (String[])null);
                                                                                                                                                                        continue Label_1567_Outer;
                                                                                                                                                                    }
                                                                                                                                                                    n22 = 1;
                                                                                                                                                                    break Label_2133;
                                                                                                                                                                }
                                                                                                                                                                n20 = (0x40000 | dm);
                                                                                                                                                                continue Label_1773;
                                                                                                                                                                length4 = array3.length;
                                                                                                                                                                n16 = 0;
                                                                                                                                                                continue Label_1567;
                                                                                                                                                            }
                                                                                                                                                            hashMap2.remove(message3.ln());
                                                                                                                                                            list2.remove(message3);
                                                                                                                                                        }
                                                                                                                                                        finally {
                                                                                                                                                            query2 = null;
                                                                                                                                                        }
                                                                                                                                                        Label_0811: {
                                                                                                                                                            length = a.length;
                                                                                                                                                        }
                                                                                                                                                        continue Block_32_Outer;
                                                                                                                                                    }
                                                                                                                                                    Label_0435: {
                                                                                                                                                        y = b.y(mailbox.Vv);
                                                                                                                                                    }
                                                                                                                                                    continue Label_0379_Outer;
                                                                                                                                                }
                                                                                                                                                E.c(b.mW, "trying to get " + n4 + " more", new Object[0]);
                                                                                                                                                n23 = min - 1L;
                                                                                                                                                array4 = new Message[0];
                                                                                                                                                n3 = 86400000L;
                                                                                                                                                array = array4;
                                                                                                                                                continue Label_0394_Outer;
                                                                                                                                            }
                                                                                                                                            E.c(b.mW, "need " + length + " total", new Object[0]);
                                                                                                                                            n4 = length - a.length;
                                                                                                                                            continue;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    E.c(b.mW, "requesting additional messages from range " + n23 + " - " + min, new Object[0]);
                                                                                                                                    a2 = y.a(n23, min);
                                                                                                                                    n3 *= 2L;
                                                                                                                                    array = a2;
                                                                                                                                    continue Label_0394_Outer;
                                                                                                                                }
                                                                                                                                Label_0391: {
                                                                                                                                    throw t;
                                                                                                                                }
                                                                                                                            }
                                                                                                                            finally {
                                                                                                                                continue Label_0379;
                                                                                                                            }
                                                                                                                            break Label_0980;
                                                                                                                        }
                                                                                                                        n14 = n10;
                                                                                                                        continue Label_1665_Outer;
                                                                                                                    }
                                                                                                                }
                                                                                                                n13 = n9;
                                                                                                                continue Label_1665_Outer;
                                                                                                            }
                                                                                                            Label_2052: {
                                                                                                                n5 = length2;
                                                                                                            }
                                                                                                            continue Label_0931;
                                                                                                        }
                                                                                                        Label_2059: {
                                                                                                            array3 = a;
                                                                                                        }
                                                                                                        n6 = min;
                                                                                                        continue Label_0980;
                                                                                                    }
                                                                                                    n15 = n11;
                                                                                                    break Label_2097;
                                                                                                }
                                                                                            }
                                                                                            min = n2;
                                                                                            continue Label_0379_Outer;
                                                                                        }
                                                                                        n18 = 1;
                                                                                        continue Label_0141;
                                                                                    }
                                                                                    finally {
                                                                                        query = null;
                                                                                        continue Label_0379;
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                --n7;
                                                                                continue Label_1509_Outer;
                                                                            }
                                                                            ++n12;
                                                                            n10 = n14;
                                                                            n9 = n13;
                                                                            n11 = n15;
                                                                            continue Label_1665_Outer;
                                                                        }
                                                                        if (n9 == 0 && n10 == 0 && n11 == 0) {
                                                                            continue Label_1809_Outer;
                                                                        }
                                                                        break;
                                                                    }
                                                                    continue;
                                                                }
                                                                if (n21 != 0 || n19 != 0 || n22 != 0) {
                                                                    continue Label_1773_Outer;
                                                                }
                                                                break;
                                                            }
                                                            ++n16;
                                                            continue Label_1567;
                                                        }
                                                        Label_2157: {
                                                            n21 = 0;
                                                        }
                                                        continue Label_1633;
                                                    }
                                                    Label_2163: {
                                                        n19 = 0;
                                                    }
                                                    continue Label_1665;
                                                }
                                                Label_2169: {
                                                    b4 = false;
                                                }
                                                continue Label_1684;
                                            }
                                            Label_2175: {
                                                n22 = 0;
                                            }
                                            continue Label_2133;
                                        }
                                        Label_2181: {
                                            n20 = (0xFFFBFFFF & dm);
                                        }
                                        continue Label_1773;
                                    }
                                    Label_2192: {
                                        ++n17;
                                    }
                                    continue Label_1809;
                                }
                            }
                            break;
                        }
                        n18 = 0;
                        continue Label_0141;
                    }
                    Label_0188: {
                        if (n18 != 0) {
                            continue Label_0394_Outer;
                        }
                    }
                    break;
                }
                continue;
            }
        }
    }
    
    private static void a(final Context context, final Account account, final com.android.email.mail.b b, final String[] array) {
        ContentResolver contentResolver;
        Cursor query;
        Mailbox mailbox;
        long n;
        com.android.email.mail.b b2;
        g g;
        long ln = 0L;
        g t = null;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        int n6 = 0;
        Mailbox v = null;
        int n7;
        int n8;
        int n9;
        int n10;
        int n11;
        com.android.email.mail.b a = null;
        Mailbox b3;
        Folder y = null;
        Message a2 = null;
        final MessagingException ex;
        Folder y2;
        Folder$FolderType xe;
        Mailbox b4;
        Folder y3;
        Message[] array2;
        Message a3;
        Folder y4;
        Label_0145_Outer:Label_0177_Outer:Label_1026_Outer:Label_0252_Outer:Label_0573_Outer:
        while (true) {
            contentResolver = context.getContentResolver();
            query = contentResolver.query(com.android.emailcommon.provider.g.YF, com.android.emailcommon.provider.g.XO, "accountKey=?", array, "mailboxKey");
            mailbox = null;
            n = -1L;
            b2 = b;
            while (true) {
            Label_0252:
                while (true) {
                Label_1026:
                    while (true) {
                    Label_1104:
                        while (true) {
                        Label_1098:
                            while (true) {
                            Label_0145:
                                while (true) {
                                    Label_1083: {
                                        while (true) {
                                            while (true) {
                                                Label_1050: {
                                                    while (true) {
                                                        Label_1015: {
                                                            Label_1006: {
                                                                while (true) {
                                                                    Label_0358:Block_24_Outer:
                                                                    while (true) {
                                                                        try {
                                                                            while (true) {
                                                                                Label_0449: {
                                                                                    try {
                                                                                        while (query.moveToNext()) {
                                                                                            while (true) {
                                                                                                g = EmailContent.a(context, query, g.class);
                                                                                                ln = g.Ln;
                                                                                                try {
                                                                                                    t = com.android.emailcommon.provider.g.t(context, g.Ln);
                                                                                                    n2 = 0;
                                                                                                    n3 = 0;
                                                                                                    n4 = 0;
                                                                                                    n5 = 0;
                                                                                                    n6 = 0;
                                                                                                    if (t == null) {
                                                                                                        break Label_1050;
                                                                                                    }
                                                                                                    v = Mailbox.v(context, t.YR);
                                                                                                    if (v == null) {
                                                                                                        break Label_1015;
                                                                                                    }
                                                                                                    if (g.YR == t.YR) {
                                                                                                        break Label_1006;
                                                                                                    }
                                                                                                    if (v.Zr != 6) {
                                                                                                        break Label_1083;
                                                                                                    }
                                                                                                    n7 = 0;
                                                                                                    n8 = 1;
                                                                                                    if (g.Vs == t.Vs) {
                                                                                                        break Label_0145;
                                                                                                    }
                                                                                                    n9 = 1;
                                                                                                    if (g.Vt == t.Vt) {
                                                                                                        break Label_1098;
                                                                                                    }
                                                                                                    n10 = 1;
                                                                                                    if ((0x40000 & g.dM) != (0x40000 & t.dM)) {
                                                                                                        n11 = 1;
                                                                                                        break Label_1026;
                                                                                                    }
                                                                                                    break Label_1104;
                                                                                                Block_51_Outer:
                                                                                                    while (true) {
                                                                                                        y = a.y(b3.Vv);
                                                                                                        while (true) {
                                                                                                            Block_50: {
                                                                                                                break Block_50;
                                                                                                                y.iY();
                                                                                                                break Label_0252;
                                                                                                                a = com.android.email.mail.b.a(account, context);
                                                                                                                contentResolver.delete(ContentUris.withAppendedId(com.android.emailcommon.provider.g.YF, g.Ln), (String)null, (String[])null);
                                                                                                                b2 = a;
                                                                                                                n = ln;
                                                                                                                break;
                                                                                                            }
                                                                                                            y.a(Folder$OpenMode.Xg);
                                                                                                            continue Label_0252_Outer;
                                                                                                        }
                                                                                                        Label_0282: {
                                                                                                            b3 = b(context, g);
                                                                                                        }
                                                                                                        continue Block_51_Outer;
                                                                                                    }
                                                                                                }
                                                                                                // iftrue(Label_0252:, !y.exists())
                                                                                                // iftrue(Label_1110:, n6 == 0)
                                                                                                // iftrue(Label_0282:, t.Vv != null && !t.Vv.equals((Object)"") && !t.Vv.startsWith("Local-"))
                                                                                                // iftrue(Label_0412:, y.iX() == Folder$OpenMode.Xg)
                                                                                                // iftrue(Label_0252:, b3 == null || b3.Zr == 6)
                                                                                                catch (MessagingException ex) {
                                                                                                    n = ln;
                                                                                                }
                                                                                                break Label_0358;
                                                                                                Label_0412: {
                                                                                                    a2 = y.A(g.Vv);
                                                                                                }
                                                                                                if (a2 == null) {
                                                                                                    y.iY();
                                                                                                    continue Label_0252;
                                                                                                }
                                                                                                break Label_0449;
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                        if (com.android.email.b.DEBUG) {
                                                                                            E.c(b.mW, "Unable to process pending update for id=" + n + ": " + ex, new Object[0]);
                                                                                        }
                                                                                        return;
                                                                                    }
                                                                                    finally {
                                                                                        query.close();
                                                                                    }
                                                                                }
                                                                                y2 = a.y(mailbox.Vv);
                                                                                if (!y2.exists()) {
                                                                                    xe = Folder$FolderType.Xe;
                                                                                    y2.iZ();
                                                                                }
                                                                                if (y2.exists()) {
                                                                                    y2.a(Folder$OpenMode.Xg);
                                                                                    if (y2.iX() != Folder$OpenMode.Xg) {
                                                                                        y.iY();
                                                                                        y2.iY();
                                                                                        continue Label_0252;
                                                                                    }
                                                                                    y.a(new Message[] { a2 }, y2, new t(context, t));
                                                                                    y2.iY();
                                                                                }
                                                                                a2.a(Flag.WP, true);
                                                                                y.jc();
                                                                                y.iY();
                                                                                continue Label_0252;
                                                                            }
                                                                            query.close();
                                                                            return;
                                                                            // iftrue(Label_0252:, !y3.exists())
                                                                            // iftrue(Label_0252:, y3.iX() != Folder$OpenMode.Xg)
                                                                            // iftrue(Label_0861:, n4 == 0)
                                                                            // iftrue(Label_0252:, !y3.exists())
                                                                            // iftrue(Label_0897:, n2 == 0)
                                                                            // iftrue(Label_0841:, n5 == 0)
                                                                            // iftrue(Label_0810:, !com.android.email.b.DEBUG)
                                                                            // iftrue(Label_0966:, n3 == 0)
                                                                            // iftrue(Label_0252:, t.Vv == null || t.Vv.equals((Object)"") || t.Vv.startsWith("Local-") || b4 == null || b4.Zr == 3 || b4.Zr == 4)
                                                                            while (true) {
                                                                                Block_23:Block_29_Outer:Label_0841_Outer:Block_25_Outer:Block_31_Outer:
                                                                                while (true) {
                                                                                    y3 = a.y(b4.Vv);
                                                                                    y3.a(Folder$OpenMode.Xg);
                                                                                    break Block_23;
                                                                                    while (true) {
                                                                                        Label_0897: {
                                                                                            while (true) {
                                                                                                while (true) {
                                                                                                Label_0810:
                                                                                                    while (true) {
                                                                                                        while (true) {
                                                                                                            y3.a(array2, ImapService.Vg, (0x40000 & t.dM) != 0x0);
                                                                                                            break Label_0897;
                                                                                                            Block_28: {
                                                                                                                break Block_28;
                                                                                                                while (true) {
                                                                                                                    while (true) {
                                                                                                                        y3.iY();
                                                                                                                        continue Label_0252;
                                                                                                                        E.c(b.mW, "Update for msg id=" + t.Ln + " read=" + t.Vs + " flagged=" + t.Vt + " answered=" + ((0x40000 & t.dM) != 0x0) + " new mailbox=" + t.YR, new Object[0]);
                                                                                                                        break Label_0810;
                                                                                                                        a3.ab(t.YQ);
                                                                                                                        y3.a(array2, y4, new s(context, t));
                                                                                                                        a3.a(Flag.WP, true);
                                                                                                                        y3.jc();
                                                                                                                        continue Block_25_Outer;
                                                                                                                    }
                                                                                                                    y4 = a.y(mailbox.Vv);
                                                                                                                    continue Block_31_Outer;
                                                                                                                }
                                                                                                            }
                                                                                                            y3.a(array2, ImapService.Vf, t.Vt);
                                                                                                            Label_0861: {
                                                                                                                continue Label_0841_Outer;
                                                                                                            }
                                                                                                        }
                                                                                                        y3.a(array2, ImapService.Ve, t.Vs);
                                                                                                        continue Block_25_Outer;
                                                                                                    }
                                                                                                    array2 = new Message[] { a3 };
                                                                                                    continue Block_24_Outer;
                                                                                                }
                                                                                                continue Block_31_Outer;
                                                                                            }
                                                                                        }
                                                                                        continue Block_24_Outer;
                                                                                    }
                                                                                    b4 = b(context, g);
                                                                                    continue Block_29_Outer;
                                                                                }
                                                                                a3 = y3.A(t.Vv);
                                                                                continue Label_0573_Outer;
                                                                            }
                                                                        }
                                                                        // iftrue(Label_0252:, a3 == null)
                                                                        catch (MessagingException ex) {
                                                                            continue Label_0358;
                                                                        }
                                                                        break;
                                                                    }
                                                                    a = b2;
                                                                    continue Label_0573_Outer;
                                                                }
                                                            }
                                                            n7 = 0;
                                                            n8 = 0;
                                                            continue Label_0145;
                                                        }
                                                        mailbox = v;
                                                        n = ln;
                                                        continue Label_0145_Outer;
                                                    }
                                                    n6 = n8;
                                                    mailbox = v;
                                                    n4 = n10;
                                                    n5 = n9;
                                                    n2 = n11;
                                                    n3 = n7;
                                                }
                                                if (b2 == null && (n6 != 0 || n5 != 0 || n4 != 0 || n3 != 0 || n2 != 0)) {
                                                    continue Label_0573_Outer;
                                                }
                                                break;
                                            }
                                            continue;
                                        }
                                    }
                                    n7 = 1;
                                    n8 = 0;
                                    continue Label_0145;
                                }
                                n9 = 0;
                                continue Label_0177_Outer;
                            }
                            n10 = 0;
                            continue Label_1026_Outer;
                        }
                        n11 = 0;
                        continue Label_1026;
                    }
                    Label_1110: {
                        if (n5 == 0 && n4 == 0 && n3 == 0 && n2 == 0) {
                            continue Label_0252;
                        }
                    }
                    break;
                }
                continue;
            }
        }
    }
    
    private static void a(final Context context, final Account account, final com.android.email.mail.b b, final String[] array, final boolean b2) {
        while (true) {
            final ContentResolver contentResolver = context.getContentResolver();
            final Cursor query = contentResolver.query(Mailbox.CONTENT_URI, Mailbox.XT, "accountKey=? and type=5", array, (String)null);
            long n = -1L;
            com.android.email.mail.b b3 = b;
        Label_0299_Outer:
            while (true) {
                Mailbox mailbox = null;
            Label_0299:
                while (true) {
                    try {
                        try {
                            while (query.moveToNext()) {
                                final long long1 = query.getLong(0);
                                final Cursor query2 = contentResolver.query(g.CONTENT_URI, g.XT, "mailboxKey=? and (syncServerId is null or syncServerId='')", new String[] { Long.toString(long1) }, (String)null);
                                Mailbox v = null;
                                long long2 = n;
                                com.android.email.mail.b a = b3;
                                while (true) {
                                    Label_0546: {
                                        while (true) {
                                            g t = null;
                                            Label_0358: {
                                                try {
                                                    Label_0137: {
                                                        while (query2.moveToNext()) {
                                                            if (a == null) {
                                                                a = com.android.email.mail.b.a(account, context);
                                                            }
                                                            if (v != null) {
                                                                break Label_0137;
                                                            }
                                                            v = Mailbox.v(context, long1);
                                                            if (v != null) {
                                                                break Label_0137;
                                                            }
                                                        }
                                                        break Label_0546;
                                                    }
                                                    mailbox = v;
                                                    long2 = query2.getLong(0);
                                                    t = g.t(context, long2);
                                                    int a2;
                                                    if (t == null) {
                                                        a2 = 1;
                                                        E.c(b.mW, "Upsync failed for null message, id=" + long2, new Object[0]);
                                                    }
                                                    else {
                                                        if (mailbox.Zr != 3) {
                                                            break Label_0358;
                                                        }
                                                        E.c(b.mW, "Upsync skipped for mailbox=drafts, id=" + long2, new Object[0]);
                                                        a2 = 0;
                                                    }
                                                    if (a2 != 0) {
                                                        context.getContentResolver().delete(ContentUris.withAppendedId(g.YF, long2), (String)null, (String[])null);
                                                    }
                                                    break Label_0299;
                                                }
                                                finally {
                                                    Label_0284: {
                                                        if (query2 == null) {
                                                            break Label_0284;
                                                        }
                                                        try {
                                                            query2.close();
                                                            if (a != null) {
                                                                a.iM();
                                                            }
                                                        }
                                                        catch (MessagingException ex2) {}
                                                    }
                                                }
                                                break Label_0299;
                                            }
                                            if (mailbox.Zr == 4) {
                                                E.c(b.mW, "Upsync skipped for mailbox=outbox, id=" + long2, new Object[0]);
                                                final int a2 = 0;
                                                continue Label_0299_Outer;
                                            }
                                            if (mailbox.Zr == 6) {
                                                E.c(b.mW, "Upsync skipped for mailbox=trash, id=" + long2, new Object[0]);
                                                final int a2 = 0;
                                                continue Label_0299_Outer;
                                            }
                                            if (t.YR != mailbox.Ln) {
                                                E.c(b.mW, "Upsync skipped; mailbox changed, id=" + long2, new Object[0]);
                                                final int a2 = 0;
                                                continue Label_0299_Outer;
                                            }
                                            E.c(b.mW, "Upsync triggered for message id=" + long2, new Object[0]);
                                            int a2 = a(context, a, mailbox, t, b2) ? 1 : 0;
                                            continue Label_0299_Outer;
                                        }
                                        if (com.android.email.b.DEBUG) {
                                            final MessagingException ex;
                                            E.c(b.mW, "Unable to process pending upsync for id=" + long2 + ": " + ex, new Object[0]);
                                        }
                                        return;
                                    }
                                    if (query2 != null) {
                                        query2.close();
                                    }
                                    if (a != null) {
                                        a.iM();
                                        n = long2;
                                        b3 = a;
                                        break;
                                    }
                                    n = long2;
                                    b3 = a;
                                    break;
                                }
                            }
                            return;
                        }
                        finally {
                            if (query != null) {
                                query.close();
                            }
                        }
                    }
                    catch (MessagingException ex) {
                        final long long2 = n;
                        continue Label_0299;
                    }
                    break;
                }
                Mailbox v = mailbox;
                continue;
            }
        }
    }
    
    private static void a(final Context context, final Account account, final Folder folder, final ArrayList<Message> list, final Mailbox mailbox) {
        final FetchProfile fetchProfile = new FetchProfile();
        ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WL);
        folder.a(list.toArray(new Message[list.size()]), fetchProfile, null);
        final Message[] array = { null };
        for (final Message message : list) {
            final ArrayList<j> list2 = new ArrayList<j>();
            i.a(message, list2, new ArrayList<j>());
            array[0] = message;
            for (final j j : list2) {
                fetchProfile.clear();
                ((ArrayList<FetchProfile$Item>)fetchProfile).add(j);
                folder.a(array, fetchProfile, null);
            }
            H.a(context, message, account, mailbox, 1);
        }
    }
    
    private static boolean a(final Context context, final com.android.email.mail.b b, final Mailbox mailbox, final g g, final boolean b2) {
        int n = 1;
        final Folder y = b.y(mailbox.Vv);
        Label_0039: {
            if (y.exists()) {
                break Label_0039;
            }
            final Folder$FolderType xe = Folder$FolderType.Xe;
            if (y.iZ()) {
                break Label_0039;
            }
            n = 0;
            return n != 0;
        }
        y.a(Folder$OpenMode.Xg);
        if (y.iX() != Folder$OpenMode.Xg) {
            return false;
        }
        while (true) {
            Label_0482: {
                if (g.Vv == null || g.Vv.length() <= 0) {
                    break Label_0482;
                }
                final Message a = y.A(g.Vv);
                Label_0263: {
                    if (a != null) {
                        break Label_0263;
                    }
                    final Message a2 = com.android.email.l.a(context, g);
                    y.a(context, a2, b2);
                    g.Vv = a2.ln();
                    int n2 = 0;
                    int n3 = n;
                    int n4 = n;
                Label_0217_Outer:
                    while (true) {
                        while (true) {
                            if (n3 == 0 || g.Vv == null) {
                                break Label_0217;
                            }
                            try {
                                final Message a3 = y.A(g.Vv);
                                if (a3 != null) {
                                    final FetchProfile fetchProfile = new FetchProfile();
                                    ((ArrayList<FetchProfile$Item>)fetchProfile).add(FetchProfile$Item.WK);
                                    y.a(new Message[] { a3 }, fetchProfile, null);
                                    if (a3.lo() != null) {
                                        g.YO = a3.lo().getTime();
                                        n4 = n;
                                    }
                                }
                                if (n2 == 0 && n4 == 0) {
                                    return n != 0;
                                }
                                final Uri withAppendedId = ContentUris.withAppendedId(g.CONTENT_URI, g.Ln);
                                final ContentResolver contentResolver = context.getContentResolver();
                                if (n2 != 0) {
                                    contentResolver.delete(withAppendedId, (String)null, (String[])null);
                                    return n != 0;
                                }
                                if (n4 != 0) {
                                    final ContentValues contentValues = new ContentValues();
                                    contentValues.put("syncServerId", g.Vv);
                                    contentValues.put("syncServerTimeStamp", g.YO);
                                    contentResolver.update(withAppendedId, contentValues, (String)null, (String[])null);
                                    return n != 0;
                                }
                                return n != 0;
                                final FetchProfile fetchProfile2 = new FetchProfile();
                                ((ArrayList<FetchProfile$Item>)fetchProfile2).add(FetchProfile$Item.WK);
                                final Message[] array = new Message[n];
                                array[0] = a;
                                y.a(array, fetchProfile2, null);
                                final Date date = new Date(g.YO);
                                final Date lo = a.lo();
                                // iftrue(Label_0352:, lo == null || lo.compareTo(date) <= 0)
                                n2 = n;
                                n4 = 0;
                                n3 = 0;
                                continue Label_0217_Outer;
                                final Message a4;
                                Label_0352: {
                                    a4 = com.android.email.l.a(context, g);
                                }
                                fetchProfile2.clear();
                                ((ArrayList<FetchProfile$Item>)new FetchProfile()).add(FetchProfile$Item.WN);
                                y.a(context, a4, b2);
                                g.Vv = a4.ln();
                                a.a(Flag.WP, n != 0);
                                n3 = n;
                                n4 = n;
                                n2 = 0;
                                continue Label_0217_Outer;
                            }
                            catch (MessagingException ex) {
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                }
            }
            final Message a = null;
            continue;
        }
    }
    
    private static Mailbox b(final Context context, final g g) {
        if (!TextUtils.isEmpty((CharSequence)g.Za)) {
            final long lq = g.Lq;
            final String za = g.Za;
            if (lq == ImapService.Vh && za.equals(ImapService.Vi)) {
                return ImapService.Vj;
            }
            final Cursor query = context.getContentResolver().query(Mailbox.CONTENT_URI, Mailbox.XO, "serverId=? and accountKey=?", new String[] { za, Long.toString(lq) }, (String)null);
            try {
                if (query.moveToNext()) {
                    final Mailbox vj = new Mailbox();
                    vj.b(query);
                    ImapService.Vh = lq;
                    ImapService.Vi = za;
                    return ImapService.Vj = vj;
                }
                return null;
            }
            finally {
                query.close();
            }
        }
        return Mailbox.v(context, g.YR);
    }
    
    public static String kF() {
        if (ImapService.Vl == null) {
            return "";
        }
        return ImapService.Vl;
    }
    
    public IBinder onBind(final Intent intent) {
        this.Vm.g((Context)this);
        return (IBinder)this.Vm;
    }
    
    public void onCreate() {
        super.onCreate();
        ImapService.Vl = this.getString(2131296784);
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        return 1;
    }
}
