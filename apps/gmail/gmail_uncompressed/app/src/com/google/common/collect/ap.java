package com.google.common.collect;

import java.lang.ref.*;

final class ap<K, V> implements ar<K, V>
{
    final V cBY;
    
    ap(final V cby) {
        this.cBY = cby;
    }
    
    @Override
    public final af<K, V> ZR() {
        return null;
    }
    
    @Override
    public final void ZS() {
    }
    
    @Override
    public final ar<K, V> a(final ReferenceQueue<V> referenceQueue, final af<K, V> af) {
        return this;
    }
    
    @Override
    public final V get() {
        return this.cBY;
    }
}
