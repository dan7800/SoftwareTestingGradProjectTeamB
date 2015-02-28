package com.google.common.collect;

import java.lang.ref.*;

final class ak<K, V> extends SoftReference<V> implements ar<K, V>
{
    final af<K, V> cBT;
    
    ak(final ReferenceQueue<V> referenceQueue, final V v, final af<K, V> cbt) {
        super(v, referenceQueue);
        this.cBT = cbt;
    }
    
    @Override
    public final af<K, V> ZR() {
        return this.cBT;
    }
    
    @Override
    public final void ZS() {
        this.clear();
    }
    
    @Override
    public final ar<K, V> a(final ReferenceQueue<V> referenceQueue, final af<K, V> af) {
        return new ak((ReferenceQueue<Object>)referenceQueue, this.get(), (af<Object, Object>)af);
    }
}
