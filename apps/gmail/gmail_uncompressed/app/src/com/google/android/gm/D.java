package com.google.android.gm;

import android.os.*;
import android.app.*;
import android.accounts.*;

final class d implements AccountManagerCallback<Bundle>
{
    final /* synthetic */ g aWF;
    final /* synthetic */ PendingIntent aWG;
    final /* synthetic */ Activity aWH;
    
    d(final g awf, final PendingIntent awg, final Activity awh) {
        this.aWF = awf;
        this.aWG = awg;
        this.aWH = awh;
    }
    
    public final void run(final AccountManagerFuture<Bundle> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aload_1        
        //     3: invokeinterface android/accounts/AccountManagerFuture.isCancelled:()Z
        //     8: ifeq            36
        //    11: aload_0        
        //    12: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //    15: ifnull          28
        //    18: aload_0        
        //    19: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //    22: aconst_null    
        //    23: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //    28: aload_0        
        //    29: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //    32: invokevirtual   android/app/PendingIntent.cancel:()V
        //    35: return         
        //    36: aload_1        
        //    37: invokeinterface android/accounts/AccountManagerFuture.getResult:()Ljava/lang/Object;
        //    42: checkcast       Landroid/os/Bundle;
        //    45: astore          8
        //    47: aload           8
        //    49: ldc             "authAccount"
        //    51: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    54: astore          9
        //    56: aload           8
        //    58: ldc             "accountType"
        //    60: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    63: astore          10
        //    65: aload           9
        //    67: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    70: ifne            328
        //    73: aload           10
        //    75: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    78: ifne            328
        //    81: new             Landroid/accounts/Account;
        //    84: dup            
        //    85: aload           9
        //    87: aload           10
        //    89: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //    92: astore          5
        //    94: aload           5
        //    96: ldc             "gmail-ls"
        //    98: invokestatic    android/content/ContentResolver.getIsSyncable:(Landroid/accounts/Account;Ljava/lang/String;)I
        //   101: istore          15
        //   103: invokestatic    com/google/android/gm/a.oA:()Ljava/lang/String;
        //   106: astore          16
        //   108: iconst_1       
        //   109: anewarray       Ljava/lang/Object;
        //   112: astore          17
        //   114: aload           17
        //   116: iconst_0       
        //   117: iload           15
        //   119: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   122: aastore        
        //   123: aload           16
        //   125: ldc             "isSyncable=%d"
        //   127: aload           17
        //   129: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   132: pop            
        //   133: iload           15
        //   135: ifeq            146
        //   138: aload           5
        //   140: ldc             "gmail-ls"
        //   142: iconst_1       
        //   143: invokestatic    android/content/ContentResolver.setSyncAutomatically:(Landroid/accounts/Account;Ljava/lang/String;Z)V
        //   146: aload_0        
        //   147: getfield        com/google/android/gm/d.aWH:Landroid/app/Activity;
        //   150: invokevirtual   android/app/Activity.getApplicationContext:()Landroid/content/Context;
        //   153: invokestatic    com/google/android/gm/provider/GmailProvider.ca:(Landroid/content/Context;)V
        //   156: aload_0        
        //   157: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   160: ifnull          174
        //   163: aload_0        
        //   164: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   167: aload           5
        //   169: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //   174: aload_0        
        //   175: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //   178: invokevirtual   android/app/PendingIntent.cancel:()V
        //   181: return         
        //   182: astore          7
        //   184: aconst_null    
        //   185: astore          5
        //   187: aload_0        
        //   188: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   191: ifnull          205
        //   194: aload_0        
        //   195: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   198: aload           5
        //   200: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //   205: aload_0        
        //   206: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //   209: invokevirtual   android/app/PendingIntent.cancel:()V
        //   212: return         
        //   213: astore          6
        //   215: aconst_null    
        //   216: astore          5
        //   218: aload_0        
        //   219: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   222: ifnull          236
        //   225: aload_0        
        //   226: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   229: aload           5
        //   231: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //   236: aload_0        
        //   237: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //   240: invokevirtual   android/app/PendingIntent.cancel:()V
        //   243: return         
        //   244: astore          4
        //   246: aconst_null    
        //   247: astore          5
        //   249: aload_0        
        //   250: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   253: ifnull          267
        //   256: aload_0        
        //   257: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   260: aload           5
        //   262: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //   267: aload_0        
        //   268: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //   271: invokevirtual   android/app/PendingIntent.cancel:()V
        //   274: return         
        //   275: astore_3       
        //   276: aload_0        
        //   277: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   280: ifnull          293
        //   283: aload_0        
        //   284: getfield        com/google/android/gm/d.aWF:Lcom/google/android/gm/g;
        //   287: aload_2        
        //   288: invokeinterface com/google/android/gm/g.b:(Landroid/accounts/Account;)V
        //   293: aload_0        
        //   294: getfield        com/google/android/gm/d.aWG:Landroid/app/PendingIntent;
        //   297: invokevirtual   android/app/PendingIntent.cancel:()V
        //   300: aload_3        
        //   301: athrow         
        //   302: astore          14
        //   304: aload           5
        //   306: astore_2       
        //   307: aload           14
        //   309: astore_3       
        //   310: goto            276
        //   313: astore          13
        //   315: goto            249
        //   318: astore          12
        //   320: goto            218
        //   323: astore          11
        //   325: goto            187
        //   328: aconst_null    
        //   329: astore          5
        //   331: goto            156
        //    Signature:
        //  (Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                         
        //  -----  -----  -----  -----  ---------------------------------------------
        //  36     94     182    187    Landroid/accounts/OperationCanceledException;
        //  36     94     213    218    Ljava/io/IOException;
        //  36     94     244    249    Landroid/accounts/AuthenticatorException;
        //  36     94     275    276    Any
        //  94     133    323    328    Landroid/accounts/OperationCanceledException;
        //  94     133    318    323    Ljava/io/IOException;
        //  94     133    313    318    Landroid/accounts/AuthenticatorException;
        //  94     133    302    313    Any
        //  138    146    323    328    Landroid/accounts/OperationCanceledException;
        //  138    146    318    323    Ljava/io/IOException;
        //  138    146    313    318    Landroid/accounts/AuthenticatorException;
        //  138    146    302    313    Any
        //  146    156    323    328    Landroid/accounts/OperationCanceledException;
        //  146    156    318    323    Ljava/io/IOException;
        //  146    156    313    318    Landroid/accounts/AuthenticatorException;
        //  146    156    302    313    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0146:
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
}
