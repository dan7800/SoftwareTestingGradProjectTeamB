package com.google.common.collect;

import com.google.common.base.*;
import java.io.*;
import java.util.*;

class RegularImmutableMap$Values<V> extends ImmutableCollection<V>
{
    final RegularImmutableMap<?, V> map;
    
    RegularImmutableMap$Values(final RegularImmutableMap<?, V> map) {
        this.map = map;
    }
    
    @Override
    final boolean YW() {
        return true;
    }
    
    @Override
    public final aJ<V> YX() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             new            !!! ERROR
        //     3: dup            
        //     4: aload_0        
        //     5: aload_0        
        //     6: getfield        com/google/common/collect/RegularImmutableMap$Values.map:Lcom/google/common/collect/RegularImmutableMap;
        //     9: invokestatic    com/google/common/collect/RegularImmutableMap.a:(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/aD;
        //    12: arraylength    
        //    13: invokespecial   invokespecial  !!! ERROR
        //    16: areturn        
        //    Signature:
        //  ()Lcom/google/common/collect/aJ<TV;>;
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
    public boolean contains(final Object o) {
        return this.map.containsValue(o);
    }
    
    @Override
    public int size() {
        return ((RegularImmutableMap<Object, Object>)this.map).cCg.length;
    }
}
