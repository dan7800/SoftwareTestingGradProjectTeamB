package com.google.common.collect;

import java.io.*;
import java.util.concurrent.*;
import java.util.*;
import com.google.common.base.*;

class MapMaker$NullConcurrentMap<K, V> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V>
{
    private static final long serialVersionUID;
    private final MapMaker$RemovalCause removalCause;
    private final Q<K, V> removalListener;
    
    MapMaker$NullConcurrentMap(final MapMaker mapMaker) {
        this.removalListener = mapMaker.Zf();
        this.removalCause = mapMaker.cAX;
    }
    
    @Override
    public boolean containsKey(final Object o) {
        return false;
    }
    
    @Override
    public boolean containsValue(final Object o) {
        return false;
    }
    
    @Override
    public Set<Entry<K, V>> entrySet() {
        return Collections.emptySet();
    }
    
    @Override
    public V get(final Object o) {
        return null;
    }
    
    @Override
    public V put(final K k, final V v) {
        i.ak(k);
        i.ak(v);
        new MapMaker$RemovalNotification(k, v, this.removalCause);
        final Q<K, V> removalListener = this.removalListener;
        return null;
    }
    
    @Override
    public V putIfAbsent(final K k, final V v) {
        return this.put(k, v);
    }
    
    @Override
    public V remove(final Object o) {
        return null;
    }
    
    @Override
    public boolean remove(final Object o, final Object o2) {
        return false;
    }
    
    @Override
    public V replace(final K k, final V v) {
        i.ak(k);
        i.ak(v);
        return null;
    }
    
    @Override
    public boolean replace(final K k, final V v, final V v2) {
        i.ak(k);
        i.ak(v2);
        return false;
    }
}
