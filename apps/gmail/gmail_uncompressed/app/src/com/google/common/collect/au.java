package com.google.common.collect;

import java.lang.ref.*;

final class au<K, V> extends at<K, V> implements af<K, V>
{
    af<K, V> cBB;
    af<K, V> cBC;
    
    au(final ReferenceQueue<K> referenceQueue, final K k, final int n, final af<K, V> af) {
        super(referenceQueue, k, n, af);
        this.cBB = MapMakerInternalMap.ZO();
        this.cBC = MapMakerInternalMap.ZO();
    }
    
    @Override
    public final af<K, V> ZY() {
        return this.cBB;
    }
    
    @Override
    public final af<K, V> ZZ() {
        return this.cBC;
    }
    
    @Override
    public final void h(final af<K, V> cbb) {
        this.cBB = cbb;
    }
    
    @Override
    public final void i(final af<K, V> cbc) {
        this.cBC = cbc;
    }
}
