package com.google.common.collect;

import java.util.*;

public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements k<K, V>
{
    private static final ImmutableBiMap<Object, Object> cAv;
    
    static {
        cAv = new ImmutableBiMap$EmptyBiMap();
    }
    
    public static <K, V> ImmutableBiMap<K, V> Zh() {
        return (ImmutableBiMap<K, V>)ImmutableBiMap.cAv;
    }
    
    public static <K, V> v<K, V> Zi() {
        return new v<K, V>();
    }
    
    @Override
    public final ImmutableSet<Entry<K, V>> YZ() {
        return this.Zj().YZ();
    }
    
    @Override
    public final ImmutableSet<K> Za() {
        return this.Zj().Za();
    }
    
    abstract ImmutableMap<K, V> Zj();
    
    public abstract ImmutableBiMap<V, K> Zk();
    
    public final ImmutableSet<V> Zl() {
        return (ImmutableSet<V>)this.Zk().Zj().Za();
    }
    
    @Override
    public boolean containsKey(final Object o) {
        return this.Zj().containsKey(o);
    }
    
    @Override
    public boolean containsValue(final Object o) {
        return this.Zk().containsKey(o);
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || this.Zj().equals(o);
    }
    
    @Override
    public V get(final Object o) {
        return this.Zj().get(o);
    }
    
    @Override
    public int hashCode() {
        return this.Zj().hashCode();
    }
    
    @Override
    public boolean isEmpty() {
        return this.Zj().isEmpty();
    }
    
    @Override
    public int size() {
        return this.Zj().size();
    }
    
    @Override
    public String toString() {
        return this.Zj().toString();
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableBiMap$SerializedForm(this);
    }
}
