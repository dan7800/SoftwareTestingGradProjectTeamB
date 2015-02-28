package com.google.common.collect;

import java.io.*;

class ImmutableSortedMap$ValuesSerializedForm<V> implements Serializable
{
    private static final long serialVersionUID;
    final ImmutableSortedMap<?, V> map;
    
    ImmutableSortedMap$ValuesSerializedForm(final ImmutableSortedMap<?, V> map) {
        this.map = map;
    }
    
    Object readResolve() {
        return this.map.Zb();
    }
}
