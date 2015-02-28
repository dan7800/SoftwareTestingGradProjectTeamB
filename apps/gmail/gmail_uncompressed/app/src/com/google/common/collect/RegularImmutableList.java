package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

class RegularImmutableList<E> extends ImmutableList<E>
{
    private final transient Object[] cCe;
    private final transient int offset;
    private final transient int size;
    
    RegularImmutableList(final Object[] array) {
        this(array, 0, array.length);
    }
    
    RegularImmutableList(final Object[] cCe, final int offset, final int size) {
        this.offset = offset;
        this.size = size;
        this.cCe = cCe;
    }
    
    @Override
    final boolean YW() {
        return this.offset != 0 || this.size != this.cCe.length;
    }
    
    @Override
    public final aJ<E> YX() {
        return I.a(this.cCe, this.offset, this.size);
    }
    
    @Override
    public final ImmutableList<E> al(final int n, final int n2) {
        i.k(n, n2, this.size);
        if (n == n2) {
            return (ImmutableList<E>)EmptyImmutableList.cAo;
        }
        return new RegularImmutableList(this.cCe, n + this.offset, n2 - n);
    }
    
    @Override
    public boolean contains(final Object o) {
        return this.indexOf(o) != -1;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof List)) {
            return false;
        }
        final List list = (List)o;
        if (this.size() != list.size()) {
            return false;
        }
        int offset = this.offset;
        if (o instanceof RegularImmutableList) {
            final RegularImmutableList list2 = (RegularImmutableList)o;
            int n;
            for (int i = list2.offset; i < list2.offset + list2.size; ++i, offset = n) {
                final Object[] cCe = this.cCe;
                n = offset + 1;
                if (!cCe[offset].equals(list2.cCe[i])) {
                    return false;
                }
            }
        }
        else {
            for (final Object next : list) {
                final Object[] cCe2 = this.cCe;
                final int n2 = offset + 1;
                if (!cCe2[offset].equals(next)) {
                    return false;
                }
                offset = n2;
            }
        }
        return true;
    }
    
    @Override
    public final aK<E> fi(final int p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             new            !!! ERROR
        //     3: dup            
        //     4: aload_0        
        //     5: aload_0        
        //     6: getfield        com/google/common/collect/RegularImmutableList.size:I
        //     9: iload_1        
        //    10: invokespecial   invokespecial  !!! ERROR
        //    13: areturn        
        //    Signature:
        //  (I)Lcom/google/common/collect/aK<TE;>;
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
    
    @Override
    public E get(final int n) {
        i.ak(n, this.size);
        return (E)this.cCe[n + this.offset];
    }
    
    @Override
    public int hashCode() {
        int n = 1;
        for (int i = this.offset; i < this.offset + this.size; ++i) {
            n = n * 31 + this.cCe[i].hashCode();
        }
        return n;
    }
    
    @Override
    public int indexOf(final Object o) {
        if (o != null) {
            for (int i = this.offset; i < this.offset + this.size; ++i) {
                if (this.cCe[i].equals(o)) {
                    return i - this.offset;
                }
            }
        }
        return -1;
    }
    
    @Override
    public boolean isEmpty() {
        return false;
    }
    
    @Override
    public int lastIndexOf(final Object o) {
        if (o != null) {
            for (int i = -1 + (this.offset + this.size); i >= this.offset; --i) {
                if (this.cCe[i].equals(o)) {
                    return i - this.offset;
                }
            }
        }
        return -1;
    }
    
    @Override
    public int size() {
        return this.size;
    }
    
    @Override
    public Object[] toArray() {
        final Object[] array = new Object[this.size()];
        System.arraycopy(this.cCe, this.offset, array, 0, this.size);
        return array;
    }
    
    @Override
    public <T> T[] toArray(T[] b) {
        if (b.length < this.size) {
            b = aA.b(b, this.size);
        }
        else if (b.length > this.size) {
            b[this.size] = null;
        }
        System.arraycopy(this.cCe, this.offset, b, 0, this.size);
        return b;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = l.fh(this.size()).append('[').append(this.cCe[this.offset]);
        for (int i = 1 + this.offset; i < this.offset + this.size; ++i) {
            append.append(", ").append(this.cCe[i]);
        }
        return append.append(']').toString();
    }
}
