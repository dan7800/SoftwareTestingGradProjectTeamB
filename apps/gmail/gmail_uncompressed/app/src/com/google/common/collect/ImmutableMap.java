package com.google.common.collect;

import java.io.*;
import com.google.common.base.*;
import java.util.*;

public abstract class ImmutableMap<K, V> implements Serializable, Map<K, V>
{
    public static <K, V> ImmutableMap<K, V> Zu() {
        return (ImmutableMap<K, V>)EmptyImmutableMap.cAr;
    }
    
    public static <K, V> y<K, V> Zv() {
        return new y<K, V>();
    }
    
    public static <K, V> ImmutableMap<K, V> a(final K k, final V v, final K i, final V v2) {
        return new RegularImmutableMap<K, V>((Entry<?, ?>[])new Entry[] { s(k, v), s(i, v2) });
    }
    
    public static <K, V> ImmutableMap<K, V> a(final K k, final V v, final K i, final V v2, final K j, final V v3, final K l, final V v4, final K m, final V v5) {
        return new RegularImmutableMap<K, V>((Entry<?, ?>[])new Entry[] { s(k, v), s(i, v2), s(j, v3), s(l, v4), s(m, v5) });
    }
    
    public static <K, V> ImmutableMap<K, V> q(final Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableMap && !(map instanceof ImmutableSortedMap)) {
            final ImmutableMap<K, V> immutableMap = (ImmutableMap<K, V>)map;
            if (!immutableMap.YW()) {
                return immutableMap;
            }
        }
        final Entry[] array = map.entrySet().toArray((Entry[])new Entry[0]);
        final int length = array.length;
        int i = 0;
        switch (length) {
            default: {
                while (i < array.length) {
                    array[i] = (Entry)s(array[i].getKey(), array[i].getValue());
                    ++i;
                }
                return new RegularImmutableMap<K, V>((Entry<?, ?>[])array);
            }
            case 0: {
                return (ImmutableMap<K, V>)EmptyImmutableMap.cAr;
            }
            case 1: {
                return new SingletonImmutableMap<K, V>((Entry<Object, Object>)s(array[0].getKey(), array[0].getValue()));
            }
        }
    }
    
    public static <K, V> ImmutableMap<K, V> r(final K k, final V v) {
        return new SingletonImmutableMap<K, V>(i.ak(k), i.ak(v));
    }
    
    static <K, V> Entry<K, V> s(final K k, final V v) {
        return Maps.w((K)i.i((K)k, "null key"), (V)i.i((V)v, "null value"));
    }
    
    abstract boolean YW();
    
    public abstract ImmutableSet<Entry<K, V>> YZ();
    
    public abstract ImmutableSet<K> Za();
    
    public abstract ImmutableCollection<V> Zb();
    
    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public boolean containsKey(final Object o) {
        return this.get(o) != null;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof Map && this.YZ().equals(((Map)o).entrySet()));
    }
    
    @Override
    public abstract V get(final Object p0);
    
    @Override
    public int hashCode() {
        return this.YZ().hashCode();
    }
    
    @Override
    public boolean isEmpty() {
        return this.size() == 0;
    }
    
    @Override
    public final V put(final K k, final V v) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final void putAll(final Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final V remove(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public String toString() {
        return Maps.t(this);
    }
    
    Object writeReplace() {
        return new ImmutableMap$SerializedForm(this);
    }
}
