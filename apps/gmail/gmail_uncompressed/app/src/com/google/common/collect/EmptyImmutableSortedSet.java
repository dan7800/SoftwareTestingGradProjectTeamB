package com.google.common.collect;

import java.util.*;

class EmptyImmutableSortedSet<E> extends ImmutableSortedSet<E>
{
    private static final Object[] cAq;
    
    static {
        cAq = new Object[0];
    }
    
    EmptyImmutableSortedSet(final Comparator<? super E> comparator) {
        super(comparator);
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<E> YX() {
        return I.ZC();
    }
    
    @Override
    final ImmutableSortedSet<E> a(final E e, final boolean b, final E e2, final boolean b2) {
        return this;
    }
    
    @Override
    public boolean contains(final Object o) {
        return false;
    }
    
    @Override
    public boolean containsAll(final Collection<?> collection) {
        return collection.isEmpty();
    }
    
    @Override
    public boolean equals(final Object o) {
        return o instanceof Set && ((Set)o).isEmpty();
    }
    
    @Override
    public E first() {
        throw new NoSuchElementException();
    }
    
    @Override
    public int hashCode() {
        return 0;
    }
    
    @Override
    final int indexOf(final Object o) {
        return -1;
    }
    
    @Override
    public boolean isEmpty() {
        return true;
    }
    
    @Override
    public E last() {
        throw new NoSuchElementException();
    }
    
    @Override
    final ImmutableSortedSet<E> m(final E e, final boolean b) {
        return this;
    }
    
    @Override
    final ImmutableSortedSet<E> n(final E e, final boolean b) {
        return this;
    }
    
    @Override
    public int size() {
        return 0;
    }
    
    @Override
    public Object[] toArray() {
        return EmptyImmutableSortedSet.cAq;
    }
    
    @Override
    public <T> T[] toArray(final T[] array) {
        if (array.length > 0) {
            array[0] = null;
        }
        return array;
    }
    
    @Override
    public String toString() {
        return "[]";
    }
}
