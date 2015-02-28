package com.google.common.collect;

import java.util.*;

class ImmutableCollection$ArrayImmutableCollection<E> extends ImmutableCollection<E>
{
    private final E[] elements;
    
    ImmutableCollection$ArrayImmutableCollection(final E[] elements) {
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
        if (this.elements.length == 1) {
            return new SingletonImmutableList<E>((E)this.elements[0]);
        }
        return new RegularImmutableList<E>(this.elements);
    }
    
    @Override
    public boolean isEmpty() {
        return false;
    }
    
    @Override
    public int size() {
        return this.elements.length;
    }
}
