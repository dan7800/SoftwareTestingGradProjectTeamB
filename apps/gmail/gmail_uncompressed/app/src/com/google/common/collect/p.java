package com.google.common.collect;

import java.util.concurrent.*;
import java.util.*;

public abstract class p<K, V> extends q<K, V> implements ConcurrentMap<K, V>
{
    protected abstract ConcurrentMap<K, V> Ze();
    
    @Override
    public V putIfAbsent(final K k, final V v) {
        return this.Ze().putIfAbsent(k, v);
    }
    
    @Override
    public boolean remove(final Object o, final Object o2) {
        return this.Ze().remove(o, o2);
    }
    
    @Override
    public V replace(final K k, final V v) {
        return this.Ze().replace(k, v);
    }
    
    @Override
    public boolean replace(final K k, final V v, final V v2) {
        return this.Ze().replace(k, v, v2);
    }
}
