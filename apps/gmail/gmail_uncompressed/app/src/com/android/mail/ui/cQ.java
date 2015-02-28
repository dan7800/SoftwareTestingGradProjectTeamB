package com.android.mail.ui;

import android.os.*;
import android.content.*;

final class cq extends AsyncTask<Void, Void, Void>
{
    final /* synthetic */ ContentResolver aLo;
    final /* synthetic */ MailboxSelectionActivity aLp;
    
    cq(final MailboxSelectionActivity aLp, final ContentResolver aLo) {
        this.aLp = aLp;
        this.aLo = aLo;
    }
    
    private Void ko() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/mail/ui/cq.aLo:Landroid/content/ContentResolver;
        //     4: invokestatic    com/android/mail/providers/t.vh:()Landroid/net/Uri;
        //     7: getstatic       com/android/mail/providers/E.aCr:[Ljava/lang/String;
        //    10: aconst_null    
        //    11: aconst_null    
        //    12: aconst_null    
        //    13: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    16: astore_3       
        //    17: aload_3        
        //    18: astore_2       
        //    19: aload_0        
        //    20: getfield        com/android/mail/ui/cq.aLp:Lcom/android/mail/ui/MailboxSelectionActivity;
        //    23: aload_2        
        //    24: invokestatic    com/android/mail/ui/MailboxSelectionActivity.a:(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
        //    27: aload_2        
        //    28: ifnull          37
        //    31: aload_2        
        //    32: invokeinterface android/database/Cursor.close:()V
        //    37: aconst_null    
        //    38: areturn        
        //    39: astore_1       
        //    40: aconst_null    
        //    41: astore_2       
        //    42: aload_2        
        //    43: ifnull          52
        //    46: aload_2        
        //    47: invokeinterface android/database/Cursor.close:()V
        //    52: aload_1        
        //    53: athrow         
        //    54: astore_1       
        //    55: goto            42
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  0      17     39     42     Any
        //  19     27     54     58     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0037:
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
