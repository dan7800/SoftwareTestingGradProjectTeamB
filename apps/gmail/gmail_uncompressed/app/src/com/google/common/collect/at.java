package com.google.common.collect;

import java.lang.ref.*;

class at<K, V> extends WeakReference<K> implements af<K, V>
{
    final int cBQ;
    final af<K, V> cBR;
    volatile ar<K, V> cBS;
    
    at(final ReferenceQueue<K> referenceQueue, final K k, final int cbq, final af<K, V> cbr) {
        super(k, referenceQueue);
        this.cBS = MapMakerInternalMap.ZN();
        this.cBQ = cbq;
        this.cBR = cbr;
    }
    
    @Override
    public long Rs() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final ar<K, V> ZT() {
        return this.cBS;
    }
    
    @Override
    public final af<K, V> ZU() {
        return this.cBR;
    }
    
    @Override
    public final int ZV() {
        return this.cBQ;
    }
    
    @Override
    public af<K, V> ZW() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public af<K, V> ZX() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public af<K, V> ZY() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public af<K, V> ZZ() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final void b(final ar<K, V> cbs) {
        final ar<K, V> cbs2 = this.cBS;
        this.cBS = cbs;
        cbs2.ZS();
    }
    
    @Override
    public void bf(final long n) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public void f(final af<K, V> af) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public void g(final af<K, V> af) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final K getKey() {
        return this.get();
    }
    
    @Override
    public void h(final af<K, V> af) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public void i(final af<K, V> af) {
        throw new UnsupportedOperationException();
    }
}
