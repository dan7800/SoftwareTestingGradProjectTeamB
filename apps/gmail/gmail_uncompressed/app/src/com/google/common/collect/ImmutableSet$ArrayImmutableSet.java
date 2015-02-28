package com.google.common.collect;

import java.util.*;

abstract class ImmutableSet$ArrayImmutableSet<E> extends ImmutableSet<E>
{
    final transient Object[] elements;
    
    ImmutableSet$ArrayImmutableSet(final Object[] elements) {
        this.elements = elements;
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<E> YX() {
        return I.m((E[])this.elements);
    }
    
    @Override
    final ImmutableList<E> Zq() {
        return new ImmutableAsList<E>(this.elements, this);
    }
    
    @Override
    public boolean containsAll(final Collection<?> collection) {
        if (collection != this) {
            if (!(collection instanceof ImmutableSet$ArrayImmutableSet)) {
                return super.containsAll(collection);
            }
            if (collection.size() > this.size()) {
                return false;
            }
            final Object[] elements = ((ImmutableSet$ArrayImmutableSet<?>)collection).elements;
            for (int length = elements.length, i = 0; i < length; ++i) {
                if (!this.contains(elements[i])) {
                    return false;
                }
            }
        }
        return true;
    }
    
    @Override
    public boolean isEmpty() {
        return false;
    }
    
    @Override
    public int size() {
        return this.elements.length;
    }
    
    @Override
    public Object[] toArray() {
        final Object[] array = new Object[this.size()];
        System.arraycopy(this.elements, 0, array, 0, this.size());
        return array;
    }
    
    @Override
    public <T> T[] toArray(T[] b) {
        final int size = this.size();
        if (b.length < size) {
            b = aA.b(b, size);
        }
        else if (b.length > size) {
            b[size] = null;
        }
        System.arraycopy(this.elements, 0, b, 0, size);
        return b;
    }
}
