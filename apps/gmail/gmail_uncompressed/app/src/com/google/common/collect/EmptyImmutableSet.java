package com.google.common.collect;

import java.util.*;

final class EmptyImmutableSet extends ImmutableSet<Object>
{
    private static final Object[] cAq;
    static final EmptyImmutableSet cAs;
    private static final long serialVersionUID;
    
    static {
        cAs = new EmptyImmutableSet();
        cAq = new Object[0];
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<Object> YX() {
        return I.ZC();
    }
    
    @Override
    final boolean Zc() {
        return true;
    }
    
    @Override
    public final boolean contains(final Object o) {
        return false;
    }
    
    @Override
    public final boolean containsAll(final Collection<?> collection) {
        return collection.isEmpty();
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof Set && ((Set)o).isEmpty();
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
        return EmptyImmutableSet.cAs;
    }
    
    @Override
    public final int size() {
        return 0;
    }
    
    @Override
    public final Object[] toArray() {
        return EmptyImmutableSet.cAq;
    }
    
    @Override
    public final <T> T[] toArray(final T[] array) {
        if (array.length > 0) {
            array[0] = null;
        }
        return array;
    }
    
    @Override
    public final String toString() {
        return "[]";
    }
}
