package com.google.common.collect;

import java.util.*;

final class SingletonImmutableMap<K, V> extends ImmutableMap<K, V>
{
    private transient ImmutableSet<Entry<K, V>> cAG;
    private transient ImmutableCollection<V> cAI;
    private transient Entry<K, V> cAc;
    private transient ImmutableSet<K> cCj;
    final transient K cCr;
    final transient V singleValue;
    
    SingletonImmutableMap(final K cCr, final V singleValue) {
        this.cCr = cCr;
        this.singleValue = singleValue;
    }
    
    SingletonImmutableMap(final Entry<K, V> cAc) {
        this.cAc = cAc;
        this.cCr = cAc.getKey();
        this.singleValue = cAc.getValue();
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final ImmutableSet<Entry<K, V>> YZ() {
        ImmutableSet<Entry<K, V>> cag = this.cAG;
        if (cag == null) {
            Entry<K, V> cAc = this.cAc;
            if (cAc == null) {
                cAc = Maps.w(this.cCr, this.singleValue);
                this.cAc = cAc;
            }
            cag = ImmutableSet.aG(cAc);
            this.cAG = cag;
        }
        return cag;
    }
    
    @Override
    public final ImmutableSet<K> Za() {
        ImmutableSet<K> cCj = this.cCj;
        if (cCj == null) {
            cCj = ImmutableSet.aG(this.cCr);
            this.cCj = cCj;
        }
        return cCj;
    }
    
    @Override
    public final ImmutableCollection<V> Zb() {
        ImmutableCollection<V> cai = this.cAI;
        if (cai == null) {
            cai = new SingletonImmutableMap$Values<V>(this.singleValue);
            this.cAI = cai;
        }
        return cai;
    }
    
    @Override
    public final boolean containsKey(final Object o) {
        return this.cCr.equals(o);
    }
    
    @Override
    public final boolean containsValue(final Object o) {
        return this.singleValue.equals(o);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Map)) {
            return false;
        }
        final Map map = (Map)o;
        if (map.size() != 1) {
            return false;
        }
        final Map.Entry<Object, V> entry = map.entrySet().iterator().next();
        return this.cCr.equals(entry.getKey()) && this.singleValue.equals(entry.getValue());
    }
    
    @Override
    public final V get(final Object o) {
        if (this.cCr.equals(o)) {
            return this.singleValue;
        }
        return null;
    }
    
    @Override
    public final int hashCode() {
        return this.cCr.hashCode() ^ this.singleValue.hashCode();
    }
    
    @Override
    public final boolean isEmpty() {
        return false;
    }
    
    @Override
    public final int size() {
        return 1;
    }
    
    @Override
    public final String toString() {
        return "{" + this.cCr.toString() + '=' + this.singleValue.toString() + '}';
    }
}
