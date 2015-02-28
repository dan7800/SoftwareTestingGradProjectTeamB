package com.google.common.collect;

import java.lang.ref.*;

final class ai<K, V> extends ag<K, V> implements af<K, V>
{
    af<K, V> cBE;
    af<K, V> cBF;
    volatile long time;
    
    ai(final ReferenceQueue<K> referenceQueue, final K k, final int n, final af<K, V> af) {
        super(referenceQueue, k, n, af);
        this.time = Long.MAX_VALUE;
        this.cBE = MapMakerInternalMap.ZO();
        this.cBF = MapMakerInternalMap.ZO();
    }
    
    @Override
    public final long Rs() {
        return this.time;
    }
    
    @Override
    public final af<K, V> ZW() {
        return this.cBE;
    }
    
    @Override
    public final af<K, V> ZX() {
        return this.cBF;
    }
    
    @Override
    public final void bf(final long time) {
        this.time = time;
    }
    
    @Override
    public final void f(final af<K, V> cbe) {
        this.cBE = cbe;
    }
    
    @Override
    public final void g(final af<K, V> cbf) {
        this.cBF = cbf;
    }
}
