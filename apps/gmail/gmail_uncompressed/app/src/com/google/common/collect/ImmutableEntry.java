package com.google.common.collect;

import java.io.*;

class ImmutableEntry<K, V> extends j<K, V> implements Serializable
{
    private static final long serialVersionUID;
    private final K key;
    private final V value;
    
    ImmutableEntry(final K key, final V value) {
        this.key = key;
        this.value = value;
    }
    
    @Override
    public K getKey() {
        return this.key;
    }
    
    @Override
    public V getValue() {
        return this.value;
    }
    
    @Override
    public final V setValue(final V v) {
        throw new UnsupportedOperationException();
    }
}
