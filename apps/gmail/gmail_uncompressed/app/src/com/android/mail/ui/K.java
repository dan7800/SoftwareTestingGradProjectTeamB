package com.android.mail.ui;

import android.os.*;
import com.android.mail.providers.*;

final class k extends AsyncTask<Void, Void, Folder>
{
    final /* synthetic */ a aEa;
    
    k(final a aEa) {
        this.aEa = aEa;
    }
    
    private Folder wH() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //     6: getfield        com/android/mail/ui/a.aCQ:Lcom/android/mail/providers/Folder;
        //     9: ifnonnull       84
        //    12: aload_0        
        //    13: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //    16: getfield        com/android/mail/ui/a.mContext:Landroid/content/Context;
        //    19: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    22: aload_0        
        //    23: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //    26: getfield        com/android/mail/ui/a.Nc:Lcom/android/mail/providers/Account;
        //    29: getfield        com/android/mail/providers/Account.ayw:Lcom/android/mail/providers/Settings;
        //    32: getfield        com/android/mail/providers/Settings.aBX:Landroid/net/Uri;
        //    35: getstatic       com/android/mail/providers/E.aCv:[Ljava/lang/String;
        //    38: aconst_null    
        //    39: aconst_null    
        //    40: aconst_null    
        //    41: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    44: astore          4
        //    46: aload           4
        //    48: ifnull          84
        //    51: aload           4
        //    53: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    58: ifeq            77
        //    61: aload_0        
        //    62: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //    65: new             Lcom/android/mail/providers/Folder;
        //    68: dup            
        //    69: aload           4
        //    71: invokespecial   com/android/mail/providers/Folder.<init>:(Landroid/database/Cursor;)V
        //    74: putfield        com/android/mail/ui/a.aCQ:Lcom/android/mail/providers/Folder;
        //    77: aload           4
        //    79: invokeinterface android/database/Cursor.close:()V
        //    84: aload_0        
        //    85: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //    88: getfield        com/android/mail/ui/a.aqp:Lcom/android/mail/providers/Folder;
        //    91: ifnull          194
        //    94: aload_0        
        //    95: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //    98: getfield        com/android/mail/ui/a.mContext:Landroid/content/Context;
        //   101: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   104: aload_0        
        //   105: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //   108: getfield        com/android/mail/ui/a.aqp:Lcom/android/mail/providers/Folder;
        //   111: getfield        com/android/mail/providers/Folder.aAq:Landroid/net/Uri;
        //   114: getstatic       com/android/mail/providers/E.aCv:[Ljava/lang/String;
        //   117: aconst_null    
        //   118: aconst_null    
        //   119: aconst_null    
        //   120: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   123: astore_1       
        //   124: aload_1        
        //   125: ifnull          137
        //   128: aload_1        
        //   129: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   134: ifne            169
        //   137: aload_0        
        //   138: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //   141: getfield        com/android/mail/ui/a.aCQ:Lcom/android/mail/providers/Folder;
        //   144: astore_3       
        //   145: aload_1        
        //   146: ifnull          155
        //   149: aload_1        
        //   150: invokeinterface android/database/Cursor.close:()V
        //   155: aload_3        
        //   156: areturn        
        //   157: astore          5
        //   159: aload           4
        //   161: invokeinterface android/database/Cursor.close:()V
        //   166: aload           5
        //   168: athrow         
        //   169: new             Lcom/android/mail/providers/Folder;
        //   172: dup            
        //   173: aload_1        
        //   174: invokespecial   com/android/mail/providers/Folder.<init>:(Landroid/database/Cursor;)V
        //   177: astore_3       
        //   178: goto            145
        //   181: astore_2       
        //   182: aload_1        
        //   183: ifnull          192
        //   186: aload_1        
        //   187: invokeinterface android/database/Cursor.close:()V
        //   192: aload_2        
        //   193: athrow         
        //   194: aload_0        
        //   195: getfield        com/android/mail/ui/k.aEa:Lcom/android/mail/ui/a;
        //   198: getfield        com/android/mail/ui/a.aCQ:Lcom/android/mail/providers/Folder;
        //   201: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  51     77     157    169    Any
        //  94     124    181    194    Any
        //  128    137    181    194    Any
        //  137    145    181    194    Any
        //  169    178    181    194    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0137:
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
