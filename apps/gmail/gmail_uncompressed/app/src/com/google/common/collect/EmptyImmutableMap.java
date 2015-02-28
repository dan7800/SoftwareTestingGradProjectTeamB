package com.google.common.collect;

import java.util.*;

final class EmptyImmutableMap extends ImmutableMap<Object, Object>
{
    static final EmptyImmutableMap cAr;
    private static final long serialVersionUID;
    
    static {
        cAr = new EmptyImmutableMap();
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final ImmutableSet<Entry<Object, Object>> YZ() {
        return ImmutableSet.Zw();
    }
    
    @Override
    public final ImmutableSet<Object> Za() {
        return ImmutableSet.Zw();
    }
    
    @Override
    public final ImmutableCollection<Object> Zb() {
        return ImmutableCollection.cAw;
    }
    
    @Override
    public final boolean containsKey(final Object o) {
        return false;
    }
    
    @Override
    public final boolean containsValue(final Object o) {
        return false;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof Map && ((Map)o).isEmpty();
    }
    
    @Override
    public final Object get(final Object o) {
        return null;
    }
    
    @Override
    public final int hashCode() {
        return 0;
    }
    
    @Override
    public final boolean isEmpty() {
        return true;
    }
    
    final Object readResolve() {
        return EmptyImmutableMap.cAr;
    }
    
    @Override
    public final int size() {
        return 0;
    }
    
    @Override
    public final String toString() {
        return "{}";
    }
}
