package com.google.common.collect;

import java.io.*;
import java.util.*;

public abstract class ImmutableCollection<E> implements Serializable, Collection<E>
{
    static final ImmutableCollection<Object> cAw;
    private transient ImmutableList<E> cAx;
    
    static {
        cAw = new ImmutableCollection$EmptyImmutableCollection((byte)0);
    }
    
    abstract boolean YW();
    
    public abstract aJ<E> YX();
    
    public ImmutableList<E> Zp() {
        ImmutableList<E> cAx = this.cAx;
        if (cAx == null) {
            cAx = this.Zq();
            this.cAx = cAx;
        }
        return cAx;
    }
    
    ImmutableList<E> Zq() {
        switch (this.size()) {
            default: {
                return new ImmutableAsList<E>(this.toArray(), this);
            }
            case 0: {
                return ImmutableList.Zr();
            }
            case 1: {
                return ImmutableList.aE(this.YX().next());
            }
        }
    }
    
    @Override
    public final boolean add(final E e) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean addAll(final Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public boolean contains(final Object o) {
        return o != null && I.a(this.YX(), o);
    }
    
    @Override
    public boolean containsAll(final Collection<?> collection) {
        return l.b(this, collection);
    }
    
    @Override
    public boolean isEmpty() {
        return this.size() == 0;
    }
    
    @Override
    public final boolean remove(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean removeAll(final Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean retainAll(final Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public Object[] toArray() {
        return aA.N(this);
    }
    
    @Override
    public <T> T[] toArray(final T[] array) {
        return aA.a(this, array);
    }
    
    @Override
    public String toString() {
        return l.G(this);
    }
    
    Object writeReplace() {
        return new ImmutableCollection$SerializedForm(this.toArray());
    }
}
