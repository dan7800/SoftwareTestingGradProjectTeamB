package com.google.common.collect;

import java.util.*;

public class y<K, V>
{
    final ArrayList<Map.Entry<K, V>> cAz;
    
    public y() {
        this.cAz = new ArrayList<Map.Entry<K, V>>();
    }
    
    public ImmutableMap<K, V> Zo() {
        final ArrayList<Map.Entry<K, V>> cAz = this.cAz;
        switch (cAz.size()) {
            default: {
                return new RegularImmutableMap<K, V>((Map.Entry<?, ?>[])cAz.toArray((Map.Entry<?, ?>[])new Map.Entry[cAz.size()]));
            }
            case 0: {
                return ImmutableMap.Zu();
            }
            case 1: {
                return new SingletonImmutableMap<K, V>(I.b((Iterator<Map.Entry>)cAz.iterator()));
            }
        }
    }
    
    public y<K, V> p(final K k, final V v) {
        this.cAz.add(ImmutableMap.s(k, v));
        return this;
    }
    
    public y<K, V> p(final Map<? extends K, ? extends V> map) {
        this.cAz.ensureCapacity(this.cAz.size() + map.size());
        for (final Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            this.p(entry.getKey(), (V)entry.getValue());
        }
        return this;
    }
}
