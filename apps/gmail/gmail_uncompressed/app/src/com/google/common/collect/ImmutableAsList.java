package com.google.common.collect;

import java.io.*;

final class ImmutableAsList<E> extends RegularImmutableList<E>
{
    private final transient ImmutableCollection<E> collection;
    
    ImmutableAsList(final Object[] array, final ImmutableCollection<E> collection) {
        super(array, 0, array.length);
        this.collection = collection;
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }
    
    @Override
    public final boolean contains(final Object o) {
        return this.collection.contains(o);
    }
    
    @Override
    final Object writeReplace() {
        return new ImmutableAsList$SerializedForm(this.collection);
    }
}
