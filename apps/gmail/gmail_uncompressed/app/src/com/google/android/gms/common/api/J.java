package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.*;
import java.util.*;
import java.util.concurrent.*;
import android.os.*;

public abstract class j<R extends t> implements m<R>, r<R>
{
    private final Object bCd;
    protected k<R> bCe;
    private final CountDownLatch bCf;
    private final ArrayList bCg;
    private u<R> bCh;
    private volatile R bCi;
    private volatile boolean bCj;
    private boolean bCk;
    private boolean bCl;
    private v bCm;
    
    j() {
        this.bCd = new Object();
        this.bCf = new CountDownLatch(1);
        this.bCg = new ArrayList();
    }
    
    private boolean Kr() {
        return this.bCf.getCount() == 0L;
    }
    
    private R Ks() {
        synchronized (this.bCd) {
            G.a(!this.bCj, "Result has already been consumed.");
            G.a(this.Kr(), "Result is not ready.");
            final t bCi = this.bCi;
            this.Kt();
            return (R)bCi;
        }
    }
    
    private void Ku() {
        synchronized (this.bCd) {
            if (!this.Kr()) {
                this.c(this.a(Status.bCE));
                this.bCl = true;
            }
        }
    }
    
    private void d(final R bCi) {
        this.bCi = bCi;
        this.bCm = null;
        this.bCf.countDown();
        this.bCi.Jk();
        if (this.bCh != null) {
            this.bCe.Kv();
            if (!this.bCk) {
                this.bCe.a(this.bCh, this.Ks());
            }
        }
        final Iterator iterator = this.bCg.iterator();
        while (iterator.hasNext()) {
            iterator.next();
        }
        this.bCg.clear();
    }
    
    private boolean isCanceled() {
        synchronized (this.bCd) {
            return this.bCk;
        }
    }
    
    protected void Kt() {
        this.bCj = true;
        this.bCi = null;
        this.bCh = null;
    }
    
    protected abstract R a(final Status p0);
    
    @Override
    public final R a(final TimeUnit timeUnit) {
        boolean b = true;
        while (true) {
            while (true) {
                boolean b2 = false;
                Label_0021: {
                    if (5L <= 0L || Looper.myLooper() != Looper.getMainLooper()) {
                        b2 = b;
                        break Label_0021;
                    }
                    Label_0072: {
                        break Label_0072;
                        while (true) {
                            G.a(b, "Result has already been consumed.");
                            try {
                                if (!this.bCf.await(5L, timeUnit)) {
                                    this.Ku();
                                }
                                G.a(this.Kr(), "Result is not ready.");
                                return this.Ks();
                                b = false;
                                continue;
                                b2 = false;
                                break;
                            }
                            catch (InterruptedException ex) {
                                synchronized (this.bCd) {
                                    if (!this.Kr()) {
                                        this.c(this.a(Status.bCC));
                                        this.bCl = true;
                                    }
                                }
                            }
                        }
                    }
                }
                G.a(b2, "await must not be called on the UI thread when time is greater than zero.");
                if (!this.bCj) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    protected final void a(final k<R> bCe) {
        this.bCe = bCe;
    }
    
    @Override
    public final void a(final u<R> bCh) {
        while (true) {
            G.a(!this.bCj, "Result has already been consumed.");
            synchronized (this.bCd) {
                if (this.isCanceled()) {
                    return;
                }
                if (this.Kr()) {
                    this.bCe.a(bCh, this.Ks());
                    return;
                }
            }
            this.bCh = bCh;
        }
    }
    
    protected final void a(final v bCm) {
        synchronized (this.bCd) {
            this.bCm = bCm;
        }
    }
    
    public final void c(final R r) {
    Label_0054_Outer:
        while (true) {
            boolean b = true;
            while (true) {
            Label_0081:
                while (true) {
                    synchronized (this.bCd) {
                        if (this.bCl || this.bCk) {
                            i.b(r);
                            return;
                        }
                        if (!this.Kr()) {
                            final boolean b2 = b;
                            G.a(b2, "Results have already been set");
                            if (!this.bCj) {
                                G.a(b, "Result has already been consumed");
                                this.d(r);
                                return;
                            }
                            break Label_0081;
                        }
                    }
                    final boolean b2 = false;
                    continue Label_0054_Outer;
                }
                b = false;
                continue;
            }
        }
    }
    
    public final void cancel() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/common/api/j.bCd:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/google/android/gms/common/api/j.bCk:Z
        //    11: ifne            21
        //    14: aload_0        
        //    15: getfield        com/google/android/gms/common/api/j.bCj:Z
        //    18: ifeq            24
        //    21: aload_1        
        //    22: monitorexit    
        //    23: return         
        //    24: aload_0        
        //    25: getfield        com/google/android/gms/common/api/j.bCm:Lcom/google/android/gms/common/internal/v;
        //    28: astore_3       
        //    29: aload_3        
        //    30: ifnull          42
        //    33: aload_0        
        //    34: getfield        com/google/android/gms/common/api/j.bCm:Lcom/google/android/gms/common/internal/v;
        //    37: invokeinterface com/google/android/gms/common/internal/v.cancel:()V
        //    42: aload_0        
        //    43: getfield        com/google/android/gms/common/api/j.bCi:Lcom/google/android/gms/common/api/t;
        //    46: invokestatic    com/google/android/gms/common/api/i.b:(Lcom/google/android/gms/common/api/t;)V
        //    49: aload_0        
        //    50: aconst_null    
        //    51: putfield        com/google/android/gms/common/api/j.bCh:Lcom/google/android/gms/common/api/u;
        //    54: aload_0        
        //    55: iconst_1       
        //    56: putfield        com/google/android/gms/common/api/j.bCk:Z
        //    59: aload_0        
        //    60: aload_0        
        //    61: getstatic       com/google/android/gms/common/api/Status.bCF:Lcom/google/android/gms/common/api/Status;
        //    64: invokevirtual   com/google/android/gms/common/api/j.a:(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
        //    67: invokespecial   com/google/android/gms/common/api/j.d:(Lcom/google/android/gms/common/api/t;)V
        //    70: aload_1        
        //    71: monitorexit    
        //    72: return         
        //    73: astore_2       
        //    74: aload_1        
        //    75: monitorexit    
        //    76: aload_2        
        //    77: athrow         
        //    78: astore          4
        //    80: goto            42
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  7      21     73     78     Any
        //  21     23     73     78     Any
        //  24     29     73     78     Any
        //  33     42     78     83     Landroid/os/RemoteException;
        //  33     42     73     78     Any
        //  42     72     73     78     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0042:
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
