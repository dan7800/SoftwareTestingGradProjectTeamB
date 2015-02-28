package com.google.android.gms.common.internal;

import java.util.*;
import com.google.android.gms.common.internal.f$com.google.android.gms.common.internal.*;
import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.*;
import android.util.*;
import android.os.*;

public abstract class f<T extends IInterface> implements com.google.android.gms.common.api.f, p
{
    public static final String[] bEY;
    private final n bCK;
    private final Looper bCw;
    private T bES;
    private final ArrayList<h<?>> bET;
    private k bEU;
    private volatile int bEV;
    private final String[] bEW;
    boolean bEX;
    private final Context mContext;
    final Handler mHandler;
    
    static {
        bEY = new String[] { "service_esmobile", "service_googleme" };
    }
    
    protected f(final Context context, final Looper looper, final com.google.android.gms.common.api.p p5, final q q, final String... bew) {
        this.bET = new ArrayList<h<?>>();
        this.bEV = 1;
        this.bEX = false;
        this.mContext = G.ae(context);
        this.bCw = G.f(looper, "Looper must not be null");
        this.bCK = new n(looper, this);
        this.mHandler = new g(this, looper);
        this.bEW = bew;
        this.bCK.a(G.ae(p5));
        this.bCK.a(G.ae(q));
    }
    
    protected f(final Context context, final d d, final e e, final String... array) {
        this(context, context.getMainLooper(), new i(d), new l(e), array);
    }
    
    private void ey(final int bev) {
        final int bev2 = this.bEV;
        this.bEV = bev;
    }
    
    @Override
    public final boolean KE() {
        return this.bEX;
    }
    
    protected abstract String La();
    
    protected abstract String Lb();
    
    public final String[] Lc() {
        return this.bEW;
    }
    
    protected final void Ld() {
        if (!this.isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }
    
    public final T Le() {
        this.Ld();
        return this.bES;
    }
    
    protected void a(final int p0, final IBinder p1, final Bundle p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/common/internal/f.mHandler:Landroid/os/Handler;
        //     4: aload_0        
        //     5: getfield        com/google/android/gms/common/internal/f.mHandler:Landroid/os/Handler;
        //     8: iconst_1       
        //     9: new             new            !!! ERROR
        //    12: dup            
        //    13: aload_0        
        //    14: iload_1        
        //    15: aload_2        
        //    16: aload_3        
        //    17: invokespecial   invokespecial  !!! ERROR
        //    20: invokevirtual   android/os/Handler.obtainMessage:(ILjava/lang/Object;)Landroid/os/Message;
        //    23: invokevirtual   android/os/Handler.sendMessage:(Landroid/os/Message;)Z
        //    26: pop            
        //    27: return         
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalArgumentException: Argument 'typeArguments' must not have any null elements.
        //     at com.strobel.core.VerifyArgument.noNullElementsAndNotEmpty(VerifyArgument.java:145)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.makeGenericType(CoreMetadataFactory.java:566)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory.makeParameterizedType(CoreMetadataFactory.java:154)
        //     at com.strobel.assembler.metadata.signatures.Reifier.visitClassTypeSignature(Reifier.java:125)
        //     at com.strobel.assembler.metadata.signatures.ClassTypeSignature.accept(ClassTypeSignature.java:46)
        //     at com.strobel.assembler.metadata.MetadataParser.parseClassSignature(MetadataParser.java:394)
        //     at com.strobel.assembler.metadata.ClassFileReader.populateBaseTypes(ClassFileReader.java:665)
        //     at com.strobel.assembler.metadata.ClassFileReader.readClass(ClassFileReader.java:438)
        //     at com.strobel.assembler.metadata.ClassFileReader.readClass(ClassFileReader.java:366)
        //     at com.strobel.assembler.metadata.MetadataSystem.resolveType(MetadataSystem.java:124)
        //     at com.strobel.decompiler.NoRetryMetadataSystem.resolveType(DecompilerDriver.java:447)
        //     at com.strobel.assembler.metadata.MetadataSystem.resolveCore(MetadataSystem.java:76)
        //     at com.strobel.assembler.metadata.MetadataResolver.resolve(MetadataResolver.java:104)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.resolve(CoreMetadataFactory.java:576)
        //     at com.strobel.assembler.metadata.MetadataResolver.resolve(MetadataResolver.java:128)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.resolve(CoreMetadataFactory.java:586)
        //     at com.strobel.assembler.metadata.MethodReference.resolve(MethodReference.java:172)
        //     at com.strobel.decompiler.ast.TypeAnalysis.inferCall(TypeAnalysis.java:2420)
        //     at com.strobel.decompiler.ast.TypeAnalysis.doInferTypeForExpression(TypeAnalysis.java:1029)
        //     at com.strobel.decompiler.ast.TypeAnalysis.inferTypeForExpression(TypeAnalysis.java:803)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:672)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:655)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:365)
        //     at com.strobel.decompiler.ast.TypeAnalysis.run(TypeAnalysis.java:96)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:109)
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
    
    protected abstract void a(final B p0, final j p1);
    
    @Deprecated
    public final void a(final h<?> h) {
        synchronized (this.bET) {
            this.bET.add(h);
            // monitorexit(this.bET)
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2, (Object)h));
        }
    }
    
    @Override
    public final void connect() {
        this.bEX = true;
        this.ey(2);
        final int cf = com.google.android.gms.common.f.cf(this.mContext);
        if (cf != 0) {
            this.ey(1);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3, (Object)cf));
        }
        else {
            if (this.bEU != null) {
                Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
                this.bES = null;
                com.google.android.gms.common.internal.q.ci(this.mContext).b(this.La(), this.bEU);
            }
            this.bEU = new com.google.android.gms.common.internal.k(this);
            if (!com.google.android.gms.common.internal.q.ci(this.mContext).a(this.La(), this.bEU)) {
                Log.e("GmsClient", "unable to connect to service: " + this.La());
                this.mHandler.sendMessage(this.mHandler.obtainMessage(3, (Object)9));
            }
        }
    }
    
    @Override
    public void disconnect() {
        this.bEX = false;
        synchronized (this.bET) {
            for (int size = this.bET.size(), i = 0; i < size; ++i) {
                ((com.google.android.gms.common.internal.h)this.bET.get(i)).Lh();
            }
            this.bET.clear();
            // monitorexit(this.bET)
            this.ey(1);
            this.bES = null;
            if (this.bEU != null) {
                com.google.android.gms.common.internal.q.ci(this.mContext).b(this.La(), this.bEU);
                this.bEU = null;
            }
        }
    }
    
    protected abstract T g(final IBinder p0);
    
    public final Context getContext() {
        return this.mContext;
    }
    
    @Override
    public final Looper getLooper() {
        return this.bCw;
    }
    
    protected final void h(final IBinder binder) {
        try {
            this.a(C.k(binder), new j(this));
        }
        catch (RemoteException ex) {
            Log.w("GmsClient", "service died");
        }
    }
    
    @Override
    public final boolean isConnected() {
        return this.bEV == 3;
    }
    
    public final boolean isConnecting() {
        return this.bEV == 2;
    }
}
