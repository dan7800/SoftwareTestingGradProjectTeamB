package com.google.common.collect;

import java.util.*;

class ImmutableSortedMap$EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>>
{
    final transient ImmutableSortedMap<K, V> map;
    
    ImmutableSortedMap$EntrySet(final ImmutableSortedMap<K, V> map) {
        this.map = map;
    }
    
    @Override
    final boolean YW() {
        return this.map.YW();
    }
    
    @Override
    public final aJ<Map.Entry<K, V>> YX() {
        return this.map.cAF.YX();
    }
    
    @Override
    public boolean contains(final Object o) {
        final boolean b = o instanceof Map.Entry;
        boolean b2 = false;
        if (b) {
            final Map.Entry entry = (Map.Entry)o;
            final V value = this.map.get(entry.getKey());
            b2 = false;
            if (value != null) {
                final boolean equals = value.equals(entry.getValue());
                b2 = false;
                if (equals) {
                    b2 = true;
                }
            }
        }
        return b2;
    }
    
    @Override
    public int size() {
        return this.map.size();
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableSortedMap$EntrySetSerializedForm((ImmutableSortedMap<Object, Object>)this.map);
    }
}
