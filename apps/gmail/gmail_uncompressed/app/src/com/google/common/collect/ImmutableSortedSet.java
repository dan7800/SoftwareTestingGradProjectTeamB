package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;
import java.io.*;

public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements aG<E>, SortedSet<E>
{
    private static final Comparator<Comparable> cAD;
    private static final ImmutableSortedSet<Comparable> cAL;
    final transient Comparator<? super E> comparator;
    
    static {
        cAD = Ordering.aaq();
        cAL = new EmptyImmutableSortedSet<Comparable>(ImmutableSortedSet.cAD);
    }
    
    ImmutableSortedSet(final Comparator<? super E> comparator) {
        this.comparator = comparator;
    }
    
    static <E> ImmutableSortedSet<E> a(final Comparator<? super E> comparator) {
        if (ImmutableSortedSet.cAD.equals(comparator)) {
            return (ImmutableSortedSet<E>)ImmutableSortedSet.cAL;
        }
        return new EmptyImmutableSortedSet<E>(comparator);
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }
    
    @Override
    public abstract aJ<E> YX();
    
    abstract ImmutableSortedSet<E> a(final E p0, final boolean p1, final E p2, final boolean p3);
    
    @Override
    public Comparator<? super E> comparator() {
        return this.comparator;
    }
    
    abstract int indexOf(final Object p0);
    
    abstract ImmutableSortedSet<E> m(final E p0, final boolean p1);
    
    abstract ImmutableSortedSet<E> n(final E p0, final boolean p1);
    
    final int v(final Object o, final Object o2) {
        return this.comparator.compare((Object)o, (Object)o2);
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableSortedSet$SerializedForm((Comparator<? super Object>)this.comparator, this.toArray());
    }
}
