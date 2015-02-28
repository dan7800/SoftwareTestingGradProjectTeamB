package com.android.mail.ui;

import android.app.*;
import android.os.*;
import android.view.*;

public class cn extends Activity
{
    protected void onCreate(final Bundle p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokespecial   android/app/Activity.onCreate:(Landroid/os/Bundle;)V
        //     5: aload_0        
        //     6: ldc             2130968719
        //     8: invokevirtual   com/android/mail/ui/cn.setContentView:(I)V
        //    11: aload_0        
        //    12: invokevirtual   com/android/mail/ui/cn.getActionBar:()Landroid/app/ActionBar;
        //    15: astore_2       
        //    16: aload_2        
        //    17: ifnull          25
        //    20: aload_2        
        //    21: iconst_1       
        //    22: invokevirtual   android/app/ActionBar.setDisplayHomeAsUpEnabled:(Z)V
        //    25: aload_0        
        //    26: invokevirtual   com/android/mail/ui/cn.getResources:()Landroid/content/res/Resources;
        //    29: ldc             2131165184
        //    31: invokevirtual   android/content/res/Resources.openRawResource:(I)Ljava/io/InputStream;
        //    34: astore          10
        //    36: aload           10
        //    38: astore          4
        //    40: aload           4
        //    42: ldc             "UTF-8"
        //    44: invokestatic    org/apache/a/a/a.c:(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
        //    47: ldc             "UTF-8"
        //    49: invokestatic    java/net/URLEncoder.encode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    52: ldc             "+"
        //    54: ldc             "%20"
        //    56: invokevirtual   java/lang/String.replace:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
        //    59: astore          11
        //    61: aload           4
        //    63: ifnull          182
        //    66: aload           4
        //    68: invokevirtual   java/io/InputStream.close:()V
        //    71: aload           11
        //    73: astore          8
        //    75: aload_0        
        //    76: ldc             2131558665
        //    78: invokevirtual   com/android/mail/ui/cn.findViewById:(I)Landroid/view/View;
        //    81: checkcast       Landroid/webkit/WebView;
        //    84: aload           8
        //    86: ldc             "text/html"
        //    88: aconst_null    
        //    89: invokevirtual   android/webkit/WebView.loadData:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //    92: return         
        //    93: astore          12
        //    95: aload           11
        //    97: astore          8
        //    99: goto            75
        //   102: astore          6
        //   104: aconst_null    
        //   105: astore          4
        //   107: invokestatic    com/android/mail/utils/D.AU:()Ljava/lang/String;
        //   110: aload           6
        //   112: ldc             "Error reading licence file"
        //   114: iconst_0       
        //   115: anewarray       Ljava/lang/Object;
        //   118: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   121: pop            
        //   122: aload           4
        //   124: ifnull          176
        //   127: aload           4
        //   129: invokevirtual   java/io/InputStream.close:()V
        //   132: aconst_null    
        //   133: astore          8
        //   135: goto            75
        //   138: astore          9
        //   140: aconst_null    
        //   141: astore          8
        //   143: goto            75
        //   146: astore_3       
        //   147: aconst_null    
        //   148: astore          4
        //   150: aload           4
        //   152: ifnull          160
        //   155: aload           4
        //   157: invokevirtual   java/io/InputStream.close:()V
        //   160: aload_3        
        //   161: athrow         
        //   162: astore          5
        //   164: goto            160
        //   167: astore_3       
        //   168: goto            150
        //   171: astore          6
        //   173: goto            107
        //   176: aconst_null    
        //   177: astore          8
        //   179: goto            75
        //   182: aload           11
        //   184: astore          8
        //   186: goto            75
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  25     36     102    107    Ljava/io/IOException;
        //  25     36     146    150    Any
        //  40     61     171    176    Ljava/io/IOException;
        //  40     61     167    171    Any
        //  66     71     93     102    Ljava/io/IOException;
        //  107    122    167    171    Any
        //  127    132    138    146    Ljava/io/IOException;
        //  155    160    162    167    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0075:
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
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332: {
                this.finish();
                return true;
            }
        }
    }
}
