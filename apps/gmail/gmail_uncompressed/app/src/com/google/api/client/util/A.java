package com.google.api.client.util;

import java.util.*;

public class a<K, V> extends AbstractMap<K, V> implements Cloneable
{
    private Object[] cys;
    int size;
    
    public static <K, V> a<K, V> Yk() {
        return new a<K, V>();
    }
    
    private void a(final int n, final K k, final V v) {
        final Object[] cys = this.cys;
        cys[n] = k;
        cys[n + 1] = v;
    }
    
    private int ap(final Object o) {
        final int n = this.size << 1;
        final Object[] cys = this.cys;
        for (int i = 0; i < n; i += 2) {
            final Object o2 = cys[i];
            if (o == null) {
                if (o2 == null) {
                    return i;
                }
            }
            else if (o.equals(o2)) {
                return i;
            }
        }
        return -2;
    }
    
    private V ff(final int n) {
        if (n < 0) {
            return null;
        }
        return (V)this.cys[n];
    }
    
    private V fg(final int n) {
        final int n2 = this.size << 1;
        if (n < 0 || n >= n2) {
            return null;
        }
        final V ff = this.ff(n + 1);
        final Object[] cys = this.cys;
        final int n3 = -2 + (n2 - n);
        if (n3 != 0) {
            System.arraycopy(cys, n + 2, cys, n, n3);
        }
        --this.size;
        this.a(n2 - 2, null, null);
        return ff;
    }
    
    public final a<K, V> Yl() {
        try {
            final a a = (a)super.clone();
            final Object[] cys = this.cys;
            if (cys != null) {
                final int length = cys.length;
                System.arraycopy(cys, 0, a.cys = new Object[length], 0, length);
            }
            return a;
        }
        catch (CloneNotSupportedException ex) {
            return null;
        }
    }
    
    public final V az(final int n) {
        if (n < 0 || n >= this.size) {
            return null;
        }
        return this.ff(1 + (n << 1));
    }
    
    @Override
    public void clear() {
        this.size = 0;
        this.cys = null;
    }
    
    @Override
    public final boolean containsKey(final Object o) {
        return -2 != this.ap(o);
    }
    
    @Override
    public final boolean containsValue(final Object o) {
        final int n = this.size << 1;
        final Object[] cys = this.cys;
        for (int i = 1; i < n; i += 2) {
            final Object o2 = cys[i];
            if (o == null) {
                if (o2 == null) {
                    return true;
                }
            }
            else if (o.equals(o2)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final Set<Entry<K, V>> entrySet() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             new            !!! ERROR
        //     3: dup            
        //     4: aload_0        
        //     5: invokespecial   invokespecial  !!! ERROR
        //     8: areturn        
        //    Signature:
        //  ()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalArgumentException: Argument 'typeArguments' must not have any null elements.
        //     at com.strobel.core.VerifyArgument.noNullElementsAndNotEmpty(VerifyArgument.java:145)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.makeGenericType(CoreMetadataFactory.java:566)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory.makeParameterizedType(CoreMetadataFactory.java:154)
        //     at com.strobel.assembler.metadata.signatures.Reifier.visitClassTypeSignature(Reifier.java:125)
        //     at com.strobel.assembler.metadata.signatures.ClassTypeSignature.accept(ClassTypeSignature.java:46)
        //     at com.strobel.assembler.metadata.signatures.Reifier.reifyTypeArguments(Reifier.java:53)
        //     at com.strobel.assembler.metadata.signatures.Reifier.visitClassTypeSignature(Reifier.java:123)
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
    
    public final K fe(final int n) {
        if (n < 0 || n >= this.size) {
            return null;
        }
        return (K)this.cys[n << 1];
    }
    
    @Override
    public final V get(final Object o) {
        return this.ff(1 + this.ap(o));
    }
    
    @Override
    public final V put(final K k, final V v) {
        final int n = this.ap(k) >> 1;
        int size;
        if (n == -1) {
            size = this.size;
        }
        else {
            size = n;
        }
        if (size < 0) {
            throw new IndexOutOfBoundsException();
        }
        final int size2 = size + 1;
        if (size2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        final Object[] cys = this.cys;
        int n2 = size2 << 1;
        int length;
        if (cys == null) {
            length = 0;
        }
        else {
            length = cys.length;
        }
        if (n2 > length) {
            int n3 = 1 + 3 * (length / 2);
            if (n3 % 2 != 0) {
                ++n3;
            }
            if (n3 >= n2) {
                n2 = n3;
            }
            if (n2 == 0) {
                this.cys = null;
            }
            else {
                final int size3 = this.size;
                final Object[] cys2 = this.cys;
                if (size3 == 0 || n2 != cys2.length) {
                    final Object[] cys3 = new Object[n2];
                    this.cys = cys3;
                    if (size3 != 0) {
                        System.arraycopy(cys2, 0, cys3, 0, size3 << 1);
                    }
                }
            }
        }
        final int n4 = size << 1;
        final V ff = this.ff(n4 + 1);
        this.a(n4, k, v);
        if (size2 > this.size) {
            this.size = size2;
        }
        return ff;
    }
    
    public final V remove(final int n) {
        return this.fg(n << 1);
    }
    
    @Override
    public final V remove(final Object o) {
        return this.fg(this.ap(o));
    }
    
    public final V set(final int n, final V v) {
        final int size = this.size;
        if (n < 0 || n >= size) {
            throw new IndexOutOfBoundsException();
        }
        final int n2 = 1 + (n << 1);
        final V ff = this.ff(n2);
        this.cys[n2] = v;
        return ff;
    }
    
    @Override
    public final int size() {
        return this.size;
    }
}
