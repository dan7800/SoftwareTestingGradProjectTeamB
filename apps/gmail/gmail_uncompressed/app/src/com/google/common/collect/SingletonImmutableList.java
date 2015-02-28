package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class SingletonImmutableList<E> extends ImmutableList<E>
{
    final transient E cCn;
    
    SingletonImmutableList(final E e) {
        this.cCn = i.ak(e);
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<E> YX() {
        return I.aK(this.cCn);
    }
    
    @Override
    public final ImmutableList<E> al(final int n, final int n2) {
        i.k(n, n2, 1);
        final EmptyImmutableList cAo;
        if (n == n2) {
            cAo = EmptyImmutableList.cAo;
        }
        return (ImmutableList<E>)cAo;
    }
    
    @Override
    public final boolean contains(final Object o) {
        return this.cCn.equals(o);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof List)) {
                return false;
            }
            final List list = (List)o;
            if (list.size() != 1 || !this.cCn.equals(list.get(0))) {
                return false;
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
        //     0: iload_1        
        //     1: iconst_1       
        //     2: invokestatic    com/google/common/base/i.ad:(II)I
        //     5: pop            
        //     6: new             new            !!! ERROR
        //     9: dup            
        //    10: aload_0        
        //    11: iload_1        
        //    12: invokespecial   invokespecial  !!! ERROR
        //    15: areturn        
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
    public final E get(final int n) {
        i.ak(n, 1);
        return this.cCn;
    }
    
    @Override
    public final int hashCode() {
        return 31 + this.cCn.hashCode();
    }
    
    @Override
    public final int indexOf(final Object o) {
        if (this.cCn.equals(o)) {
            return 0;
        }
        return -1;
    }
    
    @Override
    public final boolean isEmpty() {
        return false;
    }
    
    @Override
    public final int lastIndexOf(final Object o) {
        if (this.cCn.equals(o)) {
            return 0;
        }
        return -1;
    }
    
    @Override
    public final int size() {
        return 1;
    }
    
    @Override
    public final Object[] toArray() {
        return new Object[] { this.cCn };
    }
    
    @Override
    public final <T> T[] toArray(T[] b) {
        if (b.length == 0) {
            b = aA.b(b, 1);
        }
        else if (b.length > 1) {
            b[1] = null;
        }
        b[0] = (T)this.cCn;
        return b;
    }
    
    @Override
    public final String toString() {
        final String string = this.cCn.toString();
        return new StringBuilder(2 + string.length()).append('[').append(string).append(']').toString();
    }
}
