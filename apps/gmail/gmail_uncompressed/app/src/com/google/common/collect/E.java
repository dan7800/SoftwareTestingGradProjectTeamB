package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;
import java.io.*;

public final class E<E> extends z<E>
{
    private final Comparator<? super E> comparator;
    
    public E(final Comparator<? super E> comparator) {
        this.comparator = i.ak(comparator);
    }
    
    public final ImmutableSortedSet<E> ZB() {
        return (ImmutableSortedSet<E>)ImmutableSortedSet.a(this.comparator, this.cAy.iterator());
    }
    
    public final E<E> aJ(final E e) {
        super.aH(e);
        return this;
    }
    
    public final E<E> l(final E... array) {
        super.k(array);
        return this;
    }
}
