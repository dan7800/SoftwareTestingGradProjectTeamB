package com.google.common.collect;

import java.io.*;

class ImmutableSortedMap$EntrySetSerializedForm<K, V> implements Serializable
{
    private static final long serialVersionUID;
    final ImmutableSortedMap<K, V> map;
    
    ImmutableSortedMap$EntrySetSerializedForm(final ImmutableSortedMap<K, V> map) {
        this.map = map;
    }
    
    Object readResolve() {
        return this.map.YZ();
    }
}
