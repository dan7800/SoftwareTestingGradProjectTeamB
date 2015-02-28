package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

public final class l
{
    static final c cAm;
    
    static {
        cAm = c.hM(", ");
    }
    
    static String G(final Collection<?> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokeinterface java/util/Collection.size:()I
        //     6: invokestatic    com/google/common/collect/l.fh:(I)Ljava/lang/StringBuilder;
        //     9: bipush          91
        //    11: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //    14: astore_1       
        //    15: getstatic       com/google/common/collect/l.cAm:Lcom/google/common/base/c;
        //    18: astore_2       
        //    19: new             Lcom/google/common/collect/m;
        //    22: dup            
        //    23: aload_0        
        //    24: invokespecial   com/google/common/collect/m.<init>:(Ljava/util/Collection;)V
        //    27: astore_3       
        //    28: aload_0        
        //    29: invokestatic    com/google/common/base/i.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    32: pop            
        //    33: aload_3        
        //    34: invokestatic    com/google/common/base/i.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    37: pop            
        //    38: aload_2        
        //    39: aload_1        
        //    40: new             new            !!! ERROR
        //    43: dup            
        //    44: aload_0        
        //    45: aload_3        
        //    46: invokespecial   invokespecial  !!! ERROR
        //    49: invokevirtual   com/google/common/base/c.b:(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
        //    52: pop            
        //    53: aload_1        
        //    54: bipush          93
        //    56: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //    59: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    62: areturn        
        //    Signature:
        //  (Ljava/util/Collection<*>;)Ljava/lang/String;
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
    
    static <T> Collection<T> a(final Iterable<T> iterable) {
        return (Collection<T>)iterable;
    }
    
    static boolean b(final Collection<?> collection, final Collection<?> collection2) {
        i.ak(collection);
        final Iterator<?> iterator = collection2.iterator();
        while (iterator.hasNext()) {
            if (!collection.contains(iterator.next())) {
                return false;
            }
        }
        return true;
    }
    
    static StringBuilder fh(final int n) {
        i.c(n >= 0, "size must be non-negative");
        return new StringBuilder((int)Math.min(8L * n, 1073741824L));
    }
}
