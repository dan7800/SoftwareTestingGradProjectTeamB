package com.google.common.collect;

import java.util.*;

class SingletonImmutableMap$Values<V> extends ImmutableCollection<V>
{
    final V singleValue;
    
    SingletonImmutableMap$Values(final V singleValue) {
        this.singleValue = singleValue;
    }
    
    @Override
    final boolean YW() {
        return true;
    }
    
    @Override
    public final aJ<V> YX() {
        return I.aK(this.singleValue);
    }
    
    @Override
    public boolean contains(final Object o) {
        return this.singleValue.equals(o);
    }
    
    @Override
    public boolean isEmpty() {
        return false;
    }
    
    @Override
    public int size() {
        return 1;
    }
}
