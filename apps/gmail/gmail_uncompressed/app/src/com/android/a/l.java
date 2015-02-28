package com.android.a;

import java.util.concurrent.*;
import android.util.*;
import com.android.a.a.*;
import java.util.*;

public class l<K, V extends e> implements f<K, V>
{
    private static final String TAG;
    private final LinkedHashMap<K, V> GT;
    private final LinkedBlockingQueue<V> GU;
    private final int GV;
    private final LruCache<K, V> GW;
    
    static {
        TAG = l.class.getSimpleName();
    }
    
    public l(final int p0, final float p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_0        
        //     5: new             Ljava/util/LinkedHashMap;
        //     8: dup            
        //     9: iconst_0       
        //    10: ldc             0.75
        //    12: iconst_1       
        //    13: invokespecial   java/util/LinkedHashMap.<init>:(IFZ)V
        //    16: putfield        com/android/a/l.GT:Ljava/util/LinkedHashMap;
        //    19: aload_0        
        //    20: new             Ljava/util/concurrent/LinkedBlockingQueue;
        //    23: dup            
        //    24: invokespecial   java/util/concurrent/LinkedBlockingQueue.<init>:()V
        //    27: putfield        com/android/a/l.GU:Ljava/util/concurrent/LinkedBlockingQueue;
        //    30: fconst_0       
        //    31: iload_1        
        //    32: i2f            
        //    33: fmul           
        //    34: invokestatic    java/lang/Math.round:(F)I
        //    37: istore_3       
        //    38: iload_3        
        //    39: ifle            63
        //    42: aload_0        
        //    43: new             new            !!! ERROR
        //    46: dup            
        //    47: aload_0        
        //    48: iload_3        
        //    49: invokespecial   invokespecial  !!! ERROR
        //    52: putfield        com/android/a/l.GW:Landroid/util/LruCache;
        //    55: aload_0        
        //    56: iload_1        
        //    57: iload_3        
        //    58: isub           
        //    59: putfield        com/android/a/l.GV:I
        //    62: return         
        //    63: aload_0        
        //    64: aconst_null    
        //    65: putfield        com/android/a/l.GW:Landroid/util/LruCache;
        //    68: goto            55
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
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    protected int a(final V v) {
        return 1;
    }
    
    public V a(final K k, final V v) {
        a.beginSection("cache put");
        if (v == null) {
            a.endSection();
            return null;
        }
        while (true) {
            while (true) {
                synchronized (this.GT) {
                    if (v.fV()) {
                        final e e = this.GT.put(k, v);
                        a.endSection();
                        return (V)e;
                    }
                }
                final LruCache<K, V> gw = this.GW;
                e e = null;
                if (gw != null) {
                    e = (e)this.GW.put((Object)k, (Object)v);
                    continue;
                }
                continue;
            }
        }
    }
    
    public void b(final V v) {
        a.beginSection("pool offer");
        if (v.fU() != 0 || !v.fV()) {
            a.endSection();
            throw new IllegalArgumentException("unexpected offer of an invalid object: " + v);
        }
        this.GU.offer(v);
        a.endSection();
    }
    
    public V gd() {
        a.beginSection("pool poll");
        final e e = this.GU.poll();
        if (e != null) {
            a.endSection();
            return (V)e;
        }
        while (true) {
            final LinkedHashMap<K, V> gt = this.GT;
            // monitorenter(gt)
            int n = 0;
        Label_0129_Outer:
            while (true) {
                Object o2 = null;
                int n2 = 0;
                Label_0204: {
                    while (true) {
                        Object o = null;
                        Label_0194: {
                            while (true) {
                                try {
                                    final Iterator<Map.Entry<K, V>> iterator = this.GT.entrySet().iterator();
                                    o = null;
                                    e e2 = null;
                                    Block_6: {
                                        while (iterator.hasNext()) {
                                            o2 = iterator.next();
                                            e2 = ((Map.Entry<K, e>)o2).getValue();
                                            if (e2.fU() <= 0 && e2.fV()) {
                                                break Block_6;
                                            }
                                        }
                                        break Label_0194;
                                    }
                                    if (o == null) {
                                        n2 = n + this.a((V)e2);
                                        if (n2 <= this.GV) {
                                            break Label_0204;
                                        }
                                        if (n2 <= this.GV) {
                                            a.endSection();
                                            return null;
                                        }
                                        this.GT.remove(((Map.Entry)o2).getKey());
                                        a.endSection();
                                        return (V)((Map.Entry<K, e>)o2).getValue();
                                    }
                                }
                                finally {
                                }
                                // monitorexit(gt)
                                o2 = o;
                                continue Label_0129_Outer;
                            }
                        }
                        o2 = o;
                        n2 = n;
                        continue;
                    }
                }
                Object o = o2;
                n = n2;
                continue;
            }
        }
    }
    
    public V k(final K k, final boolean b) {
        a.beginSection("cache get");
        synchronized (this.GT) {
            e e = this.GT.get(k);
            if (e == null && this.GW != null) {
                e = (e)this.GW.get((Object)k);
            }
            if (b && e != null) {
                e.acquireReference();
            }
            a.endSection();
            return (V)e;
        }
    }
}
