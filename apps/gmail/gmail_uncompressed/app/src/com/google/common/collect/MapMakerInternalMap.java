package com.google.common.collect;

import java.io.*;
import java.util.concurrent.*;
import java.util.logging.*;
import java.util.concurrent.atomic.*;
import com.google.common.base.*;
import java.util.*;
import com.google.common.primitives.*;

class MapMakerInternalMap<K, V> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V>
{
    static final ar<Object, Object> cBi;
    static final Queue<?> cBj;
    private static final Logger cuU;
    private static final long serialVersionUID = 5L;
    final transient int cBe;
    final transient int cBf;
    final transient MapMakerInternalMap$Segment<K, V>[] cBg;
    final transient MapMakerInternalMap$EntryFactory cBh;
    final int concurrencyLevel;
    Set<Entry<K, V>> entrySet;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    Set<K> keySet;
    final MapMakerInternalMap$Strength keyStrength;
    final int maximumSize;
    final Q<K, V> removalListener;
    final Queue<MapMaker$RemovalNotification<K, V>> removalNotificationQueue;
    final l ticker;
    final Equivalence<Object> valueEquivalence;
    final MapMakerInternalMap$Strength valueStrength;
    Collection<V> values;
    
    static {
        cuU = Logger.getLogger(MapMakerInternalMap.class.getName());
        cBi = new R();
        cBj = new S();
    }
    
    MapMakerInternalMap(final MapMaker mapMaker) {
        long expireAfterWriteNanos = 0L;
        int i = 1;
        this.concurrencyLevel = Math.min(mapMaker.ZE(), 65536);
        this.keyStrength = mapMaker.ZF();
        this.valueStrength = mapMaker.ZG();
        this.keyEquivalence = e.n(mapMaker.keyEquivalence, mapMaker.ZF().aam());
        this.valueEquivalence = e.n(mapMaker.valueEquivalence, mapMaker.ZG().aam());
        this.maximumSize = mapMaker.maximumSize;
        long expireAfterAccessNanos;
        if (mapMaker.expireAfterAccessNanos == -1L) {
            expireAfterAccessNanos = expireAfterWriteNanos;
        }
        else {
            expireAfterAccessNanos = mapMaker.expireAfterAccessNanos;
        }
        this.expireAfterAccessNanos = expireAfterAccessNanos;
        if (mapMaker.expireAfterWriteNanos != -1L) {
            expireAfterWriteNanos = mapMaker.expireAfterWriteNanos;
        }
        this.expireAfterWriteNanos = expireAfterWriteNanos;
        this.cBh = MapMakerInternalMap$EntryFactory.a(this.keyStrength, this.ZJ(), this.ZI());
        this.ticker = e.n(mapMaker.ticker, l.YO());
        this.removalListener = mapMaker.Zf();
        Queue<?> cBj;
        if (this.removalListener == GenericMapMaker$NullListener.cAt) {
            cBj = MapMakerInternalMap.cBj;
        }
        else {
            cBj = new ConcurrentLinkedQueue<Object>();
        }
        this.removalNotificationQueue = (Queue<MapMaker$RemovalNotification<K, V>>)cBj;
        int n = Math.min(mapMaker.ZD(), 1073741824);
        if (this.ZI()) {
            n = Math.min(n, this.maximumSize);
        }
        int n2 = i;
        int n3 = 0;
        while (n2 < this.concurrencyLevel && (!this.ZI() || n2 * 2 <= this.maximumSize)) {
            ++n3;
            n2 <<= 1;
        }
        this.cBf = 32 - n3;
        this.cBe = n2 - 1;
        this.cBg = (MapMakerInternalMap$Segment<K, V>[])new MapMakerInternalMap$Segment[n2];
        final int n4 = n / n2;
        int n5;
        if (n4 * n2 < n) {
            n5 = n4 + 1;
        }
        else {
            n5 = n4;
        }
        while (i < n5) {
            i <<= 1;
        }
        final boolean zi = this.ZI();
        int j = 0;
        if (zi) {
            int n6 = 1 + this.maximumSize / n2;
            final int n7 = this.maximumSize % n2;
            while (j < this.cBg.length) {
                if (j == n7) {
                    --n6;
                }
                this.cBg[j] = this.an(i, n6);
                ++j;
            }
        }
        else {
            while (j < this.cBg.length) {
                this.cBg[j] = this.an(i, -1);
                ++j;
            }
        }
    }
    
    static <K, V> ar<K, V> ZN() {
        return (ar<K, V>)MapMakerInternalMap.cBi;
    }
    
    static <K, V> af<K, V> ZO() {
        return (af<K, V>)MapMakerInternalMap$NullEntry.cBO;
    }
    
    static <E> Queue<E> ZP() {
        return (Queue<E>)MapMakerInternalMap.cBj;
    }
    
    static <K, V> void a(final af<K, V> af, final af<K, V> af2) {
        af.f(af2);
        af2.g(af);
    }
    
    static boolean a(final af<K, V> af, final long n) {
        return n - af.Rs() > 0L;
    }
    
    private MapMakerInternalMap$Segment<K, V> an(final int n, final int n2) {
        return new MapMakerInternalMap$Segment<K, V>(this, n, n2);
    }
    
    private int av(final Object o) {
        final int av = this.keyEquivalence.av(o);
        final int n = av + (0xFFFFCD7D ^ av << 15);
        final int n2 = n ^ n >>> 10;
        final int n3 = n2 + (n2 << 3);
        final int n4 = n3 ^ n3 >>> 6;
        final int n5 = n4 + ((n4 << 2) + (n4 << 14));
        return n5 ^ n5 >>> 16;
    }
    
    static <K, V> void b(final af<K, V> af, final af<K, V> af2) {
        af.h(af2);
        af2.i(af);
    }
    
    static <K, V> void d(final af<K, V> af) {
        final MapMakerInternalMap$NullEntry cbo = MapMakerInternalMap$NullEntry.cBO;
        af.f((af<K, V>)cbo);
        af.g((af<K, V>)cbo);
    }
    
    static <K, V> void e(final af<K, V> af) {
        final MapMakerInternalMap$NullEntry cbo = MapMakerInternalMap$NullEntry.cBO;
        af.h((af<K, V>)cbo);
        af.i((af<K, V>)cbo);
    }
    
    private MapMakerInternalMap$Segment<K, V> fo(final int n) {
        return this.cBg[n >>> this.cBf & this.cBe];
    }
    
    final boolean ZI() {
        return this.maximumSize != -1;
    }
    
    final boolean ZJ() {
        int n;
        if (this.expireAfterWriteNanos > 0L) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            final boolean zk = this.ZK();
            final boolean b = false;
            if (!zk) {
                return b;
            }
        }
        return true;
    }
    
    final boolean ZK() {
        return this.expireAfterAccessNanos > 0L;
    }
    
    final boolean ZL() {
        return this.keyStrength != MapMakerInternalMap$Strength.cBU;
    }
    
    final boolean ZM() {
        return this.valueStrength != MapMakerInternalMap$Strength.cBU;
    }
    
    final void ZQ() {
        while (this.removalNotificationQueue.poll() != null) {
            try {
                final Q<K, V> removalListener = this.removalListener;
            }
            catch (Exception ex) {
                MapMakerInternalMap.cuU.log(Level.WARNING, "Exception thrown by removal listener", ex);
            }
        }
    }
    
    final void a(final af<K, V> af) {
        final int zv = af.ZV();
        this.fo(zv).a(af, zv);
    }
    
    final void a(final ar<K, V> ar) {
        final af<K, V> zr = ar.ZR();
        final int zv = zr.ZV();
        this.fo(zv).a(zr.getKey(), zv, ar);
    }
    
    final V b(final af<K, V> af) {
        if (af.getKey() != null) {
            final V value = af.ZT().get();
            if (value != null && (!this.ZJ() || !this.c(af))) {
                return value;
            }
        }
        return null;
    }
    
    final boolean c(final af<K, V> af) {
        return a(af, this.ticker.YN());
    }
    
    @Override
    public void clear() {
        final MapMakerInternalMap$Segment<K, V>[] cBg = this.cBg;
        for (int length = cBg.length, i = 0; i < length; ++i) {
            cBg[i].clear();
        }
    }
    
    @Override
    public boolean containsKey(final Object o) {
        if (o == null) {
            return false;
        }
        final int av = this.av(o);
        return this.fo(av).g(o, av);
    }
    
    @Override
    public boolean containsValue(final Object o) {
        if (o == null) {
            return false;
        }
        final MapMakerInternalMap$Segment<K, V>[] cBg = this.cBg;
        int i = 0;
        long n = -1L;
        while (i < 3) {
            final int length = cBg.length;
            long n2 = 0L;
            for (final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment : cBg) {
                final int count = mapMakerInternalMap$Segment.count;
                final AtomicReferenceArray<af<K, V>> table = mapMakerInternalMap$Segment.table;
                for (int k = 0; k < table.length(); ++k) {
                    for (af<K, V> zu = table.get(k); zu != null; zu = zu.ZU()) {
                        final V b = mapMakerInternalMap$Segment.b(zu);
                        if (b != null && this.valueEquivalence.l(o, b)) {
                            return true;
                        }
                    }
                }
                n2 += mapMakerInternalMap$Segment.modCount;
            }
            if (n2 == n) {
                break;
            }
            ++i;
            n = n2;
        }
        return false;
    }
    
    @Override
    public Set<Entry<K, V>> entrySet() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/common/collect/MapMakerInternalMap.entrySet:Ljava/util/Set;
        //     4: astore_1       
        //     5: aload_1        
        //     6: ifnull          11
        //     9: aload_1        
        //    10: areturn        
        //    11: new             new            !!! ERROR
        //    14: dup            
        //    15: aload_0        
        //    16: invokespecial   invokespecial  !!! ERROR
        //    19: astore_2       
        //    20: aload_0        
        //    21: aload_2        
        //    22: putfield        com/google/common/collect/MapMakerInternalMap.entrySet:Ljava/util/Set;
        //    25: aload_2        
        //    26: areturn        
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
    
    @Override
    public V get(final Object o) {
        if (o == null) {
            return null;
        }
        final int av = this.av(o);
        return this.fo(av).get(o, av);
    }
    
    @Override
    public boolean isEmpty() {
        final MapMakerInternalMap$Segment<K, V>[] cBg = this.cBg;
        int i = 0;
        long n = 0L;
        while (i < cBg.length) {
            if (cBg[i].count != 0) {
                return false;
            }
            n += cBg[i].modCount;
            ++i;
        }
        if (n != 0L) {
            for (int j = 0; j < cBg.length; ++j) {
                if (cBg[j].count != 0) {
                    return false;
                }
                n -= cBg[j].modCount;
            }
            if (n != 0L) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public Set<K> keySet() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/common/collect/MapMakerInternalMap.keySet:Ljava/util/Set;
        //     4: astore_1       
        //     5: aload_1        
        //     6: ifnull          11
        //     9: aload_1        
        //    10: areturn        
        //    11: new             new            !!! ERROR
        //    14: dup            
        //    15: aload_0        
        //    16: invokespecial   invokespecial  !!! ERROR
        //    19: astore_2       
        //    20: aload_0        
        //    21: aload_2        
        //    22: putfield        com/google/common/collect/MapMakerInternalMap.keySet:Ljava/util/Set;
        //    25: aload_2        
        //    26: areturn        
        //    Signature:
        //  ()Ljava/util/Set<TK;>;
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
    public V put(final K k, final V v) {
        i.ak(k);
        i.ak(v);
        final int av = this.av(k);
        return this.fo(av).a(k, av, v, false);
    }
    
    @Override
    public void putAll(final Map<? extends K, ? extends V> map) {
        for (final Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            this.put(entry.getKey(), (V)entry.getValue());
        }
    }
    
    @Override
    public V putIfAbsent(final K k, final V v) {
        i.ak(k);
        i.ak(v);
        final int av = this.av(k);
        return this.fo(av).a(k, av, v, true);
    }
    
    @Override
    public V remove(final Object o) {
        if (o == null) {
            return null;
        }
        final int av = this.av(o);
        return this.fo(av).h(o, av);
    }
    
    @Override
    public boolean remove(final Object o, final Object o2) {
        if (o == null || o2 == null) {
            return false;
        }
        final int av = this.av(o);
        return this.fo(av).b(o, av, o2);
    }
    
    @Override
    public V replace(final K k, final V v) {
        i.ak(k);
        i.ak(v);
        final int av = this.av(k);
        return this.fo(av).a(k, av, v);
    }
    
    @Override
    public boolean replace(final K k, final V v, final V v2) {
        i.ak(k);
        i.ak(v2);
        if (v == null) {
            return false;
        }
        final int av = this.av(k);
        return this.fo(av).a(k, av, v, v2);
    }
    
    @Override
    public int size() {
        final MapMakerInternalMap$Segment<K, V>[] cBg = this.cBg;
        long n = 0L;
        for (int i = 0; i < cBg.length; ++i) {
            n += cBg[i].count;
        }
        return Ints.bi(n);
    }
    
    @Override
    public Collection<V> values() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/common/collect/MapMakerInternalMap.values:Ljava/util/Collection;
        //     4: astore_1       
        //     5: aload_1        
        //     6: ifnull          11
        //     9: aload_1        
        //    10: areturn        
        //    11: new             new            !!! ERROR
        //    14: dup            
        //    15: aload_0        
        //    16: invokespecial   invokespecial  !!! ERROR
        //    19: astore_2       
        //    20: aload_0        
        //    21: aload_2        
        //    22: putfield        com/google/common/collect/MapMakerInternalMap.values:Ljava/util/Collection;
        //    25: aload_2        
        //    26: areturn        
        //    Signature:
        //  ()Ljava/util/Collection<TV;>;
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
    
    Object writeReplace() {
        return new MapMakerInternalMap$SerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, (Q<? super Object, ? super Object>)this.removalListener, (ConcurrentMap<Object, Object>)this);
    }
}
