package com.google.common.collect;

import java.util.*;

public abstract class o<E> extends s implements Collection<E>
{
    protected final boolean H(final Collection<?> collection) {
        return I.a(this.iterator(), collection);
    }
    
    protected final boolean I(final Collection<?> collection) {
        return I.b(this.iterator(), collection);
    }
    
    protected abstract Collection<E> YU();
    
    protected final Object[] Zd() {
        return this.toArray(new Object[this.size()]);
    }
    
    @Override
    public boolean add(final E e) {
        return this.YU().add(e);
    }
    
    @Override
    public boolean addAll(final Collection<? extends E> collection) {
        return this.YU().addAll(collection);
    }
    
    @Override
    public void clear() {
        this.YU().clear();
    }
    
    @Override
    public boolean contains(final Object o) {
        return this.YU().contains(o);
    }
    
    @Override
    public boolean containsAll(final Collection<?> collection) {
        return this.YU().containsAll(collection);
    }
    
    @Override
    public boolean isEmpty() {
        return this.YU().isEmpty();
    }
    
    @Override
    public Iterator<E> iterator() {
        return this.YU().iterator();
    }
    
    @Override
    public boolean remove(final Object o) {
        return this.YU().remove(o);
    }
    
    @Override
    public boolean removeAll(final Collection<?> collection) {
        return this.YU().removeAll(collection);
    }
    
    @Override
    public boolean retainAll(final Collection<?> collection) {
        return this.YU().retainAll(collection);
    }
    
    @Override
    public int size() {
        return this.YU().size();
    }
    
    @Override
    public Object[] toArray() {
        return this.YU().toArray();
    }
    
    @Override
    public <T> T[] toArray(final T[] array) {
        return this.YU().toArray(array);
    }
}
