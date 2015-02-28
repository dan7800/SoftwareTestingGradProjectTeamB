package com.google.common.collect;

import java.io.*;
import com.google.common.base.*;
import java.util.*;

public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess
{
    public static <E> ImmutableList<E> J(final Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            List<E> list = (List<E>)((ImmutableCollection<? extends E>)collection).Zp();
            if (((ImmutableCollection)list).YW()) {
                list = (List<E>)K((Collection<?>)list);
            }
            return (ImmutableList<E>)list;
        }
        return (ImmutableList<E>)K((Collection<?>)collection);
    }
    
    private static <E> ImmutableList<E> K(final Collection<? extends E> collection) {
        final Object[] array = collection.toArray();
        switch (array.length) {
            default: {
                return (ImmutableList<E>)g(array);
            }
            case 0: {
                return (ImmutableList<E>)EmptyImmutableList.cAo;
            }
            case 1: {
                return new SingletonImmutableList<E>(array[0]);
            }
        }
    }
    
    public static <E> ImmutableList<E> Zr() {
        return (ImmutableList<E>)EmptyImmutableList.cAo;
    }
    
    public static <E> x<E> Zs() {
        return new x<E>();
    }
    
    public static <E> ImmutableList<E> a(final E e, final E e2, final E e3) {
        return g(e, e2, e3);
    }
    
    public static <E> ImmutableList<E> aE(final E e) {
        return new SingletonImmutableList<E>(e);
    }
    
    public static <E> ImmutableList<E> f(final E[] array) {
        switch (array.length) {
            default: {
                return (ImmutableList<E>)g((Object[])array.clone());
            }
            case 0: {
                return (ImmutableList<E>)EmptyImmutableList.cAo;
            }
            case 1: {
                return new SingletonImmutableList<E>(array[0]);
            }
        }
    }
    
    private static <E> ImmutableList<E> g(final Object... array) {
        for (int i = 0; i < array.length; ++i) {
            if (array[i] == null) {
                throw new NullPointerException("at index " + i);
            }
        }
        return new RegularImmutableList<E>(array);
    }
    
    public static <E> ImmutableList<E> q(final E e, final E e2) {
        return g(e, e2);
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }
    
    @Override
    public aJ<E> YX() {
        return this.YY();
    }
    
    public aK<E> YY() {
        return this.fi(0);
    }
    
    @Override
    public final ImmutableList<E> Zp() {
        return this;
    }
    
    @Override
    public final void add(final int n, final E e) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean addAll(final int n, final Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }
    
    public abstract ImmutableList<E> al(final int p0, final int p1);
    
    @Override
    public boolean equals(final Object o) {
        if (o != i.ak(this)) {
            if (o instanceof List) {
                final List list = (List)o;
                if (super.size() == list.size() && I.a(super.iterator(), list.iterator())) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
    
    public abstract aK<E> fi(final int p0);
    
    @Override
    public int hashCode() {
        int n = 1;
        for (final Object next : this) {
            final int n2 = n * 31;
            int hashCode;
            if (next == null) {
                hashCode = 0;
            }
            else {
                hashCode = next.hashCode();
            }
            n = hashCode + n2;
        }
        return n;
    }
    
    @Override
    public final E remove(final int n) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final E set(final int n, final E e) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableList$SerializedForm(this.toArray());
    }
}
