package com.google.common.collect;

import java.util.*;

public abstract class r<K, V> extends s implements Entry<K, V>
{
    protected abstract Entry<K, V> YV();
    
    @Override
    public boolean equals(final Object o) {
        return this.YV().equals(o);
    }
    
    @Override
    public K getKey() {
        return this.YV().getKey();
    }
    
    @Override
    public V getValue() {
        return this.YV().getValue();
    }
    
    @Override
    public int hashCode() {
        return this.YV().hashCode();
    }
    
    @Override
    public V setValue(final V value) {
        return this.YV().setValue(value);
    }
}
