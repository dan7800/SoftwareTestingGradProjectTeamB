package com.android.email.service;

import com.android.mail.utils.*;
import com.android.emailcommon.*;
import com.android.email.mail.*;
import com.android.emailcommon.mail.*;
import com.android.email.*;
import android.content.*;
import android.database.*;
import android.net.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import com.android.emailcommon.service.*;

public abstract class l extends s implements r
{
    private static final String[] Uw;
    protected Context mContext;
    
    static {
        Uw = new String[] { "_id", "serverId", "type" };
    }
    
    public static void h(final Context context, final long n) {
        final Account k = Account.k(context, n);
        if (k == null) {
            E.f(E.TAG, "account %d not found in sendMailImpl", n);
        }
        else {
            TrafficStats.setThreadStatsTag(f.n(k));
            final m r = o.r(context);
            final long c = Mailbox.c(context, k.Ln, 4);
            if (c != -1L) {
                final ContentResolver contentResolver = context.getContentResolver();
                final Cursor query = contentResolver.query(g.CONTENT_URI, g.YI, "mailboxKey=?", new String[] { Long.toString(c) }, (String)null);
                a f;
                Mailbox d;
                ContentValues contentValues;
                long long1;
                g t;
                Uri withAppendedId;
                long ln;
                Label_0390_Outer:Block_19_Outer:
                while (true) {
                    Label_0334: {
                        try {
                            if (query.getCount() <= 0) {
                                return;
                            }
                            f = a.f(context, k);
                            b.a(k, context);
                            b.iJ();
                            d = Mailbox.d(context, n, 5);
                            contentValues = new ContentValues();
                            contentValues.put("mailboxKey", d.Ln);
                            while (query.moveToNext()) {
                                contentValues.remove("flags");
                                try {
                                    long1 = query.getLong(0);
                                    if (!com.android.emailcommon.b.s.D(context, long1)) {
                                        break Label_0334;
                                    }
                                    if (!com.android.email.b.DEBUG) {
                                        continue;
                                    }
                                    E.c(com.android.emailcommon.b.mW, "Can't send #" + long1 + "; unloaded attachments", new Object[0]);
                                }
                                catch (MessagingException ex) {
                                    if (!(ex instanceof AuthenticationFailedException) || r == null) {
                                        continue;
                                    }
                                    r.a(k.Ln, false);
                                }
                            }
                        }
                        catch (MessagingException ex2) {
                            if (ex2 instanceof AuthenticationFailedException && r != null) {
                                r.a(k.Ln, false);
                            }
                            return;
                            while (true) {
                                while (true) {
                                    contentValues.put("flags", 0xFFCFFFFC & t.dM);
                                    contentResolver.update(withAppendedId, contentValues, (String)null, (String[])null);
                                    continue Label_0390_Outer;
                                    com.android.emailcommon.b.a.c(context, k.Ln, long1);
                                    continue Block_19_Outer;
                                }
                                f.o(long1);
                                withAppendedId = ContentUris.withAppendedId(g.YD, long1);
                                ln = k.Ln;
                                com.android.emailcommon.b.a.B(context, long1);
                                t = g.t(context, long1);
                                continue;
                            }
                        }
                        // iftrue(Label_0390:, 0x2 & t.dM == 0x0)
                        finally {
                            query.close();
                        }
                    }
                    break;
                }
                if (r != null) {
                    r.f(k.Ln);
                }
                query.close();
            }
        }
    }
    
    protected final void A(final long n) {
        final Mailbox v = Mailbox.v(this.mContext, n);
        if (v != null) {
            final Account k = Account.k(this.mContext, v.Lq);
            if (k != null) {
                final android.accounts.Account account = new android.accounts.Account(k.NP, n.j(this.mContext, k.Ln).accountType);
                final Bundle g = Mailbox.G(n);
                g.putBoolean("force", true);
                g.putBoolean("do_not_retry", true);
                g.putBoolean("expedited", true);
                ContentResolver.requestSync(account, EmailContent.AUTHORITY, g);
                E.d(com.android.emailcommon.b.mW, "requestSync EmailServiceStub startSync %s, %s", k.toString(), g.toString());
            }
        }
    }
    
    @Override
    public final void B(final long p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //     4: lload_1        
        //     5: invokestatic    com/android/emailcommon/provider/Account.k:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
        //     8: astore_3       
        //     9: aload_3        
        //    10: ifnonnull       44
        //    13: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //    16: astore          38
        //    18: iconst_1       
        //    19: anewarray       Ljava/lang/Object;
        //    22: astore          39
        //    24: aload           39
        //    26: iconst_0       
        //    27: lload_1        
        //    28: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    31: aastore        
        //    32: aload           38
        //    34: ldc_w           "Account %d not found in updateFolderList"
        //    37: aload           39
        //    39: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    42: pop            
        //    43: return         
        //    44: ldc2_w          -1
        //    47: lstore          4
        //    49: aload_0        
        //    50: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //    53: pop            
        //    54: aload_3        
        //    55: invokestatic    com/android/emailcommon/f.l:(Lcom/android/emailcommon/provider/Account;)I
        //    58: invokestatic    android/net/TrafficStats.setThreadStatsTag:(I)V
        //    61: aconst_null    
        //    62: astore          7
        //    64: aload_3        
        //    65: aload_0        
        //    66: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //    69: invokestatic    com/android/email/mail/b.a:(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
        //    72: astore          14
        //    74: aload           14
        //    76: astore          12
        //    78: getstatic       com/android/emailcommon/provider/Mailbox.ZG:[I
        //    81: astore          15
        //    83: aload           15
        //    85: arraylength    
        //    86: istore          16
        //    88: iconst_0       
        //    89: istore          17
        //    91: iload           17
        //    93: iload           16
        //    95: if_icmpge       176
        //    98: aload           15
        //   100: iload           17
        //   102: iaload         
        //   103: istore          18
        //   105: aload_0        
        //   106: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   109: lload_1        
        //   110: iload           18
        //   112: invokestatic    com/android/emailcommon/provider/Mailbox.c:(Landroid/content/Context;JI)J
        //   115: ldc2_w          -1
        //   118: lcmp           
        //   119: ifne            618
        //   122: aload_0        
        //   123: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   126: lload_1        
        //   127: iload           18
        //   129: invokestatic    com/android/emailcommon/provider/Mailbox.b:(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
        //   132: astore          21
        //   134: aload           12
        //   136: iload           18
        //   138: invokevirtual   com/android/email/mail/b.aU:(I)Z
        //   141: ifeq            151
        //   144: aload           21
        //   146: bipush          8
        //   148: putfield        com/android/emailcommon/provider/Mailbox.Zx:I
        //   151: aload           21
        //   153: aload_0        
        //   154: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   157: invokevirtual   com/android/emailcommon/provider/Mailbox.ac:(Landroid/content/Context;)Landroid/net/Uri;
        //   160: pop            
        //   161: iload           18
        //   163: ifne            618
        //   166: aload           21
        //   168: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //   171: lstore          19
        //   173: goto            622
        //   176: aload           12
        //   178: invokevirtual   com/android/email/mail/b.iK:()[Lcom/android/emailcommon/mail/Folder;
        //   181: astore          23
        //   183: new             Ljava/util/HashSet;
        //   186: dup            
        //   187: invokespecial   java/util/HashSet.<init>:()V
        //   190: astore          24
        //   192: aload           23
        //   194: arraylength    
        //   195: istore          25
        //   197: iconst_0       
        //   198: istore          26
        //   200: iload           26
        //   202: iload           25
        //   204: if_icmpge       227
        //   207: aload           24
        //   209: aload           23
        //   211: iload           26
        //   213: aaload         
        //   214: invokevirtual   com/android/emailcommon/mail/Folder.getName:()Ljava/lang/String;
        //   217: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   220: pop            
        //   221: iinc            26, 1
        //   224: goto            200
        //   227: aload_0        
        //   228: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   231: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   234: astore          28
        //   236: getstatic       com/android/emailcommon/provider/Mailbox.CONTENT_URI:Landroid/net/Uri;
        //   239: astore          29
        //   241: getstatic       com/android/email/service/l.Uw:[Ljava/lang/String;
        //   244: astore          30
        //   246: iconst_1       
        //   247: anewarray       Ljava/lang/String;
        //   250: astore          31
        //   252: aload           31
        //   254: iconst_0       
        //   255: aload_3        
        //   256: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   259: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   262: aastore        
        //   263: aload           28
        //   265: aload           29
        //   267: aload           30
        //   269: ldc_w           "accountKey=?"
        //   272: aload           31
        //   274: aconst_null    
        //   275: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   278: astore          32
        //   280: aload           32
        //   282: invokeinterface android/database/Cursor.moveToNext:()Z
        //   287: ifeq            482
        //   290: aload           24
        //   292: aload           32
        //   294: iconst_1       
        //   295: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   300: invokevirtual   java/util/HashSet.contains:(Ljava/lang/Object;)Z
        //   303: ifne            280
        //   306: aload           32
        //   308: iconst_2       
        //   309: invokeinterface android/database/Cursor.getInt:(I)I
        //   314: istore          33
        //   316: aload           32
        //   318: iconst_0       
        //   319: invokeinterface android/database/Cursor.getLong:(I)J
        //   324: lstore          34
        //   326: iload           33
        //   328: tableswitch {
        //                0: 280
        //                1: 380
        //                2: 380
        //                3: 280
        //                4: 280
        //                5: 280
        //                6: 280
        //                7: 380
        //                8: 280
        //          default: 380
        //        }
        //   380: aload_0        
        //   381: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   384: lload_1        
        //   385: lload           34
        //   387: invokestatic    com/android/emailcommon/b/a.d:(Landroid/content/Context;JJ)V
        //   390: getstatic       com/android/emailcommon/provider/Mailbox.CONTENT_URI:Landroid/net/Uri;
        //   393: lload           34
        //   395: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   398: astore          36
        //   400: aload_0        
        //   401: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   404: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   407: aload           36
        //   409: aconst_null    
        //   410: aconst_null    
        //   411: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   414: pop            
        //   415: goto            280
        //   418: astore          8
        //   420: aload           32
        //   422: astore          10
        //   424: aload           12
        //   426: astore          9
        //   428: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   431: aload           8
        //   433: ldc_w           "Error in updateFolderList"
        //   436: iconst_0       
        //   437: anewarray       Ljava/lang/Object;
        //   440: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   443: pop            
        //   444: aload           10
        //   446: ifnull          456
        //   449: aload           10
        //   451: invokeinterface android/database/Cursor.close:()V
        //   456: aload           9
        //   458: ifnull          466
        //   461: aload           9
        //   463: invokevirtual   com/android/email/mail/b.iM:()V
        //   466: lload           4
        //   468: ldc2_w          -1
        //   471: lcmp           
        //   472: ifeq            43
        //   475: aload_0        
        //   476: lload           4
        //   478: invokevirtual   com/android/email/service/l.A:(J)V
        //   481: return         
        //   482: aload           32
        //   484: ifnull          494
        //   487: aload           32
        //   489: invokeinterface android/database/Cursor.close:()V
        //   494: aload           12
        //   496: ifnull          504
        //   499: aload           12
        //   501: invokevirtual   com/android/email/mail/b.iM:()V
        //   504: lload           4
        //   506: ldc2_w          -1
        //   509: lcmp           
        //   510: ifeq            43
        //   513: aload_0        
        //   514: lload           4
        //   516: invokevirtual   com/android/email/service/l.A:(J)V
        //   519: return         
        //   520: astore          11
        //   522: aconst_null    
        //   523: astore          12
        //   525: aload           7
        //   527: ifnull          537
        //   530: aload           7
        //   532: invokeinterface android/database/Cursor.close:()V
        //   537: aload           12
        //   539: ifnull          547
        //   542: aload           12
        //   544: invokevirtual   com/android/email/mail/b.iM:()V
        //   547: lload           4
        //   549: ldc2_w          -1
        //   552: lcmp           
        //   553: ifeq            562
        //   556: aload_0        
        //   557: lload           4
        //   559: invokevirtual   com/android/email/service/l.A:(J)V
        //   562: aload           11
        //   564: athrow         
        //   565: astore          11
        //   567: aconst_null    
        //   568: astore          7
        //   570: goto            525
        //   573: astore          11
        //   575: aload           32
        //   577: astore          7
        //   579: goto            525
        //   582: astore          11
        //   584: aload           9
        //   586: astore          12
        //   588: aload           10
        //   590: astore          7
        //   592: goto            525
        //   595: astore          8
        //   597: aconst_null    
        //   598: astore          9
        //   600: aconst_null    
        //   601: astore          10
        //   603: goto            428
        //   606: astore          8
        //   608: aload           12
        //   610: astore          9
        //   612: aconst_null    
        //   613: astore          10
        //   615: goto            428
        //   618: lload           4
        //   620: lstore          19
        //   622: iinc            17, 1
        //   625: lload           19
        //   627: lstore          4
        //   629: goto            91
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  64     74     595    606    Lcom/android/emailcommon/mail/MessagingException;
        //  64     74     520    525    Any
        //  78     88     606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  78     88     565    573    Any
        //  98     151    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  98     151    565    573    Any
        //  151    161    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  151    161    565    573    Any
        //  166    173    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  166    173    565    573    Any
        //  176    197    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  176    197    565    573    Any
        //  207    221    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  207    221    565    573    Any
        //  227    280    606    618    Lcom/android/emailcommon/mail/MessagingException;
        //  227    280    565    573    Any
        //  280    326    418    428    Lcom/android/emailcommon/mail/MessagingException;
        //  280    326    573    582    Any
        //  380    415    418    428    Lcom/android/emailcommon/mail/MessagingException;
        //  380    415    573    582    Any
        //  428    444    582    595    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 268, Size: 268
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
    
    @Override
    public final void C(final long n) {
        E.f(com.android.emailcommon.b.mW, "pushModify invalid for account type for %d", n);
    }
    
    @Override
    public final void D(final long n) {
        h(this.mContext, n);
    }
    
    @Override
    public final void R(final String s) {
    }
    
    @Override
    public final int a(final long n, final Bundle bundle) {
        return 0;
    }
    
    @Override
    public int a(final long n, final SearchParams searchParams, final long n2) {
        return 0;
    }
    
    @Override
    public final Bundle a(final HostAuthCompat hostAuthCompat) {
        return null;
    }
    
    @Override
    public void a(final u p0, final long p1, final long p2, final boolean p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //     4: lload           4
        //     6: invokestatic    com/android/emailcommon/provider/EmailContent$Attachment.o:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //     9: astore          14
        //    11: aload           14
        //    13: ifnonnull       29
        //    16: aload_1        
        //    17: lconst_0       
        //    18: lload           4
        //    20: bipush          17
        //    22: iconst_0       
        //    23: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //    28: return         
        //    29: aload           14
        //    31: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //    34: lstore          15
        //    36: aload_0        
        //    37: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //    40: aload           14
        //    42: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //    45: invokestatic    com/android/emailcommon/provider/g.t:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
        //    48: astore          17
        //    50: aload           17
        //    52: ifnonnull       162
        //    55: aload_1        
        //    56: lload           15
        //    58: lload           4
        //    60: bipush          16
        //    62: iconst_0       
        //    63: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //    68: return         
        //    69: astore          9
        //    71: aconst_null    
        //    72: astore          8
        //    74: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //    77: aload           9
        //    79: ldc_w           "Error loading attachment"
        //    82: iconst_0       
        //    83: anewarray       Ljava/lang/Object;
        //    86: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //    89: pop            
        //    90: new             Landroid/content/ContentValues;
        //    93: dup            
        //    94: iconst_1       
        //    95: invokespecial   android/content/ContentValues.<init>:(I)V
        //    98: astore          11
        //   100: aload           11
        //   102: ldc_w           "uiState"
        //   105: iconst_1       
        //   106: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   109: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   112: getstatic       com/android/emailcommon/provider/EmailContent$Attachment.CONTENT_URI:Landroid/net/Uri;
        //   115: lload           4
        //   117: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   120: astore          12
        //   122: aload_0        
        //   123: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   126: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   129: aload           12
        //   131: aload           11
        //   133: aconst_null    
        //   134: aconst_null    
        //   135: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   138: pop            
        //   139: aload_1        
        //   140: lconst_0       
        //   141: lload           4
        //   143: bipush          32
        //   145: iconst_0       
        //   146: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //   151: aload           8
        //   153: ifnull          728
        //   156: aload           8
        //   158: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   161: return         
        //   162: aload_0        
        //   163: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   166: aload           14
        //   168: invokestatic    com/android/emailcommon/b/s.b:(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
        //   171: ifeq            214
        //   174: aload           14
        //   176: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yv:I
        //   179: iconst_3       
        //   180: if_icmpne       214
        //   183: aload_1        
        //   184: lload           15
        //   186: lload           4
        //   188: iconst_0       
        //   189: iconst_0       
        //   190: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //   195: return         
        //   196: astore          7
        //   198: aconst_null    
        //   199: astore          8
        //   201: aload           8
        //   203: ifnull          211
        //   206: aload           8
        //   208: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   211: aload           7
        //   213: athrow         
        //   214: aload_1        
        //   215: lload           15
        //   217: lload           4
        //   219: iconst_1       
        //   220: iconst_0       
        //   221: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //   226: aload_0        
        //   227: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   230: aload           17
        //   232: getfield        com/android/emailcommon/provider/g.Lq:J
        //   235: invokestatic    com/android/emailcommon/provider/Account.k:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
        //   238: astore          18
        //   240: aload_0        
        //   241: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   244: aload           17
        //   246: getfield        com/android/emailcommon/provider/g.YR:J
        //   249: invokestatic    com/android/emailcommon/provider/Mailbox.v:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
        //   252: astore          19
        //   254: aload           19
        //   256: ifnull          728
        //   259: aload           19
        //   261: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //   264: iconst_4       
        //   265: if_icmpne       397
        //   268: aload_0        
        //   269: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   272: astore          28
        //   274: getstatic       com/android/emailcommon/provider/e.CONTENT_URI:Landroid/net/Uri;
        //   277: astore          29
        //   279: iconst_1       
        //   280: anewarray       Ljava/lang/String;
        //   283: dup            
        //   284: iconst_0       
        //   285: ldc_w           "sourceMessageKey"
        //   288: aastore        
        //   289: astore          30
        //   291: iconst_1       
        //   292: anewarray       Ljava/lang/String;
        //   295: astore          31
        //   297: aload           31
        //   299: iconst_0       
        //   300: lload           15
        //   302: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   305: aastore        
        //   306: aload           28
        //   308: aload           29
        //   310: aload           30
        //   312: ldc_w           "messageKey=?"
        //   315: aload           31
        //   317: aconst_null    
        //   318: ldc2_w          -1
        //   321: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   324: invokestatic    com/android/emailcommon/b/s.a:(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
        //   327: invokevirtual   java/lang/Long.longValue:()J
        //   330: lstore          32
        //   332: lload           32
        //   334: ldc2_w          -1
        //   337: lcmp           
        //   338: ifeq            729
        //   341: aload_0        
        //   342: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   345: lload           32
        //   347: invokestatic    com/android/emailcommon/provider/g.t:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
        //   350: astore          34
        //   352: aload           34
        //   354: ifnull          729
        //   357: aload_0        
        //   358: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   361: aload           34
        //   363: getfield        com/android/emailcommon/provider/g.YR:J
        //   366: invokestatic    com/android/emailcommon/provider/Mailbox.v:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
        //   369: astore          19
        //   371: aload           17
        //   373: aload           34
        //   375: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   378: putfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   381: goto            729
        //   384: aload_1        
        //   385: lload           15
        //   387: lload           4
        //   389: iconst_0       
        //   390: iconst_0       
        //   391: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //   396: return         
        //   397: aload           19
        //   399: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //   402: bipush          8
        //   404: if_icmpne       729
        //   407: aload           17
        //   409: getfield        com/android/emailcommon/provider/g.YS:J
        //   412: lconst_0       
        //   413: lcmp           
        //   414: ifeq            729
        //   417: aload_0        
        //   418: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   421: aload           17
        //   423: getfield        com/android/emailcommon/provider/g.YS:J
        //   426: invokestatic    com/android/emailcommon/provider/Mailbox.v:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
        //   429: astore          19
        //   431: goto            729
        //   434: aload_0        
        //   435: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   438: pop            
        //   439: aload           18
        //   441: invokestatic    com/android/emailcommon/f.m:(Lcom/android/emailcommon/provider/Account;)I
        //   444: invokestatic    android/net/TrafficStats.setThreadStatsTag:(I)V
        //   447: aload           18
        //   449: aload_0        
        //   450: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   453: invokestatic    com/android/email/mail/b.a:(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
        //   456: aload           19
        //   458: getfield        com/android/emailcommon/provider/Mailbox.Vv:Ljava/lang/String;
        //   461: invokevirtual   com/android/email/mail/b.y:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
        //   464: astore          21
        //   466: aload           21
        //   468: astore          8
        //   470: aload           8
        //   472: getstatic       com/android/emailcommon/mail/Folder$OpenMode.Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;
        //   475: invokevirtual   com/android/emailcommon/mail/Folder.a:(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
        //   478: aload           8
        //   480: aload           17
        //   482: getfield        com/android/emailcommon/provider/g.Vv:Ljava/lang/String;
        //   485: invokevirtual   com/android/emailcommon/mail/Folder.C:(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
        //   488: astore          22
        //   490: new             Lcom/android/emailcommon/a/c;
        //   493: dup            
        //   494: invokespecial   com/android/emailcommon/a/c.<init>:()V
        //   497: astore          23
        //   499: aload           23
        //   501: aload           14
        //   503: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Lo:J
        //   506: l2i            
        //   507: invokevirtual   com/android/emailcommon/a/c.setSize:(I)V
        //   510: aload           23
        //   512: ldc_w           "X-Android-Attachment-StoreData"
        //   515: aload           14
        //   517: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yr:Ljava/lang/String;
        //   520: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   523: iconst_2       
        //   524: anewarray       Ljava/lang/Object;
        //   527: astore          24
        //   529: aload           24
        //   531: iconst_0       
        //   532: aload           14
        //   534: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Ym:Ljava/lang/String;
        //   537: aastore        
        //   538: aload           24
        //   540: iconst_1       
        //   541: aload           14
        //   543: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yl:Ljava/lang/String;
        //   546: aastore        
        //   547: aload           23
        //   549: ldc_w           "Content-Type"
        //   552: ldc_w           "%s;\n name=\"%s\""
        //   555: aload           24
        //   557: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   560: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   563: aload           23
        //   565: ldc_w           "Content-Transfer-Encoding"
        //   568: ldc_w           "base64"
        //   571: invokevirtual   com/android/emailcommon/a/c.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   574: new             Lcom/android/emailcommon/a/h;
        //   577: dup            
        //   578: invokespecial   com/android/emailcommon/a/h.<init>:()V
        //   581: astore          25
        //   583: aload           25
        //   585: ldc_w           "mixed"
        //   588: invokevirtual   com/android/emailcommon/a/h.ae:(Ljava/lang/String;)V
        //   591: aload           25
        //   593: aload           23
        //   595: invokevirtual   com/android/emailcommon/a/h.a:(Lcom/android/emailcommon/mail/d;)V
        //   598: aload           22
        //   600: ldc_w           "Content-Type"
        //   603: ldc_w           "multipart/mixed"
        //   606: invokevirtual   com/android/emailcommon/mail/Message.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //   609: aload           22
        //   611: aload           25
        //   613: invokevirtual   com/android/emailcommon/mail/Message.a:(Lcom/android/emailcommon/mail/c;)V
        //   616: new             Lcom/android/emailcommon/mail/FetchProfile;
        //   619: dup            
        //   620: invokespecial   com/android/emailcommon/mail/FetchProfile.<init>:()V
        //   623: astore          26
        //   625: aload           26
        //   627: aload           23
        //   629: invokevirtual   com/android/emailcommon/mail/FetchProfile.add:(Ljava/lang/Object;)Z
        //   632: pop            
        //   633: aload           8
        //   635: iconst_1       
        //   636: anewarray       Lcom/android/emailcommon/mail/Message;
        //   639: dup            
        //   640: iconst_0       
        //   641: aload           22
        //   643: aastore        
        //   644: aload           26
        //   646: new             Lcom/android/email/service/m;
        //   649: dup            
        //   650: aload_0        
        //   651: lload           15
        //   653: lload           4
        //   655: aload_1        
        //   656: invokespecial   com/android/email/service/m.<init>:(Lcom/android/email/service/l;JJLcom/android/emailcommon/service/u;)V
        //   659: invokevirtual   com/android/emailcommon/mail/Folder.a:([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V
        //   662: aload           23
        //   664: invokevirtual   com/android/emailcommon/a/c.kO:()Lcom/android/emailcommon/mail/c;
        //   667: ifnonnull       681
        //   670: new             Lcom/android/emailcommon/mail/MessagingException;
        //   673: dup            
        //   674: ldc_w           "Attachment not loaded."
        //   677: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(Ljava/lang/String;)V
        //   680: athrow         
        //   681: aload_0        
        //   682: getfield        com/android/email/service/l.mContext:Landroid/content/Context;
        //   685: aload           23
        //   687: invokevirtual   com/android/emailcommon/a/c.kO:()Lcom/android/emailcommon/mail/c;
        //   690: invokeinterface com/android/emailcommon/mail/c.getInputStream:()Ljava/io/InputStream;
        //   695: aload           14
        //   697: invokestatic    com/android/emailcommon/b/a.a:(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
        //   700: aload_1        
        //   701: lload           15
        //   703: lload           4
        //   705: iconst_0       
        //   706: iconst_0       
        //   707: invokeinterface com/android/emailcommon/service/u.a:(JJII)V
        //   712: aload           8
        //   714: ifnull          728
        //   717: aload           8
        //   719: invokevirtual   com/android/emailcommon/mail/Folder.iY:()V
        //   722: return         
        //   723: astore          7
        //   725: goto            201
        //   728: return         
        //   729: aload           18
        //   731: ifnull          384
        //   734: aload           19
        //   736: ifnonnull       434
        //   739: goto            384
        //   742: astore          9
        //   744: goto            74
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  0      11     69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  0      11     196    201    Any
        //  16     28     69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  16     28     196    201    Any
        //  29     50     69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  29     50     196    201    Any
        //  55     68     69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  55     68     196    201    Any
        //  74     151    723    728    Any
        //  162    195    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  162    195    196    201    Any
        //  214    254    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  214    254    196    201    Any
        //  259    332    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  259    332    196    201    Any
        //  341    352    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  341    352    196    201    Any
        //  357    381    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  357    381    196    201    Any
        //  384    396    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  384    396    196    201    Any
        //  397    431    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  397    431    196    201    Any
        //  434    466    69     74     Lcom/android/emailcommon/mail/MessagingException;
        //  434    466    196    201    Any
        //  470    681    742    747    Lcom/android/emailcommon/mail/MessagingException;
        //  470    681    723    728    Any
        //  681    712    742    747    Lcom/android/emailcommon/mail/MessagingException;
        //  681    712    723    728    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0074:
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
    
    @Override
    public final void bd(final int n) {
    }
    
    @Override
    public final void e(final long n, final int n2) {
    }
    
    protected final void g(final Context mContext) {
        this.mContext = mContext;
    }
    
    @Override
    public final int kE() {
        return 1;
    }
    
    @Override
    public final Bundle q(final String s, final String s2) {
        return null;
    }
}
