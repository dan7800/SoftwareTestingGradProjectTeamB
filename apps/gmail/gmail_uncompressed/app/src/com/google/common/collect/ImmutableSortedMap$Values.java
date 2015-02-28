package com.google.common.collect;

import java.util.*;

class ImmutableSortedMap$Values<V> extends ImmutableCollection<V>
{
    private final ImmutableSortedMap<?, V> map;
    
    ImmutableSortedMap$Values(final ImmutableSortedMap<?, V> map) {
        this.map = map;
    }
    
    @Override
    final boolean YW() {
        return true;
    }
    
    @Override
    public final aJ<V> YX() {
        return this.map.ZA();
    }
    
    @Override
    public boolean contains(final Object o) {
        return this.map.containsValue(o);
    }
    
    @Override
    public int size() {
        return this.map.size();
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableSortedMap$ValuesSerializedForm((ImmutableSortedMap<?, Object>)this.map);
    }
}
