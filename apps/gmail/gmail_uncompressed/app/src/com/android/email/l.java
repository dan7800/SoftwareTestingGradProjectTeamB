package com.android.email;

import android.content.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import com.android.emailcommon.b.*;
import com.android.mail.utils.*;
import com.android.emailcommon.a.*;
import com.android.emailcommon.*;
import com.android.emailcommon.mail.*;
import java.util.*;

public final class l
{
    private static final HashMap<String, Integer> LR;
    
    static {
        LR = new HashMap<String, Integer>();
    }
    
    public static Message a(final Context p0, final g p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/android/emailcommon/a/f;
        //     3: dup            
        //     4: invokespecial   com/android/emailcommon/a/f.<init>:()V
        //     7: astore_2       
        //     8: aload_1        
        //     9: getfield        com/android/emailcommon/provider/g.YL:Ljava/lang/String;
        //    12: ifnonnull       551
        //    15: ldc             ""
        //    17: astore_3       
        //    18: aload_2        
        //    19: aload_3        
        //    20: invokevirtual   com/android/emailcommon/a/f.setSubject:(Ljava/lang/String;)V
        //    23: aload_1        
        //    24: getfield        com/android/emailcommon/provider/g.YT:Ljava/lang/String;
        //    27: invokestatic    com/android/emailcommon/mail/Address.ao:(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
        //    30: astore          4
        //    32: aload           4
        //    34: arraylength    
        //    35: ifle            46
        //    38: aload_2        
        //    39: aload           4
        //    41: iconst_0       
        //    42: aaload         
        //    43: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Address;)V
        //    46: aload_2        
        //    47: new             Ljava/util/Date;
        //    50: dup            
        //    51: aload_1        
        //    52: getfield        com/android/emailcommon/provider/g.YK:J
        //    55: invokespecial   java/util/Date.<init>:(J)V
        //    58: invokevirtual   com/android/emailcommon/a/f.a:(Ljava/util/Date;)V
        //    61: aload_2        
        //    62: aload_1        
        //    63: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //    66: invokevirtual   com/android/emailcommon/a/f.ap:(Ljava/lang/String;)V
        //    69: getstatic       com/android/emailcommon/mail/Flag.WP:Lcom/android/emailcommon/mail/Flag;
        //    72: astore          5
        //    74: aload_1        
        //    75: getfield        com/android/emailcommon/provider/g.Vu:I
        //    78: iconst_3       
        //    79: if_icmpne       559
        //    82: iconst_1       
        //    83: istore          6
        //    85: aload_2        
        //    86: aload           5
        //    88: iload           6
        //    90: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Flag;Z)V
        //    93: aload_2        
        //    94: getstatic       com/android/emailcommon/mail/Flag.WQ:Lcom/android/emailcommon/mail/Flag;
        //    97: aload_1        
        //    98: getfield        com/android/emailcommon/provider/g.Vs:Z
        //   101: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Flag;Z)V
        //   104: aload_2        
        //   105: getstatic       com/android/emailcommon/mail/Flag.WS:Lcom/android/emailcommon/mail/Flag;
        //   108: aload_1        
        //   109: getfield        com/android/emailcommon/provider/g.Vt:Z
        //   112: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Flag;Z)V
        //   115: aload_2        
        //   116: getstatic       com/android/emailcommon/mail/Message$RecipientType.Xo:Lcom/android/emailcommon/mail/Message$RecipientType;
        //   119: aload_1        
        //   120: getfield        com/android/emailcommon/provider/g.YU:Ljava/lang/String;
        //   123: invokestatic    com/android/emailcommon/mail/Address.ao:(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
        //   126: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
        //   129: aload_2        
        //   130: getstatic       com/android/emailcommon/mail/Message$RecipientType.Xp:Lcom/android/emailcommon/mail/Message$RecipientType;
        //   133: aload_1        
        //   134: getfield        com/android/emailcommon/provider/g.YV:Ljava/lang/String;
        //   137: invokestatic    com/android/emailcommon/mail/Address.ao:(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
        //   140: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
        //   143: aload_2        
        //   144: getstatic       com/android/emailcommon/mail/Message$RecipientType.Xq:Lcom/android/emailcommon/mail/Message$RecipientType;
        //   147: aload_1        
        //   148: getfield        com/android/emailcommon/provider/g.YW:Ljava/lang/String;
        //   151: invokestatic    com/android/emailcommon/mail/Address.ao:(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
        //   154: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
        //   157: aload_2        
        //   158: aload_1        
        //   159: getfield        com/android/emailcommon/provider/g.YX:Ljava/lang/String;
        //   162: invokestatic    com/android/emailcommon/mail/Address.ao:(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
        //   165: invokevirtual   com/android/emailcommon/a/f.a:([Lcom/android/emailcommon/mail/Address;)V
        //   168: aload_2        
        //   169: new             Ljava/util/Date;
        //   172: dup            
        //   173: aload_1        
        //   174: getfield        com/android/emailcommon/provider/g.YO:J
        //   177: invokespecial   java/util/Date.<init>:(J)V
        //   180: invokevirtual   com/android/emailcommon/a/f.b:(Ljava/util/Date;)V
        //   183: aload_2        
        //   184: aload_1        
        //   185: getfield        com/android/emailcommon/provider/g.YQ:Ljava/lang/String;
        //   188: invokevirtual   com/android/emailcommon/a/f.ab:(Ljava/lang/String;)V
        //   191: aload_2        
        //   192: ldc             "Content-Type"
        //   194: ldc             "multipart/mixed"
        //   196: invokevirtual   com/android/emailcommon/a/f.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   199: new             Lcom/android/emailcommon/a/h;
        //   202: dup            
        //   203: invokespecial   com/android/emailcommon/a/h.<init>:()V
        //   206: astore          7
        //   208: aload           7
        //   210: ldc             "mixed"
        //   212: invokevirtual   com/android/emailcommon/a/h.ae:(Ljava/lang/String;)V
        //   215: aload_2        
        //   216: aload           7
        //   218: invokevirtual   com/android/emailcommon/a/f.a:(Lcom/android/emailcommon/mail/c;)V
        //   221: aload           7
        //   223: ldc             "text/html"
        //   225: aload_0        
        //   226: aload_1        
        //   227: getfield        com/android/emailcommon/provider/g.Ln:J
        //   230: invokestatic    com/android/emailcommon/provider/e.s:(Landroid/content/Context;J)Ljava/lang/String;
        //   233: invokestatic    com/android/email/l.a:(Lcom/android/emailcommon/a/h;Ljava/lang/String;Ljava/lang/String;)V
        //   236: aload           7
        //   238: ldc             "text/plain"
        //   240: aload_0        
        //   241: aload_1        
        //   242: getfield        com/android/emailcommon/provider/g.Ln:J
        //   245: invokestatic    com/android/emailcommon/provider/e.r:(Landroid/content/Context;J)Ljava/lang/String;
        //   248: invokestatic    com/android/email/l.a:(Lcom/android/emailcommon/a/h;Ljava/lang/String;Ljava/lang/String;)V
        //   251: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.Yh:Landroid/net/Uri;
        //   254: aload_1        
        //   255: getfield        com/android/emailcommon/provider/g.Ln:J
        //   258: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   261: astore          12
        //   263: aload_0        
        //   264: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   267: aload           12
        //   269: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.XO:[Ljava/lang/String;
        //   272: aconst_null    
        //   273: aconst_null    
        //   274: aconst_null    
        //   275: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   278: astore          13
        //   280: aload           13
        //   282: ifnull          713
        //   285: aload           13
        //   287: invokeinterface android/database/Cursor.moveToNext:()Z
        //   292: ifeq            713
        //   295: new             Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //   298: dup            
        //   299: invokespecial   com/android/emailcommon/provider/EmailContent$Attachment.<init>:()V
        //   302: astore          15
        //   304: aload           15
        //   306: aload           13
        //   308: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.b:(Landroid/database/Cursor;)V
        //   311: aload           15
        //   313: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yu:[B
        //   316: ifnull          639
        //   319: new             Ljava/io/ByteArrayInputStream;
        //   322: dup            
        //   323: aload           15
        //   325: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yu:[B
        //   328: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //   331: astore          20
        //   333: aload           15
        //   335: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ym:Ljava/lang/String;
        //   338: astore          21
        //   340: aload           15
        //   342: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Lo:J
        //   345: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   348: astore          22
        //   350: aload           15
        //   352: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yn:Ljava/lang/String;
        //   355: astore          23
        //   357: aload           15
        //   359: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yl:Ljava/lang/String;
        //   362: astore          24
        //   364: aload           20
        //   366: ifnull          696
        //   369: new             Lcom/android/emailcommon/a/c;
        //   372: dup            
        //   373: new             Lcom/android/emailcommon/mail/b;
        //   376: dup            
        //   377: aload           20
        //   379: invokespecial   com/android/emailcommon/mail/b.<init>:(Ljava/io/InputStream;)V
        //   382: aload           21
        //   384: invokespecial   com/android/emailcommon/a/c.<init>:(Lcom/android/emailcommon/mail/c;Ljava/lang/String;)V
        //   387: astore          25
        //   389: aload           25
        //   391: ldc             "Content-Transfer-Encoding"
        //   393: ldc             "base64"
        //   395: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   398: new             Ljava/lang/StringBuilder;
        //   401: dup            
        //   402: ldc_w           "attachment;\n "
        //   405: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   408: astore          26
        //   410: aload           24
        //   412: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   415: ifne            727
        //   418: new             Ljava/lang/StringBuilder;
        //   421: dup            
        //   422: ldc_w           "filename=\""
        //   425: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   428: aload           24
        //   430: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   433: ldc_w           "\";"
        //   436: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   439: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   442: astore          27
        //   444: aload           25
        //   446: ldc_w           "Content-Disposition"
        //   449: aload           26
        //   451: aload           27
        //   453: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   456: ldc_w           "size="
        //   459: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   462: aload           22
        //   464: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   467: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   470: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   473: aload           23
        //   475: ifnull          488
        //   478: aload           25
        //   480: ldc_w           "Content-ID"
        //   483: aload           23
        //   485: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   488: aload           7
        //   490: aload           25
        //   492: invokevirtual   com/android/emailcommon/mail/h.a:(Lcom/android/emailcommon/mail/d;)V
        //   495: goto            280
        //   498: astore          16
        //   500: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   503: astore          17
        //   505: iconst_1       
        //   506: anewarray       Ljava/lang/Object;
        //   509: astore          18
        //   511: aload           18
        //   513: iconst_0       
        //   514: aload           15
        //   516: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.lK:()Ljava/lang/String;
        //   519: aastore        
        //   520: aload           17
        //   522: ldc_w           "File Not Found error on %s while upsyncing message"
        //   525: aload           18
        //   527: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   530: pop            
        //   531: goto            280
        //   534: astore          14
        //   536: aload           13
        //   538: ifnull          548
        //   541: aload           13
        //   543: invokeinterface android/database/Cursor.close:()V
        //   548: aload           14
        //   550: athrow         
        //   551: aload_1        
        //   552: getfield        com/android/emailcommon/provider/g.YL:Ljava/lang/String;
        //   555: astore_3       
        //   556: goto            18
        //   559: iconst_0       
        //   560: istore          6
        //   562: goto            85
        //   565: astore          8
        //   567: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   570: new             Ljava/lang/StringBuilder;
        //   573: dup            
        //   574: ldc_w           "Exception while reading html body "
        //   577: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   580: aload           8
        //   582: invokevirtual   java/lang/RuntimeException.toString:()Ljava/lang/String;
        //   585: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   588: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   591: iconst_0       
        //   592: anewarray       Ljava/lang/Object;
        //   595: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   598: pop            
        //   599: goto            236
        //   602: astore          10
        //   604: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   607: new             Ljava/lang/StringBuilder;
        //   610: dup            
        //   611: ldc_w           "Exception while reading text body "
        //   614: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   617: aload           10
        //   619: invokevirtual   java/lang/RuntimeException.toString:()Ljava/lang/String;
        //   622: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   625: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   628: iconst_0       
        //   629: anewarray       Ljava/lang/Object;
        //   632: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   635: pop            
        //   636: goto            251
        //   639: aload           15
        //   641: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.lK:()Ljava/lang/String;
        //   644: astore          29
        //   646: aload           29
        //   648: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   651: ifeq            661
        //   654: aload           15
        //   656: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.lL:()Ljava/lang/String;
        //   659: astore          29
        //   661: aload           29
        //   663: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   666: ifeq            675
        //   669: aconst_null    
        //   670: astore          20
        //   672: goto            333
        //   675: aload           29
        //   677: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   680: astore          30
        //   682: aload_0        
        //   683: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   686: aload           30
        //   688: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //   691: astore          20
        //   693: goto            333
        //   696: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   699: ldc_w           "Could not open attachment file for upsync"
        //   702: iconst_0       
        //   703: anewarray       Ljava/lang/Object;
        //   706: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   709: pop            
        //   710: goto            280
        //   713: aload           13
        //   715: ifnull          725
        //   718: aload           13
        //   720: invokeinterface android/database/Cursor.close:()V
        //   725: aload_2        
        //   726: areturn        
        //   727: ldc             ""
        //   729: astore          27
        //   731: goto            444
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  221    236    565    602    Ljava/lang/RuntimeException;
        //  236    251    602    639    Ljava/lang/RuntimeException;
        //  285    311    534    551    Any
        //  311    333    498    534    Ljava/io/FileNotFoundException;
        //  311    333    534    551    Any
        //  333    364    498    534    Ljava/io/FileNotFoundException;
        //  333    364    534    551    Any
        //  369    444    498    534    Ljava/io/FileNotFoundException;
        //  369    444    534    551    Any
        //  444    473    498    534    Ljava/io/FileNotFoundException;
        //  444    473    534    551    Any
        //  478    488    498    534    Ljava/io/FileNotFoundException;
        //  478    488    534    551    Any
        //  488    495    498    534    Ljava/io/FileNotFoundException;
        //  488    495    534    551    Any
        //  500    531    534    551    Any
        //  639    661    498    534    Ljava/io/FileNotFoundException;
        //  639    661    534    551    Any
        //  661    669    498    534    Ljava/io/FileNotFoundException;
        //  661    669    534    551    Any
        //  675    693    498    534    Ljava/io/FileNotFoundException;
        //  675    693    534    551    Any
        //  696    710    498    534    Ljava/io/FileNotFoundException;
        //  696    710    534    551    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0236:
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
    
    private static EmailContent$Attachment a(final j j) {
        long long1 = 0L;
        String yl = i.r(i.ag(j.getContentType()), "name");
        if (TextUtils.isEmpty((CharSequence)yl)) {
            yl = i.r(i.ag(j.kP()), "filename");
        }
        final String kp = j.kP();
    Label_0085:
        while (true) {
            if (TextUtils.isEmpty((CharSequence)kp)) {
                break Label_0085;
            }
            final String r = i.r(kp, "size");
            if (TextUtils.isEmpty((CharSequence)r)) {
                break Label_0085;
            }
            while (true) {
                while (true) {
                    try {
                        long1 = Long.parseLong(r);
                        final String[] y = j.Y("X-Android-Attachment-StoreData");
                        if (y != null) {
                            final String yr = y[0];
                            final EmailContent$Attachment emailContent$Attachment = new EmailContent$Attachment();
                            emailContent$Attachment.Ym = a.u(yl, j.getMimeType());
                            emailContent$Attachment.Yl = yl;
                            emailContent$Attachment.Lo = long1;
                            emailContent$Attachment.Yn = j.kQ();
                            emailContent$Attachment.ax(null);
                            emailContent$Attachment.Yr = yr;
                            emailContent$Attachment.Ys = "B";
                            return emailContent$Attachment;
                        }
                    }
                    catch (NumberFormatException ex) {
                        E.b(E.TAG, ex, "Could not decode size \"%s\" from attachment part", long1);
                        continue Label_0085;
                    }
                    final String yr = null;
                    continue;
                }
            }
            break;
        }
    }
    
    private static void a(final Context p0, final g p1, final j p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_2        
        //     3: invokestatic    com/android/email/l.a:(Lcom/android/emailcommon/mail/j;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //     6: astore          4
        //     8: aload           4
        //    10: aload_1        
        //    11: getfield        com/android/emailcommon/provider/g.Ln:J
        //    14: putfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //    17: aload           4
        //    19: aload_1        
        //    20: getfield        com/android/emailcommon/provider/g.Lq:J
        //    23: putfield        com/android/emailcommon/provider/EmailContent$Attachment.Lq:J
        //    26: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.Yh:Landroid/net/Uri;
        //    29: aload_1        
        //    30: getfield        com/android/emailcommon/provider/g.Ln:J
        //    33: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //    36: astore          5
        //    38: aload_0        
        //    39: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    42: aload           5
        //    44: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.XO:[Ljava/lang/String;
        //    47: aconst_null    
        //    48: aconst_null    
        //    49: aconst_null    
        //    50: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    53: astore          6
        //    55: aload           6
        //    57: invokeinterface android/database/Cursor.moveToNext:()Z
        //    62: istore          8
        //    64: iconst_0       
        //    65: istore          9
        //    67: iload           8
        //    69: ifeq            165
        //    72: new             Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //    75: dup            
        //    76: invokespecial   com/android/emailcommon/provider/EmailContent$Attachment.<init>:()V
        //    79: astore          10
        //    81: aload           10
        //    83: aload           6
        //    85: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.b:(Landroid/database/Cursor;)V
        //    88: aload           10
        //    90: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yl:Ljava/lang/String;
        //    93: aload           4
        //    95: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yl:Ljava/lang/String;
        //    98: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //   101: ifeq            55
        //   104: aload           10
        //   106: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ym:Ljava/lang/String;
        //   109: aload           4
        //   111: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ym:Ljava/lang/String;
        //   114: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //   117: ifeq            55
        //   120: aload           10
        //   122: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yn:Ljava/lang/String;
        //   125: aload           4
        //   127: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yn:Ljava/lang/String;
        //   130: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //   133: ifeq            55
        //   136: aload           10
        //   138: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yr:Ljava/lang/String;
        //   141: aload           4
        //   143: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yr:Ljava/lang/String;
        //   146: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //   149: ifeq            55
        //   152: aload           4
        //   154: aload           10
        //   156: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ln:J
        //   159: putfield        com/android/emailcommon/provider/EmailContent$Attachment.Ln:J
        //   162: iconst_1       
        //   163: istore          9
        //   165: aload           6
        //   167: invokeinterface android/database/Cursor.close:()V
        //   172: iload           9
        //   174: ifne            184
        //   177: aload           4
        //   179: aload_0        
        //   180: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.ac:(Landroid/content/Context;)Landroid/net/Uri;
        //   183: pop            
        //   184: aload_1        
        //   185: getfield        com/android/emailcommon/provider/g.Lq:J
        //   188: lstore          11
        //   190: aload_2        
        //   191: invokeinterface com/android/emailcommon/mail/j.kO:()Lcom/android/emailcommon/mail/c;
        //   196: ifnull          406
        //   199: aload           4
        //   201: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ln:J
        //   204: lstore          14
        //   206: aload_0        
        //   207: lload           11
        //   209: invokestatic    com/android/emailcommon/b/a.A:(Landroid/content/Context;J)Ljava/io/File;
        //   212: astore          16
        //   214: aload           16
        //   216: invokevirtual   java/io/File.isDirectory:()Z
        //   219: ifne            253
        //   222: aload           16
        //   224: invokevirtual   java/io/File.mkdirs:()Z
        //   227: ifne            253
        //   230: new             Ljava/io/IOException;
        //   233: dup            
        //   234: ldc_w           "Could not create attachment directory"
        //   237: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   240: athrow         
        //   241: astore          7
        //   243: aload           6
        //   245: invokeinterface android/database/Cursor.close:()V
        //   250: aload           7
        //   252: athrow         
        //   253: aload_0        
        //   254: lload           11
        //   256: lload           14
        //   258: invokestatic    com/android/emailcommon/b/a.b:(Landroid/content/Context;JJ)Ljava/io/File;
        //   261: astore          17
        //   263: aload_2        
        //   264: invokeinterface com/android/emailcommon/mail/j.kO:()Lcom/android/emailcommon/mail/c;
        //   269: invokeinterface com/android/emailcommon/mail/c.getInputStream:()Ljava/io/InputStream;
        //   274: astore          20
        //   276: new             Ljava/io/FileOutputStream;
        //   279: dup            
        //   280: aload           17
        //   282: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   285: astore          21
        //   287: aload           20
        //   289: aload           21
        //   291: invokestatic    org/apache/a/a/a.c:(Ljava/io/InputStream;Ljava/io/OutputStream;)J
        //   294: lstore          22
        //   296: aload           20
        //   298: ifnull          306
        //   301: aload           20
        //   303: invokevirtual   java/io/InputStream.close:()V
        //   306: aload           21
        //   308: invokevirtual   java/io/FileOutputStream.close:()V
        //   311: lload           11
        //   313: lload           14
        //   315: invokestatic    com/android/emailcommon/b/a.c:(JJ)Landroid/net/Uri;
        //   318: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   321: astore          24
        //   323: aload           4
        //   325: lload           22
        //   327: putfield        com/android/emailcommon/provider/EmailContent$Attachment.Lo:J
        //   330: aload           4
        //   332: aload           24
        //   334: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.ax:(Ljava/lang/String;)V
        //   337: new             Landroid/content/ContentValues;
        //   340: dup            
        //   341: iconst_3       
        //   342: invokespecial   android/content/ContentValues.<init>:(I)V
        //   345: astore          25
        //   347: aload           25
        //   349: ldc_w           "size"
        //   352: lload           22
        //   354: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   357: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   360: aload           25
        //   362: ldc_w           "contentUri"
        //   365: aload           24
        //   367: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   370: aload           25
        //   372: ldc_w           "uiState"
        //   375: iconst_3       
        //   376: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   379: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   382: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.CONTENT_URI:Landroid/net/Uri;
        //   385: lload           14
        //   387: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   390: astore          26
        //   392: aload_0        
        //   393: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   396: aload           26
        //   398: aload           25
        //   400: aconst_null    
        //   401: aconst_null    
        //   402: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   405: pop            
        //   406: aload_1        
        //   407: getfield        com/android/emailcommon/provider/g.Zf:Ljava/util/ArrayList;
        //   410: ifnonnull       424
        //   413: aload_1        
        //   414: new             Ljava/util/ArrayList;
        //   417: dup            
        //   418: invokespecial   java/util/ArrayList.<init>:()V
        //   421: putfield        com/android/emailcommon/provider/g.Zf:Ljava/util/ArrayList;
        //   424: aload_1        
        //   425: getfield        com/android/emailcommon/provider/g.Zf:Ljava/util/ArrayList;
        //   428: aload           4
        //   430: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   433: pop            
        //   434: aload_1        
        //   435: iconst_1       
        //   436: putfield        com/android/emailcommon/provider/g.YN:Z
        //   439: return         
        //   440: astore          18
        //   442: aconst_null    
        //   443: astore          19
        //   445: aload           19
        //   447: ifnull          455
        //   450: aload           19
        //   452: invokevirtual   java/io/InputStream.close:()V
        //   455: aload_3        
        //   456: ifnull          463
        //   459: aload_3        
        //   460: invokevirtual   java/io/FileOutputStream.close:()V
        //   463: aload           18
        //   465: athrow         
        //   466: astore          18
        //   468: aload           20
        //   470: astore          19
        //   472: aconst_null    
        //   473: astore_3       
        //   474: goto            445
        //   477: astore          18
        //   479: aload           21
        //   481: astore_3       
        //   482: aload           20
        //   484: astore          19
        //   486: goto            445
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  55     64     241    253    Any
        //  72     162    241    253    Any
        //  263    276    440    445    Any
        //  276    287    466    477    Any
        //  287    296    477    489    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 216, Size: 216
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
    
    public static void a(final Context context, final g g, final ArrayList<j> list) {
        g.Zf = null;
        final Iterator<j> iterator = list.iterator();
        while (iterator.hasNext()) {
            a(context, g, iterator.next());
        }
    }
    
    private static void a(final h h, final String s, final String s2) {
        if (s2 == null) {
            return;
        }
        h.a(new c(new k(s2), s));
    }
    
    public static boolean a(final g g, final Message message, final long lq, final long yr) {
        final Address[] ku = message.kU();
        final Address[] a = message.a(Message$RecipientType.Xo);
        final Address[] a2 = message.a(Message$RecipientType.Xp);
        final Address[] a3 = message.a(Message$RecipientType.Xq);
        final Address[] kv = message.kV();
        final String subject = message.getSubject();
        final Date kt = message.kT();
        final Date lo = message.lo();
        if (ku != null && ku.length > 0) {
            g.Xy = ku[0].ll();
        }
        if (kt != null) {
            g.YK = kt.getTime();
        }
        else if (lo != null) {
            E.e(b.mW, "No sentDate, falling back to internalDate", new Object[0]);
            g.YK = lo.getTime();
        }
        if (subject != null) {
            g.YL = subject;
        }
        g.Vs = message.b(Flag.WQ);
        if (message.b(Flag.WR)) {
            g.dM |= 0x40000;
        }
        if (g.Vu != 1) {
            if (g.Xy == null || "".equals(g.Xy)) {
                g.Vu = 0;
            }
            else {
                g.Vu = 2;
            }
        }
        g.Vt = message.b(Flag.WS);
        g.Vv = message.ln();
        if (lo != null) {
            g.YO = lo.getTime();
        }
        final String kw = message.kW();
        if (kw != null) {
            g.YQ = kw;
        }
        g.YR = yr;
        g.Lq = lq;
        if (ku != null && ku.length > 0) {
            g.YT = Address.b(ku);
        }
        g.YU = Address.b(a);
        g.YV = Address.b(a2);
        g.YW = Address.b(a3);
        g.YX = Address.b(kv);
        return true;
    }
    
    public static void b(final Context context, final g g, final ArrayList<j> list) {
        for (final j j : list) {
            if (!TextUtils.isEmpty((CharSequence)i.r(i.ag(j.kP()), null))) {
                a(context, g, j);
            }
        }
    }
    
    @Deprecated
    public static int c(final Context context, final String s) {
        synchronized (l.class) {
            if (l.LR.size() == 0) {
                l.LR.put(context.getString(2131296747), 0);
                l.LR.put(context.getString(2131296748), 4);
                l.LR.put(context.getString(2131296749), 3);
                l.LR.put(context.getString(2131296750), 6);
                l.LR.put(context.getString(2131296751), 5);
                l.LR.put(context.getString(2131296752), 7);
            }
            int intValue;
            if (s == null || s.length() == 0) {
                intValue = 1;
            }
            else {
                final Integer n = l.LR.get(s);
                if (n != null) {
                    intValue = n;
                }
                else {
                    intValue = 1;
                }
            }
            return intValue;
        }
    }
}
