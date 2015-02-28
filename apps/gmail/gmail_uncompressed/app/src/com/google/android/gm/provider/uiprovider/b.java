package com.google.android.gm.provider.uiprovider;

import android.database.*;
import android.content.*;
import com.google.common.collect.*;
import android.os.*;
import com.google.android.gm.provider.*;
import java.util.*;
import com.android.mail.utils.*;

public final class b implements m
{
    private static final String mW;
    private final long aPP;
    private final MailEngine bdz;
    private final Map<Long, f> bof;
    private final WeakHashMap<Cursor, Object> bog;
    private k boh;
    private final Object boi;
    private final Handler boj;
    private final String mAccount;
    private final Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public b(final Context mContext, final String mAccount, final long app, final MailEngine bdz) {
        this.bof = (Map<Long, f>)Maps.aan();
        this.bog = new WeakHashMap<Cursor, Object>();
        this.boi = new Object();
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.aPP = app;
        this.boj = new Handler(Looper.getMainLooper());
        this.bdz = bdz;
    }
    
    private f a(final bm bm) {
        final long bkt = bm.bkt;
        synchronized (this.bof) {
            f f;
            if (!this.bof.containsKey(bkt)) {
                f = new f(this.mContext, this.mAccount, this.aPP, bkt, bm.blL);
                this.bof.put(bkt, f);
            }
            else {
                f = this.bof.get(bkt);
            }
            // monitorexit(this.bof)
            f.b(bm);
            return f;
        }
    }
    
    @Override
    public final void DT() {
        synchronized (this.bof) {
            this.HW();
        }
    }
    
    public final void HV() {
        this.boj.post((Runnable)new c(this));
    }
    
    final void HW() {
        synchronized (this.bof) {
            final Iterator<f> iterator = this.bof.values().iterator();
            while (iterator.hasNext()) {
                iterator.next().Ie();
            }
        }
    }
    // monitorexit(map)
    
    public final f aU(final long n) {
        synchronized (this.bof) {
            return this.bof.get(n);
        }
    }
    
    public final f aV(final long n) {
        f au = this.aU(n);
        if (au == null || !au.Id()) {
            final bm c = this.bdz.c(n, false);
            if (c == null) {
                E.c(b.mW, "Message not found", new Object[0]);
                au = null;
            }
            else {
                if (au == null) {
                    return this.a(c);
                }
                if (!au.Id()) {
                    au.c(c);
                    return au;
                }
            }
        }
        return au;
    }
    
    public final void r(final Cursor cursor) {
        synchronized (this.bog) {
            this.bog.put(cursor, null);
        }
    }
    
    public final void s(final Cursor p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/provider/uiprovider/b.bog:Ljava/util/WeakHashMap;
        //     4: astore_2       
        //     5: aload_2        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/google/android/gm/provider/uiprovider/b.bog:Ljava/util/WeakHashMap;
        //    11: aload_1        
        //    12: invokevirtual   java/util/WeakHashMap.remove:(Ljava/lang/Object;)Ljava/lang/Object;
        //    15: pop            
        //    16: aload_0        
        //    17: getfield        com/google/android/gm/provider/uiprovider/b.bog:Ljava/util/WeakHashMap;
        //    20: invokevirtual   java/util/WeakHashMap.size:()I
        //    23: istore          5
        //    25: iconst_0       
        //    26: istore          6
        //    28: iload           5
        //    30: ifne            36
        //    33: iconst_1       
        //    34: istore          6
        //    36: aload_2        
        //    37: monitorexit    
        //    38: iload           6
        //    40: ifeq            87
        //    43: aload_0        
        //    44: getfield        com/google/android/gm/provider/uiprovider/b.boi:Ljava/lang/Object;
        //    47: astore          7
        //    49: aload           7
        //    51: monitorenter   
        //    52: aload_0        
        //    53: getfield        com/google/android/gm/provider/uiprovider/b.boh:Lcom/google/android/gm/provider/k;
        //    56: ifnull          84
        //    59: getstatic       com/google/android/gm/provider/uiprovider/b.mW:Ljava/lang/String;
        //    62: ldc             "attachment cursor closed, and stopping loader"
        //    64: iconst_0       
        //    65: anewarray       Ljava/lang/Object;
        //    68: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    71: pop            
        //    72: aload_0        
        //    73: getfield        com/google/android/gm/provider/uiprovider/b.boh:Lcom/google/android/gm/provider/k;
        //    76: invokevirtual   com/google/android/gm/provider/k.stop:()V
        //    79: aload_0        
        //    80: aconst_null    
        //    81: putfield        com/google/android/gm/provider/uiprovider/b.boh:Lcom/google/android/gm/provider/k;
        //    84: aload           7
        //    86: monitorexit    
        //    87: return         
        //    88: astore_3       
        //    89: aload_2        
        //    90: monitorexit    
        //    91: aload_3        
        //    92: athrow         
        //    93: astore          8
        //    95: aload           7
        //    97: monitorexit    
        //    98: aload           8
        //   100: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  7      25     88     93     Any
        //  36     38     88     93     Any
        //  52     84     93     101    Any
        //  84     87     93     101    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0084:
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
