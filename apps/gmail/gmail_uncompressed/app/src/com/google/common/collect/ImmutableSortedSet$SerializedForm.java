package com.google.common.collect;

import java.io.*;
import java.util.*;

class ImmutableSortedSet$SerializedForm<E> implements Serializable
{
    private static final long serialVersionUID;
    final Comparator<? super E> comparator;
    final Object[] elements;
    
    public ImmutableSortedSet$SerializedForm(final Comparator<? super E> comparator, final Object[] elements) {
        this.comparator = comparator;
        this.elements = elements;
    }
    
    Object readResolve() {
        return new com.google.common.collect.E<Object>((Comparator<? super Object>)this.comparator).l((Object[])this.elements).ZB();
    }
}
