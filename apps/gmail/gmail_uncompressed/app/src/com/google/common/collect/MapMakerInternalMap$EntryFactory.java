package com.google.common.collect;

enum MapMakerInternalMap$EntryFactory
{
    cBl("STRONG") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new al<K, V>(k, n, af);
        }
    }, 
    cBm("STRONG_EXPIRABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new an<K, V>(k, n, af);
        }
    }, 
    cBn("STRONG_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new am<K, V>(k, n, af);
        }
    }, 
    cBo("STRONG_EXPIRABLE_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new ao<K, V>(k, n, af);
        }
    }, 
    cBp("SOFT") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new ag<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBq("SOFT_EXPIRABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new ai<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBr("SOFT_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new ah<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBs("SOFT_EXPIRABLE_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new aj<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBt("WEAK") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new at<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBu("WEAK_EXPIRABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new av<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBv("WEAK_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new au<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    }, 
    cBw("WEAK_EXPIRABLE_EVICTABLE") {
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
            final af<K, V> a = super.a(mapMakerInternalMap$Segment, af, af2);
            MapMakerInternalMap$EntryFactory.c(af, a);
            MapMakerInternalMap$EntryFactory.d(af, a);
            return a;
        }
        
        @Override
        final <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final K k, final int n, final af<K, V> af) {
            return new aw<K, V>(mapMakerInternalMap$Segment.keyReferenceQueue, k, n, af);
        }
    };
    
    static final MapMakerInternalMap$EntryFactory[][] cBx;
    
    static {
        cBx = new MapMakerInternalMap$EntryFactory[][] { { MapMakerInternalMap$EntryFactory.cBl, MapMakerInternalMap$EntryFactory.cBm, MapMakerInternalMap$EntryFactory.cBn, MapMakerInternalMap$EntryFactory.cBo }, { MapMakerInternalMap$EntryFactory.cBp, MapMakerInternalMap$EntryFactory.cBq, MapMakerInternalMap$EntryFactory.cBr, MapMakerInternalMap$EntryFactory.cBs }, { MapMakerInternalMap$EntryFactory.cBt, MapMakerInternalMap$EntryFactory.cBu, MapMakerInternalMap$EntryFactory.cBv, MapMakerInternalMap$EntryFactory.cBw } };
    }
    
    static MapMakerInternalMap$EntryFactory a(final MapMakerInternalMap$Strength mapMakerInternalMap$Strength, final boolean b, final boolean b2) {
        boolean b3;
        if (b) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        int n = 0;
        if (b2) {
            n = 2;
        }
        return MapMakerInternalMap$EntryFactory.cBx[mapMakerInternalMap$Strength.ordinal()][n | (b3 ? 1 : 0)];
    }
    
    static <K, V> void c(final af<K, V> af, final af<K, V> af2) {
        af2.bf(af.Rs());
        MapMakerInternalMap.a(af.ZX(), af2);
        MapMakerInternalMap.a(af2, af.ZW());
        MapMakerInternalMap.d(af);
    }
    
    static <K, V> void d(final af<K, V> af, final af<K, V> af2) {
        MapMakerInternalMap.b(af.ZZ(), af2);
        MapMakerInternalMap.b(af2, af.ZY());
        MapMakerInternalMap.e(af);
    }
    
     <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> mapMakerInternalMap$Segment, final af<K, V> af, final af<K, V> af2) {
        return this.a(mapMakerInternalMap$Segment, af.getKey(), af.ZV(), af2);
    }
    
    abstract <K, V> af<K, V> a(final MapMakerInternalMap$Segment<K, V> p0, final K p1, final int p2, final af<K, V> p3);
}
