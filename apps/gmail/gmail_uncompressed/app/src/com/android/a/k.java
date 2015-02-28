package com.android.a;

import android.util.*;

public class k extends l<g, i> implements a
{
    private static final String TAG;
    private boolean GR;
    private LruCache<g, j> GS;
    private final Object fK;
    
    static {
        TAG = k.class.getSimpleName();
    }
    
    public k(final int n) {
        super(n, 0.0f);
        this.GR = false;
        this.fK = new Object();
        this.GS = (LruCache<g, j>)new LruCache(100);
    }
    
    private i a(final g g, final i i) {
        if (this.GS != null && (i == null || i == j.ga())) {
            this.GS.put((Object)g, (Object)j.ga());
            return null;
        }
        return super.a(g, i);
    }
    
    private i a(final g g, final boolean b) {
        if (this.GS != null && this.GS.get((Object)g) != null) {
            return j.ga();
        }
        return super.k(g, b);
    }
    
    private void a(final i i) {
        synchronized (this.fK) {
            super.b(i);
            this.fK.notify();
        }
    }
    
    private i gb() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/a/k.fK:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: invokespecial   com/android/a/l.gd:()Lcom/android/a/e;
        //    11: checkcast       Lcom/android/a/i;
        //    14: astore_3       
        //    15: aload_3        
        //    16: ifnonnull       49
        //    19: aload_0        
        //    20: getfield        com/android/a/k.GR:Z
        //    23: ifeq            49
        //    26: ldc             "sleep"
        //    28: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //    31: aload_0        
        //    32: getfield        com/android/a/k.fK:Ljava/lang/Object;
        //    35: invokevirtual   java/lang/Object.wait:()V
        //    38: invokestatic    com/android/a/a/a.endSection:()V
        //    41: goto            7
        //    44: astore_2       
        //    45: aload_1        
        //    46: monitorexit    
        //    47: aload_2        
        //    48: athrow         
        //    49: aload_1        
        //    50: monitorexit    
        //    51: aload_3        
        //    52: areturn        
        //    53: astore          4
        //    55: goto            38
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  7      15     44     49     Any
        //  19     31     44     49     Any
        //  31     38     53     58     Ljava/lang/InterruptedException;
        //  31     38     44     49     Any
        //  38     41     44     49     Any
        //  49     51     44     49     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0038:
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
