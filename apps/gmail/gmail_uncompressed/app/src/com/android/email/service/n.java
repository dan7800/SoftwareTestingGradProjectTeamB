package com.android.email.service;

import android.content.res.*;
import java.util.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.provider.*;
import android.app.*;
import android.accounts.*;
import java.io.*;
import android.content.*;
import android.content.pm.*;
import android.net.*;
import android.os.*;
import com.android.emailcommon.service.*;
import android.text.*;

public final class n
{
    private static Map<String, o> UA;
    private static final Object UB;
    private static final Configuration Uz;
    
    static {
        Uz = new Configuration();
        n.UA = null;
        UB = new Object();
    }
    
    public static void N(final Context context) {
        for (final o o : P(context)) {
            if (o.UD != null) {
                context.startService(a(o));
            }
        }
    }
    
    public static boolean O(final Context context) {
        final Iterator<o> iterator = P(context).iterator();
        while (iterator.hasNext()) {
            if (iterator.next().UD != null) {
                return true;
            }
        }
        return false;
    }
    
    public static Collection<o> P(final Context context) {
        return Q(context).values();
    }
    
    private static Map<String, o> Q(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/android/email/service/n.UB:Ljava/lang/Object;
        //     3: astore_1       
        //     4: aload_1        
        //     5: monitorenter   
        //     6: getstatic       com/android/email/service/n.UA:Ljava/util/Map;
        //     9: ifnonnull       25
        //    12: getstatic       com/android/email/service/n.Uz:Landroid/content/res/Configuration;
        //    15: aload_0        
        //    16: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    19: invokevirtual   android/content/res/Resources.getConfiguration:()Landroid/content/res/Configuration;
        //    22: invokevirtual   android/content/res/Configuration.setTo:(Landroid/content/res/Configuration;)V
        //    25: getstatic       com/android/email/service/n.Uz:Landroid/content/res/Configuration;
        //    28: aload_0        
        //    29: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    32: invokevirtual   android/content/res/Resources.getConfiguration:()Landroid/content/res/Configuration;
        //    35: invokevirtual   android/content/res/Configuration.updateFrom:(Landroid/content/res/Configuration;)I
        //    38: istore_3       
        //    39: getstatic       com/android/email/service/n.UA:Ljava/util/Map;
        //    42: ifnull          63
        //    45: iload_3        
        //    46: iconst_4       
        //    47: invokestatic    android/content/res/Configuration.needNewResources:(II)Z
        //    50: ifne            63
        //    53: getstatic       com/android/email/service/n.UA:Ljava/util/Map;
        //    56: astore          17
        //    58: aload_1        
        //    59: monitorexit    
        //    60: aload           17
        //    62: areturn        
        //    63: invokestatic    com/google/common/collect/ImmutableMap.Zv:()Lcom/google/common/collect/y;
        //    66: astore          4
        //    68: aload_0        
        //    69: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    72: ldc             2131623955
        //    74: invokevirtual   android/content/res/Resources.getBoolean:(I)Z
        //    77: ifne            102
        //    80: aload           4
        //    82: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //    85: astore          16
        //    87: aload           16
        //    89: putstatic       com/android/email/service/n.UA:Ljava/util/Map;
        //    92: aload_1        
        //    93: monitorexit    
        //    94: aload           16
        //    96: areturn        
        //    97: astore_2       
        //    98: aload_1        
        //    99: monitorexit    
        //   100: aload_2        
        //   101: athrow         
        //   102: aload_0        
        //   103: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //   106: astore          8
        //   108: aload           8
        //   110: ldc             2131099675
        //   112: invokevirtual   android/content/res/Resources.getXml:(I)Landroid/content/res/XmlResourceParser;
        //   115: astore          9
        //   117: aload           9
        //   119: invokeinterface android/content/res/XmlResourceParser.next:()I
        //   124: istore          10
        //   126: iload           10
        //   128: iconst_1       
        //   129: if_icmpeq       625
        //   132: iload           10
        //   134: iconst_2       
        //   135: if_icmpne       117
        //   138: ldc             "emailservice"
        //   140: aload           9
        //   142: invokeinterface android/content/res/XmlResourceParser.getName:()Ljava/lang/String;
        //   147: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   150: ifeq            117
        //   153: new             Lcom/android/email/service/o;
        //   156: dup            
        //   157: invokespecial   com/android/email/service/o.<init>:()V
        //   160: astore          11
        //   162: aload           8
        //   164: aload           9
        //   166: getstatic       com/android/email/t.rM:[I
        //   169: invokevirtual   android/content/res/Resources.obtainAttributes:(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
        //   172: astore          12
        //   174: aload           11
        //   176: aload           12
        //   178: iconst_0       
        //   179: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   182: putfield        com/android/email/service/o.protocol:Ljava/lang/String;
        //   185: aload           11
        //   187: aload           12
        //   189: iconst_3       
        //   190: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   193: putfield        com/android/email/service/o.accountType:Ljava/lang/String;
        //   196: aload           11
        //   198: aload           12
        //   200: iconst_1       
        //   201: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   204: putfield        com/android/email/service/o.name:Ljava/lang/String;
        //   207: aload           11
        //   209: aload           12
        //   211: iconst_2       
        //   212: iconst_0       
        //   213: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   216: putfield        com/android/email/service/o.Vc:Z
        //   219: aload           12
        //   221: iconst_4       
        //   222: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   225: astore          13
        //   227: aload           11
        //   229: aload           12
        //   231: iconst_5       
        //   232: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   235: putfield        com/android/email/service/o.UD:Ljava/lang/String;
        //   238: aload           11
        //   240: aload           12
        //   242: bipush          6
        //   244: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   247: putfield        com/android/email/service/o.UE:Ljava/lang/String;
        //   250: aload           11
        //   252: aload           12
        //   254: bipush          9
        //   256: iconst_0       
        //   257: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   260: putfield        com/android/email/service/o.UG:Z
        //   263: aload           11
        //   265: aload           12
        //   267: bipush          7
        //   269: iconst_0       
        //   270: invokevirtual   android/content/res/TypedArray.getInteger:(II)I
        //   273: putfield        com/android/email/service/o.port:I
        //   276: aload           11
        //   278: aload           12
        //   280: bipush          8
        //   282: iconst_0       
        //   283: invokevirtual   android/content/res/TypedArray.getInteger:(II)I
        //   286: putfield        com/android/email/service/o.UF:I
        //   289: aload           11
        //   291: aload           12
        //   293: bipush          10
        //   295: iconst_0       
        //   296: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   299: putfield        com/android/email/service/o.UH:Z
        //   302: aload           11
        //   304: aload           12
        //   306: bipush          11
        //   308: iconst_0       
        //   309: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   312: putfield        com/android/email/service/o.UI:Z
        //   315: aload           11
        //   317: aload           12
        //   319: bipush          12
        //   321: iconst_0       
        //   322: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   325: putfield        com/android/email/service/o.UJ:Z
        //   328: aload           11
        //   330: aload           12
        //   332: bipush          13
        //   334: iconst_0       
        //   335: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   338: putfield        com/android/email/service/o.UL:Z
        //   341: aload           11
        //   343: aload           12
        //   345: bipush          14
        //   347: iconst_2       
        //   348: invokevirtual   android/content/res/TypedArray.getInteger:(II)I
        //   351: putfield        com/android/email/service/o.UM:I
        //   354: aload           11
        //   356: aload           12
        //   358: bipush          15
        //   360: iconst_0       
        //   361: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   364: putfield        com/android/email/service/o.UN:Z
        //   367: aload           11
        //   369: aload           12
        //   371: bipush          16
        //   373: iconst_0       
        //   374: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   377: putfield        com/android/email/service/o.UK:Z
        //   380: aload           11
        //   382: aload           12
        //   384: bipush          20
        //   386: iconst_0       
        //   387: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   390: putfield        com/android/email/service/o.UO:Z
        //   393: aload           11
        //   395: aload           12
        //   397: bipush          21
        //   399: iconst_0       
        //   400: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   403: putfield        com/android/email/service/o.UP:Z
        //   406: aload           11
        //   408: aload           12
        //   410: bipush          24
        //   412: iconst_2       
        //   413: invokevirtual   android/content/res/TypedArray.getInteger:(II)I
        //   416: putfield        com/android/email/service/o.UQ:I
        //   419: aload           11
        //   421: aload           12
        //   423: bipush          17
        //   425: iconst_0       
        //   426: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   429: putfield        com/android/email/service/o.UR:Z
        //   432: aload           11
        //   434: aload           12
        //   436: bipush          18
        //   438: iconst_0       
        //   439: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   442: putfield        com/android/email/service/o.US:Z
        //   445: aload           11
        //   447: aload           12
        //   449: bipush          19
        //   451: iconst_0       
        //   452: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   455: putfield        com/android/email/service/o.UT:Z
        //   458: aload           11
        //   460: aload           12
        //   462: bipush          25
        //   464: iconst_0       
        //   465: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   468: putfield        com/android/email/service/o.UU:Z
        //   471: aload           11
        //   473: aload           12
        //   475: bipush          26
        //   477: invokevirtual   android/content/res/TypedArray.getTextArray:(I)[Ljava/lang/CharSequence;
        //   480: putfield        com/android/email/service/o.UV:[Ljava/lang/CharSequence;
        //   483: aload           11
        //   485: aload           12
        //   487: bipush          27
        //   489: invokevirtual   android/content/res/TypedArray.getTextArray:(I)[Ljava/lang/CharSequence;
        //   492: putfield        com/android/email/service/o.UW:[Ljava/lang/CharSequence;
        //   495: aload           11
        //   497: aload           12
        //   499: bipush          28
        //   501: bipush          15
        //   503: invokevirtual   android/content/res/TypedArray.getInteger:(II)I
        //   506: putfield        com/android/email/service/o.UX:I
        //   509: aload           11
        //   511: aload           12
        //   513: bipush          29
        //   515: invokevirtual   android/content/res/TypedArray.getString:(I)Ljava/lang/String;
        //   518: putfield        com/android/email/service/o.UY:Ljava/lang/String;
        //   521: aload           11
        //   523: aload           12
        //   525: bipush          22
        //   527: iconst_0       
        //   528: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   531: putfield        com/android/email/service/o.UZ:Z
        //   534: aload           11
        //   536: aload           12
        //   538: bipush          23
        //   540: iconst_0       
        //   541: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   544: putfield        com/android/email/service/o.Va:Z
        //   547: aload           11
        //   549: aload           12
        //   551: bipush          30
        //   553: iconst_0       
        //   554: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   557: putfield        com/android/email/service/o.Vb:Z
        //   560: aload           11
        //   562: aload           12
        //   564: bipush          31
        //   566: iconst_0       
        //   567: invokevirtual   android/content/res/TypedArray.getBoolean:(IZ)Z
        //   570: putfield        com/android/email/service/o.Vd:Z
        //   573: aload           13
        //   575: ifnull          588
        //   578: aload           11
        //   580: aload           13
        //   582: invokestatic    java/lang/Class.forName:(Ljava/lang/String;)Ljava/lang/Class;
        //   585: putfield        com/android/email/service/o.UC:Ljava/lang/Class;
        //   588: aload           11
        //   590: getfield        com/android/email/service/o.UC:Ljava/lang/Class;
        //   593: ifnonnull       670
        //   596: aload           11
        //   598: getfield        com/android/email/service/o.UD:Ljava/lang/String;
        //   601: ifnonnull       670
        //   604: aload           11
        //   606: getfield        com/android/email/service/o.Vd:Z
        //   609: ifne            670
        //   612: new             Ljava/lang/IllegalStateException;
        //   615: dup            
        //   616: ldc_w           "No class or intent action specified in service descriptor"
        //   619: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   622: athrow         
        //   623: astore          7
        //   625: aload           4
        //   627: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   630: astore          6
        //   632: aload           6
        //   634: putstatic       com/android/email/service/n.UA:Ljava/util/Map;
        //   637: aload_1        
        //   638: monitorexit    
        //   639: aload           6
        //   641: areturn        
        //   642: astore          15
        //   644: new             Ljava/lang/IllegalStateException;
        //   647: dup            
        //   648: new             Ljava/lang/StringBuilder;
        //   651: dup            
        //   652: ldc_w           "Class not found in service descriptor: "
        //   655: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   658: aload           13
        //   660: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   663: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   666: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   669: athrow         
        //   670: aload           11
        //   672: getfield        com/android/email/service/o.UC:Ljava/lang/Class;
        //   675: ifnull          697
        //   678: aload           11
        //   680: getfield        com/android/email/service/o.UD:Ljava/lang/String;
        //   683: ifnull          697
        //   686: new             Ljava/lang/IllegalStateException;
        //   689: dup            
        //   690: ldc_w           "Both class and intent action specified in service descriptor"
        //   693: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   696: athrow         
        //   697: aload           4
        //   699: aload           11
        //   701: getfield        com/android/email/service/o.protocol:Ljava/lang/String;
        //   704: aload           11
        //   706: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   709: pop            
        //   710: goto            117
        //   713: astore          5
        //   715: goto            625
        //    Signature:
        //  (Landroid/content/Context;)Ljava/util/Map<Ljava/lang/String;Lcom/android/email/service/o;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                   
        //  -----  -----  -----  -----  ---------------------------------------
        //  6      25     97     102    Any
        //  25     60     97     102    Any
        //  63     94     97     102    Any
        //  102    117    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  102    117    713    718    Ljava/io/IOException;
        //  102    117    97     102    Any
        //  117    126    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  117    126    713    718    Ljava/io/IOException;
        //  117    126    97     102    Any
        //  138    573    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  138    573    713    718    Ljava/io/IOException;
        //  138    573    97     102    Any
        //  578    588    642    670    Ljava/lang/ClassNotFoundException;
        //  578    588    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  578    588    713    718    Ljava/io/IOException;
        //  578    588    97     102    Any
        //  588    623    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  588    623    713    718    Ljava/io/IOException;
        //  588    623    97     102    Any
        //  625    639    97     102    Any
        //  644    670    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  644    670    713    718    Ljava/io/IOException;
        //  644    670    97     102    Any
        //  670    697    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  670    697    713    718    Ljava/io/IOException;
        //  670    697    97     102    Any
        //  697    710    623    625    Lorg/xmlpull/v1/XmlPullParserException;
        //  697    710    713    718    Ljava/io/IOException;
        //  697    710    97     102    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0588:
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
    
    public static void R(final Context context) {
        if (VendorPolicyLoader.W(context).kN()) {
            E.c(E.TAG, "Enabling alternate EAS authenticator", new Object[0]);
            a(context, EasAuthenticatorServiceAlternate.class, true);
            a(context, EasAuthenticatorService.class, false);
            return;
        }
        E.c(E.TAG, "Enabling EAS authenticator", new Object[0]);
        a(context, EasAuthenticatorService.class, true);
        a(context, EasAuthenticatorServiceAlternate.class, false);
    }
    
    public static void S(final Context context) {
        E.c(E.TAG, "Disabling EAS authenticators", new Object[0]);
        a(context, EasAuthenticatorServiceAlternate.class, false);
        a(context, EasAuthenticatorService.class, false);
    }
    
    public static AccountManagerFuture<Bundle> a(final Context context, final Account account, final boolean b, final boolean b2, final boolean b3) {
        return a(context, account, b, b2, b3, HostAuth.u(context, account.XC), null);
    }
    
    public static AccountManagerFuture<Bundle> a(final Context context, final Account account, final boolean b, final boolean b2, final boolean b3, final HostAuth hostAuth, final AccountManagerCallback<Bundle> accountManagerCallback) {
        if (hostAuth == null) {
            return null;
        }
        final Bundle bundle = new Bundle(5);
        bundle.putString("username", account.NP);
        bundle.putString("password", hostAuth.Qd);
        bundle.putBoolean("contacts", b3);
        bundle.putBoolean("calendar", b2);
        bundle.putBoolean("email", b);
        return (AccountManagerFuture<Bundle>)AccountManager.get(context).addAccount(l(context, hostAuth.Zh).accountType, (String)null, (String[])null, bundle, (Activity)null, (AccountManagerCallback)null, (Handler)null);
    }
    
    private static Intent a(final o o) {
        final Intent intent = new Intent(o.UD);
        intent.setPackage(o.UE);
        return intent;
    }
    
    private static void a(final AccountManagerFuture<?> accountManagerFuture) {
        try {
            accountManagerFuture.getResult();
        }
        catch (OperationCanceledException ex) {
            E.d(E.TAG, (Throwable)ex, "finishAccountManagerBlocker", new Object[0]);
        }
        catch (AuthenticatorException ex2) {
            E.d(E.TAG, (Throwable)ex2, "finishAccountManagerBlocker", new Object[0]);
        }
        catch (IOException ex3) {
            E.d(E.TAG, ex3, "finishAccountManagerBlocker", new Object[0]);
        }
    }
    
    public static void a(final Context p0, final android.accounts.Account p1, final Map<String, String> p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //     4: astore_3       
        //     5: getstatic       com/android/emailcommon/provider/Account.CONTENT_URI:Landroid/net/Uri;
        //     8: astore          4
        //    10: getstatic       com/android/emailcommon/provider/Account.XO:[Ljava/lang/String;
        //    13: astore          5
        //    15: iconst_1       
        //    16: anewarray       Ljava/lang/String;
        //    19: astore          6
        //    21: aload           6
        //    23: iconst_0       
        //    24: aload_1        
        //    25: getfield        android/accounts/Account.name:Ljava/lang/String;
        //    28: aastore        
        //    29: aload_3        
        //    30: aload           4
        //    32: aload           5
        //    34: ldc_w           "emailAddress=?"
        //    37: aload           6
        //    39: aconst_null    
        //    40: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    43: astore          7
        //    45: aload           7
        //    47: ifnonnull       51
        //    50: return         
        //    51: aload           7
        //    53: invokeinterface android/database/Cursor.moveToNext:()Z
        //    58: ifeq            1030
        //    61: new             Lcom/android/emailcommon/provider/Account;
        //    64: dup            
        //    65: invokespecial   com/android/emailcommon/provider/Account.<init>:()V
        //    68: astore          9
        //    70: aload           9
        //    72: aload           7
        //    74: invokevirtual   com/android/emailcommon/provider/Account.b:(Landroid/database/Cursor;)V
        //    77: aload_0        
        //    78: aload           9
        //    80: getfield        com/android/emailcommon/provider/Account.XC:J
        //    83: invokestatic    com/android/emailcommon/provider/HostAuth.u:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
        //    86: astore          10
        //    88: aload           10
        //    90: ifnonnull       101
        //    93: aload           7
        //    95: invokeinterface android/database/Cursor.close:()V
        //   100: return         
        //   101: aload_2        
        //   102: aload           10
        //   104: getfield        com/android/emailcommon/provider/HostAuth.Zh:Ljava/lang/String;
        //   107: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   112: checkcast       Ljava/lang/String;
        //   115: astore          11
        //   117: aload           11
        //   119: ifnonnull       130
        //   122: aload           7
        //   124: invokeinterface android/database/Cursor.close:()V
        //   129: return         
        //   130: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   133: astore          12
        //   135: iconst_2       
        //   136: anewarray       Ljava/lang/Object;
        //   139: astore          13
        //   141: aload           13
        //   143: iconst_0       
        //   144: aload_1        
        //   145: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   148: aastore        
        //   149: aload           13
        //   151: iconst_1       
        //   152: aload           11
        //   154: aastore        
        //   155: aload           12
        //   157: ldc_w           "Converting %s to %s"
        //   160: aload           13
        //   162: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   165: pop            
        //   166: new             Landroid/content/ContentValues;
        //   169: dup            
        //   170: invokespecial   android/content/ContentValues.<init>:()V
        //   173: astore          15
        //   175: aload           9
        //   177: getfield        com/android/emailcommon/provider/Account.dM:I
        //   180: istore          16
        //   182: aload           9
        //   184: bipush          16
        //   186: aload           9
        //   188: getfield        com/android/emailcommon/provider/Account.dM:I
        //   191: ior            
        //   192: putfield        com/android/emailcommon/provider/Account.dM:I
        //   195: aload           15
        //   197: ldc_w           "flags"
        //   200: aload           9
        //   202: getfield        com/android/emailcommon/provider/Account.dM:I
        //   205: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   208: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   211: getstatic       com/android/emailcommon/provider/Account.CONTENT_URI:Landroid/net/Uri;
        //   214: aload           9
        //   216: getfield        com/android/emailcommon/provider/Account.Ln:J
        //   219: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   222: astore          17
        //   224: aload_3        
        //   225: aload           17
        //   227: aload           15
        //   229: aconst_null    
        //   230: aconst_null    
        //   231: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   234: pop            
        //   235: new             Landroid/content/ContentValues;
        //   238: dup            
        //   239: invokespecial   android/content/ContentValues.<init>:()V
        //   242: astore          19
        //   244: aload           19
        //   246: ldc_w           "protocol"
        //   249: aload           11
        //   251: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   254: aload_3        
        //   255: getstatic       com/android/emailcommon/provider/HostAuth.CONTENT_URI:Landroid/net/Uri;
        //   258: aload           10
        //   260: getfield        com/android/emailcommon/provider/HostAuth.Ln:J
        //   263: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   266: aload           19
        //   268: aconst_null    
        //   269: aconst_null    
        //   270: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   273: pop            
        //   274: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   277: ldc_w           "Updated HostAuths"
        //   280: iconst_0       
        //   281: anewarray       Ljava/lang/Object;
        //   284: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   287: pop            
        //   288: aload_1        
        //   289: getstatic       com/android/emailcommon/provider/EmailContent.AUTHORITY:Ljava/lang/String;
        //   292: invokestatic    android/content/ContentResolver.getSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;)Z
        //   295: istore          25
        //   297: iload           25
        //   299: ifne            1226
        //   302: aload_1        
        //   303: ldc_w           "com.android.email.provider"
        //   306: invokestatic    android/content/ContentResolver.getSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;)Z
        //   309: istore          26
        //   311: aload_1        
        //   312: ldc_w           "com.android.contacts"
        //   315: invokestatic    android/content/ContentResolver.getSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;)Z
        //   318: istore          27
        //   320: aload_1        
        //   321: ldc_w           "com.android.calendar"
        //   324: invokestatic    android/content/ContentResolver.getSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;)Z
        //   327: istore          28
        //   329: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   332: astore          29
        //   334: iconst_3       
        //   335: anewarray       Ljava/lang/Object;
        //   338: astore          30
        //   340: aload           30
        //   342: iconst_0       
        //   343: iload           26
        //   345: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   348: aastore        
        //   349: aload           30
        //   351: iconst_1       
        //   352: iload           27
        //   354: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   357: aastore        
        //   358: aload           30
        //   360: iconst_2       
        //   361: iload           28
        //   363: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   366: aastore        
        //   367: aload           29
        //   369: ldc_w           "Email: %s, Contacts: %s Calendar: %s"
        //   372: aload           30
        //   374: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   377: pop            
        //   378: aload_1        
        //   379: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   382: astore          32
        //   384: aload_1        
        //   385: getfield        android/accounts/Account.type:Ljava/lang/String;
        //   388: astore          33
        //   390: aload_0        
        //   391: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   394: getstatic       android/provider/CalendarContract.CONTENT_URI:Landroid/net/Uri;
        //   397: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   400: astore          34
        //   402: getstatic       android/provider/CalendarContract$SyncState.CONTENT_URI:Landroid/net/Uri;
        //   405: aload           32
        //   407: aload           33
        //   409: invokestatic    com/android/email/service/n.b:(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
        //   412: astore          86
        //   414: new             Landroid/accounts/Account;
        //   417: dup            
        //   418: aload           32
        //   420: aload           33
        //   422: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   425: astore          87
        //   427: aload           34
        //   429: aload           86
        //   431: aload           87
        //   433: invokestatic    android/provider/SyncStateContract$Helpers.get:(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
        //   436: astore          88
        //   438: aload           34
        //   440: invokevirtual   android/content/ContentProviderClient.release:()Z
        //   443: pop            
        //   444: aload           88
        //   446: astore          40
        //   448: aload_0        
        //   449: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   452: getstatic       android/provider/ContactsContract.AUTHORITY_URI:Landroid/net/Uri;
        //   455: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   458: astore          41
        //   460: getstatic       android/provider/ContactsContract$SyncState.CONTENT_URI:Landroid/net/Uri;
        //   463: astore          82
        //   465: new             Landroid/accounts/Account;
        //   468: dup            
        //   469: aload           32
        //   471: aload           33
        //   473: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   476: astore          83
        //   478: aload           41
        //   480: aload           82
        //   482: aload           83
        //   484: invokestatic    android/provider/SyncStateContract$Helpers.get:(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
        //   487: astore          84
        //   489: aload           41
        //   491: invokevirtual   android/content/ContentProviderClient.release:()Z
        //   494: pop            
        //   495: aload           84
        //   497: astore          47
        //   499: aload           40
        //   501: ifnull          543
        //   504: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   507: astore          48
        //   509: iconst_1       
        //   510: anewarray       Ljava/lang/Object;
        //   513: astore          49
        //   515: new             Ljava/lang/String;
        //   518: dup            
        //   519: aload           40
        //   521: invokespecial   java/lang/String.<init>:([B)V
        //   524: astore          50
        //   526: aload           49
        //   528: iconst_0       
        //   529: aload           50
        //   531: aastore        
        //   532: aload           48
        //   534: ldc_w           "Got calendar key: %s"
        //   537: aload           49
        //   539: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   542: pop            
        //   543: aload           47
        //   545: ifnull          587
        //   548: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   551: astore          52
        //   553: iconst_1       
        //   554: anewarray       Ljava/lang/Object;
        //   557: astore          53
        //   559: new             Ljava/lang/String;
        //   562: dup            
        //   563: aload           47
        //   565: invokespecial   java/lang/String.<init>:([B)V
        //   568: astore          54
        //   570: aload           53
        //   572: iconst_0       
        //   573: aload           54
        //   575: aastore        
        //   576: aload           52
        //   578: ldc_w           "Got contacts key: %s"
        //   581: aload           53
        //   583: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   586: pop            
        //   587: aload_0        
        //   588: aload           9
        //   590: iload           26
        //   592: iload           28
        //   594: iload           27
        //   596: invokestatic    com/android/email/service/n.a:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZ)Landroid/accounts/AccountManagerFuture;
        //   599: invokestatic    com/android/email/service/n.a:(Landroid/accounts/AccountManagerFuture;)V
        //   602: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   605: ldc_w           "Created new AccountManager account"
        //   608: iconst_0       
        //   609: anewarray       Ljava/lang/Object;
        //   612: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   615: pop            
        //   616: aload_2        
        //   617: new             Ljava/lang/StringBuilder;
        //   620: dup            
        //   621: invokespecial   java/lang/StringBuilder.<init>:()V
        //   624: aload           10
        //   626: getfield        com/android/emailcommon/provider/HostAuth.Zh:Ljava/lang/String;
        //   629: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   632: ldc_w           "_type"
        //   635: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   638: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   641: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   646: checkcast       Ljava/lang/String;
        //   649: astore          57
        //   651: aload_0        
        //   652: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   655: astore          58
        //   657: getstatic       android/provider/CalendarContract$Calendars.CONTENT_URI:Landroid/net/Uri;
        //   660: invokevirtual   android/net/Uri.buildUpon:()Landroid/net/Uri$Builder;
        //   663: ldc_w           "caller_is_syncadapter"
        //   666: ldc_w           "true"
        //   669: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   672: ldc_w           "account_name"
        //   675: aload           32
        //   677: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   680: ldc_w           "account_type"
        //   683: aload           33
        //   685: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   688: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //   691: astore          59
        //   693: new             Landroid/content/ContentValues;
        //   696: dup            
        //   697: invokespecial   android/content/ContentValues.<init>:()V
        //   700: astore          60
        //   702: aload           60
        //   704: ldc_w           "account_type"
        //   707: aload           57
        //   709: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   712: aload           58
        //   714: aload           59
        //   716: aload           60
        //   718: ldc_w           "account_name=? AND account_type=?"
        //   721: iconst_2       
        //   722: anewarray       Ljava/lang/String;
        //   725: dup            
        //   726: iconst_0       
        //   727: aload           32
        //   729: aastore        
        //   730: dup            
        //   731: iconst_1       
        //   732: aload           33
        //   734: aastore        
        //   735: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   738: pop            
        //   739: aload_0        
        //   740: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   743: astore          62
        //   745: getstatic       android/provider/ContactsContract$RawContacts.CONTENT_URI:Landroid/net/Uri;
        //   748: invokevirtual   android/net/Uri.buildUpon:()Landroid/net/Uri$Builder;
        //   751: ldc_w           "caller_is_syncadapter"
        //   754: ldc_w           "true"
        //   757: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   760: ldc_w           "account_name"
        //   763: aload           32
        //   765: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   768: ldc_w           "account_type"
        //   771: aload           33
        //   773: invokevirtual   android/net/Uri$Builder.appendQueryParameter:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   776: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //   779: astore          63
        //   781: new             Landroid/content/ContentValues;
        //   784: dup            
        //   785: invokespecial   android/content/ContentValues.<init>:()V
        //   788: astore          64
        //   790: aload           64
        //   792: ldc_w           "account_type"
        //   795: aload           57
        //   797: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   800: aload           62
        //   802: aload           63
        //   804: aload           64
        //   806: aconst_null    
        //   807: aconst_null    
        //   808: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //   811: pop            
        //   812: aload_0        
        //   813: invokestatic    android/accounts/AccountManager.get:(Landroid/content/Context;)Landroid/accounts/AccountManager;
        //   816: aload_1        
        //   817: aconst_null    
        //   818: aconst_null    
        //   819: invokevirtual   android/accounts/AccountManager.removeAccount:(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
        //   822: invokestatic    com/android/email/service/n.a:(Landroid/accounts/AccountManagerFuture;)V
        //   825: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   828: ldc_w           "Deleted old AccountManager account"
        //   831: iconst_0       
        //   832: anewarray       Ljava/lang/Object;
        //   835: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   838: pop            
        //   839: aload           57
        //   841: ifnull          915
        //   844: aload           40
        //   846: ifnull          915
        //   849: aload           40
        //   851: arraylength    
        //   852: ifeq            915
        //   855: aload_0        
        //   856: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   859: getstatic       android/provider/CalendarContract.CONTENT_URI:Landroid/net/Uri;
        //   862: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   865: astore          74
        //   867: aload           74
        //   869: getstatic       android/provider/CalendarContract$SyncState.CONTENT_URI:Landroid/net/Uri;
        //   872: aload           32
        //   874: aload           57
        //   876: invokestatic    com/android/email/service/n.b:(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
        //   879: new             Landroid/accounts/Account;
        //   882: dup            
        //   883: aload           32
        //   885: aload           57
        //   887: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   890: aload           40
        //   892: invokestatic    android/provider/SyncStateContract$Helpers.set:(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V
        //   895: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   898: ldc_w           "Set calendar key..."
        //   901: iconst_0       
        //   902: anewarray       Ljava/lang/Object;
        //   905: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   908: pop            
        //   909: aload           74
        //   911: invokevirtual   android/content/ContentProviderClient.release:()Z
        //   914: pop            
        //   915: aload           57
        //   917: ifnull          978
        //   920: aload           47
        //   922: ifnull          978
        //   925: aload           47
        //   927: arraylength    
        //   928: ifeq            978
        //   931: aload_0        
        //   932: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   935: getstatic       android/provider/ContactsContract.AUTHORITY_URI:Landroid/net/Uri;
        //   938: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   941: astore          70
        //   943: aload           70
        //   945: getstatic       android/provider/ContactsContract$SyncState.CONTENT_URI:Landroid/net/Uri;
        //   948: new             Landroid/accounts/Account;
        //   951: dup            
        //   952: aload           32
        //   954: aload           57
        //   956: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   959: aload           47
        //   961: invokestatic    android/provider/SyncStateContract$Helpers.set:(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V
        //   964: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   967: ldc_w           "Set contacts key..."
        //   970: iconst_0       
        //   971: anewarray       Ljava/lang/Object;
        //   974: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   977: pop            
        //   978: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   981: ldc_w           "Account update completed."
        //   984: iconst_0       
        //   985: anewarray       Ljava/lang/Object;
        //   988: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   991: pop            
        //   992: aload           15
        //   994: ldc_w           "flags"
        //   997: iload           16
        //   999: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1002: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1005: aload_3        
        //  1006: aload           17
        //  1008: aload           15
        //  1010: aconst_null    
        //  1011: aconst_null    
        //  1012: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1015: pop            
        //  1016: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1019: ldc_w           "[Incomplete flag cleared]"
        //  1022: iconst_0       
        //  1023: anewarray       Ljava/lang/Object;
        //  1026: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1029: pop            
        //  1030: aload           7
        //  1032: invokeinterface android/database/Cursor.close:()V
        //  1037: return         
        //  1038: astore          37
        //  1040: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1043: ldc_w           "Get calendar key FAILED"
        //  1046: iconst_0       
        //  1047: anewarray       Ljava/lang/Object;
        //  1050: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1053: pop            
        //  1054: aload           34
        //  1056: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1059: pop            
        //  1060: aconst_null    
        //  1061: astore          40
        //  1063: goto            448
        //  1066: astore          35
        //  1068: aload           34
        //  1070: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1073: pop            
        //  1074: aload           35
        //  1076: athrow         
        //  1077: astore          22
        //  1079: aload           15
        //  1081: ldc_w           "flags"
        //  1084: iload           16
        //  1086: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1089: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1092: aload_3        
        //  1093: aload           17
        //  1095: aload           15
        //  1097: aconst_null    
        //  1098: aconst_null    
        //  1099: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1102: pop            
        //  1103: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1106: ldc_w           "[Incomplete flag cleared]"
        //  1109: iconst_0       
        //  1110: anewarray       Ljava/lang/Object;
        //  1113: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1116: pop            
        //  1117: aload           22
        //  1119: athrow         
        //  1120: astore          8
        //  1122: aload           7
        //  1124: invokeinterface android/database/Cursor.close:()V
        //  1129: aload           8
        //  1131: athrow         
        //  1132: astore          44
        //  1134: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1137: ldc_w           "Get contacts key FAILED"
        //  1140: iconst_0       
        //  1141: anewarray       Ljava/lang/Object;
        //  1144: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1147: pop            
        //  1148: aload           41
        //  1150: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1153: pop            
        //  1154: aconst_null    
        //  1155: astore          47
        //  1157: goto            499
        //  1160: astore          42
        //  1162: aload           41
        //  1164: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1167: pop            
        //  1168: aload           42
        //  1170: athrow         
        //  1171: astore          77
        //  1173: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1176: ldc_w           "Set calendar key FAILED"
        //  1179: iconst_0       
        //  1180: anewarray       Ljava/lang/Object;
        //  1183: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1186: pop            
        //  1187: aload           74
        //  1189: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1192: pop            
        //  1193: goto            915
        //  1196: astore          75
        //  1198: aload           74
        //  1200: invokevirtual   android/content/ContentProviderClient.release:()Z
        //  1203: pop            
        //  1204: aload           75
        //  1206: athrow         
        //  1207: astore          71
        //  1209: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1212: ldc_w           "Set contacts key FAILED"
        //  1215: iconst_0       
        //  1216: anewarray       Ljava/lang/Object;
        //  1219: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1222: pop            
        //  1223: goto            978
        //  1226: iload           25
        //  1228: istore          26
        //  1230: goto            311
        //    Signature:
        //  (Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  51     88     1120   1132   Any
        //  101    117    1120   1132   Any
        //  130    288    1120   1132   Any
        //  288    297    1077   1120   Any
        //  302    311    1077   1120   Any
        //  311    402    1077   1120   Any
        //  402    438    1038   1066   Landroid/os/RemoteException;
        //  402    438    1066   1077   Any
        //  438    444    1077   1120   Any
        //  448    460    1077   1120   Any
        //  460    489    1132   1160   Landroid/os/RemoteException;
        //  460    489    1160   1171   Any
        //  489    495    1077   1120   Any
        //  504    543    1077   1120   Any
        //  548    587    1077   1120   Any
        //  587    839    1077   1120   Any
        //  849    867    1077   1120   Any
        //  867    909    1171   1196   Landroid/os/RemoteException;
        //  867    909    1196   1207   Any
        //  909    915    1077   1120   Any
        //  925    943    1077   1120   Any
        //  943    978    1207   1226   Landroid/os/RemoteException;
        //  943    978    1077   1120   Any
        //  978    992    1077   1120   Any
        //  992    1030   1120   1132   Any
        //  1040   1054   1066   1077   Any
        //  1054   1060   1077   1120   Any
        //  1068   1077   1077   1120   Any
        //  1079   1120   1120   1132   Any
        //  1134   1148   1160   1171   Any
        //  1148   1154   1077   1120   Any
        //  1162   1171   1077   1120   Any
        //  1173   1187   1196   1207   Any
        //  1187   1193   1077   1120   Any
        //  1198   1207   1077   1120   Any
        //  1209   1223   1077   1120   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 560, Size: 560
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
    
    private static void a(final Context context, final Class<?> clazz, final boolean b) {
        final ComponentName componentName = new ComponentName(context, clazz.getName());
        final PackageManager packageManager = context.getPackageManager();
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 2;
        }
        packageManager.setComponentEnabledSetting(componentName, n, 1);
    }
    
    private static Uri b(final Uri uri, final String s, final String s2) {
        return uri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").appendQueryParameter("account_name", s).appendQueryParameter("account_type", s2).build();
    }
    
    public static void f(final Context context, final int n) {
        for (final o o : P(context)) {
            if (o.UD != null) {
                final a k = k(context, o.protocol);
                if (k == null) {
                    continue;
                }
                try {
                    k.bd(n);
                }
                catch (RemoteException ex) {}
            }
        }
    }
    
    public static void h(final Context context, final String s) {
        final o l = l(context, s);
        if (l != null && l.UD != null) {
            final Intent a = a(l);
            a.putExtra("ServiceProxy.FORCE_SHUTDOWN", true);
            context.startService(a);
        }
    }
    
    public static a i(final Context context, final long n) {
        return k(context, Account.m(context, n));
    }
    
    public static void i(final Context context, final String s) {
        final o l = l(context, s);
        if (l != null && l.UD != null) {
            context.startService(a(l));
        }
    }
    
    public static o j(final Context context, final long n) {
        return l(context, Account.m(context, n));
    }
    
    public static boolean j(final Context context, final String s) {
        final o l = l(context, s);
        return l != null && (l.UC != null || new a(context, a(l)).mb());
    }
    
    public static a k(final Context context, final String s) {
        o l;
        if (s != null) {
            l = l(context, s);
        }
        else {
            l = null;
        }
        if (l == null) {
            E.e(E.TAG, "Returning NullService for %s", s);
            return new a(context, p.class);
        }
        if (l.UC != null) {
            return new a(context, l.UC);
        }
        return new a(context, a(l));
    }
    
    public static o l(final Context context, final String s) {
        return Q(context).get(s);
    }
    
    public static String m(final Context context, final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final Iterator<o> iterator = Q(context).values().iterator();
            String s2 = null;
            while (iterator.hasNext()) {
                final o o = iterator.next();
                String protocol;
                if (TextUtils.equals((CharSequence)s, (CharSequence)o.accountType)) {
                    if (!TextUtils.isEmpty((CharSequence)s2) && !TextUtils.equals((CharSequence)s2, (CharSequence)o.protocol)) {
                        return null;
                    }
                    protocol = o.protocol;
                }
                else {
                    protocol = s2;
                }
                s2 = protocol;
            }
            return s2;
        }
        return null;
    }
}
