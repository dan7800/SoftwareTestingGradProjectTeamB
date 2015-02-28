package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class ImmutableSortedAsList<E> extends ImmutableList<E> implements aG<E>
{
    private final transient ImmutableSortedSet<E> cAB;
    private final transient ImmutableList<E> cAC;
    
    ImmutableSortedAsList(final ImmutableSortedSet<E> cab, final ImmutableList<E> cac) {
        this.cAB = cab;
        this.cAC = cac;
    }
    
    @Override
    final boolean YW() {
        return this.cAC.YW();
    }
    
    @Override
    public final aJ<E> YX() {
        return this.cAC.YX();
    }
    
    @Override
    public final aK<E> YY() {
        return this.cAC.YY();
    }
    
    @Override
    public final ImmutableList<E> al(final int n, final int n2) {
        i.k(n, n2, this.size());
        if (n == n2) {
            return (ImmutableList<E>)EmptyImmutableList.cAo;
        }
        return new RegularImmutableSortedSet<E>(this.cAC.al(n, n2), this.cAB.comparator()).Zp();
    }
    
    @Override
    public final Comparator<? super E> comparator() {
        return this.cAB.comparator();
    }
    
    @Override
    public final boolean contains(final Object o) {
        return this.cAB.indexOf(o) >= 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return this.cAC.equals(o);
    }
    
    @Override
    public final aK<E> fi(final int n) {
        return this.cAC.fi(n);
    }
    
    @Override
    public final E get(final int n) {
        return this.cAC.get(n);
    }
    
    @Override
    public final int hashCode() {
        return this.cAC.hashCode();
    }
    
    @Override
    public final int indexOf(final Object o) {
        return this.cAB.indexOf(o);
    }
    
    @Override
    public final int lastIndexOf(final Object o) {
        return this.cAB.indexOf(o);
    }
    
    @Override
    public final int size() {
        return this.cAC.size();
    }
    
    @Override
    final Object writeReplace() {
        return new ImmutableAsList$SerializedForm(this.cAB);
    }
}
