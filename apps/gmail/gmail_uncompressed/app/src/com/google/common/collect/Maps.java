package com.google.common.collect;

import java.util.*;
import java.util.concurrent.*;
import com.google.common.base.*;

public final class Maps
{
    static final d cBZ;
    
    static {
        cBZ = l.cAm.hN("=");
    }
    
    static <K, V> boolean a(final Collection<Map.Entry<K, V>> p0, final Object p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: instanceof      Ljava/util/Map$Entry;
        //     4: ifne            9
        //     7: iconst_0       
        //     8: ireturn        
        //     9: aload_1        
        //    10: checkcast       Ljava/util/Map$Entry;
        //    13: astore_2       
        //    14: aload_2        
        //    15: invokestatic    com/google/common/base/i.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    18: pop            
        //    19: aload_0        
        //    20: new             new            !!! ERROR
        //    23: dup            
        //    24: aload_2        
        //    25: invokespecial   invokespecial  !!! ERROR
        //    28: invokeinterface java/util/Collection.contains:(Ljava/lang/Object;)Z
        //    33: ireturn        
        //    Signature:
        //  <K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;Ljava/lang/Object;)Z
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
    
    public static <K, V> HashMap<K, V> aan() {
        return new HashMap<K, V>();
    }
    
    public static <K, V> LinkedHashMap<K, V> aao() {
        return new LinkedHashMap<K, V>();
    }
    
    public static <K, V> ConcurrentMap<K, V> aap() {
        return new MapMaker().ZH();
    }
    
    public static <K, V> HashMap<K, V> fq(final int n) {
        return new HashMap<K, V>(fr(n));
    }
    
    static int fr(final int n) {
        if (n < 3) {
            i.cp(n >= 0);
            return n + 1;
        }
        if (n < 1073741824) {
            return n + n / 3;
        }
        return Integer.MAX_VALUE;
    }
    
    public static <K, V> HashMap<K, V> r(final Map<? extends K, ? extends V> map) {
        return new HashMap<K, V>(map);
    }
    
    public static <K, V> LinkedHashMap<K, V> s(final Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<K, V>(map);
    }
    
    static String t(final Map<?, ?> map) {
        final StringBuilder append = l.fh(map.size()).append('{');
        Maps.cBZ.a(append, map.entrySet().iterator());
        return append.append('}').toString();
    }
    
    public static <K, V> Map.Entry<K, V> w(final K k, final V v) {
        return new ImmutableEntry<K, V>(k, v);
    }
}
