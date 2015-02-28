package com.google.common.collect;

import com.google.common.base.*;

enum MapMakerInternalMap$Strength
{
    cBU("STRONG") {
        @Override
        final <K, V> ar<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final V v) {
            return new ap<K, V>(v);
        }
        
        @Override
        final Equivalence<Object> aam() {
            return Equivalences.YJ();
        }
    }, 
    cBV("SOFT") {
        @Override
        final <K, V> ar<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final V v) {
            return new ak<K, V>(mapMakerInternalMap$Segment.valueReferenceQueue, v, af);
        }
        
        @Override
        final Equivalence<Object> aam() {
            return Equivalences.YK();
        }
    }, 
    cBW("WEAK") {
        @Override
        final <K, V> ar<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final V v) {
            return new ax<K, V>(mapMakerInternalMap$Segment.valueReferenceQueue, v, af);
        }
        
        @Override
        final Equivalence<Object> aam() {
            return Equivalences.YK();
        }
    };
    
    abstract <K, V> ar<K, V> a(final MapMakerInternalMap$Segment<K, V> p0, final af<K, V> p1, final V p2);
    
    abstract Equivalence<Object> aam();
}
