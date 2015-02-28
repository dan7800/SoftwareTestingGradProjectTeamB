package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class EmptyImmutableList extends ImmutableList<Object>
{
    static final EmptyImmutableList cAo;
    static final aK<Object> cAp;
    private static final Object[] cAq;
    private static final long serialVersionUID;
    
    static {
        cAo = new EmptyImmutableList();
        cAp = new n();
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
    public final aK<Object> YY() {
        return EmptyImmutableList.cAp;
    }
    
    @Override
    public final ImmutableList<Object> al(final int n, final int n2) {
        i.k(n, n2, 0);
        return this;
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
        return o instanceof List && ((List)o).isEmpty();
    }
    
    @Override
    public final aK<Object> fi(final int n) {
        i.ad(n, 0);
        return EmptyImmutableList.cAp;
    }
    
    @Override
    public final Object get(final int n) {
        i.ak(n, 0);
        throw new AssertionError((Object)"unreachable");
    }
    
    @Override
    public final int hashCode() {
        return 1;
    }
    
    @Override
    public final int indexOf(final Object o) {
        return -1;
    }
    
    @Override
    public final boolean isEmpty() {
        return true;
    }
    
    @Override
    public final int lastIndexOf(final Object o) {
        return -1;
    }
    
    final Object readResolve() {
        return EmptyImmutableList.cAo;
    }
    
    @Override
    public final int size() {
        return 0;
    }
    
    @Override
    public final Object[] toArray() {
        return EmptyImmutableList.cAq;
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
