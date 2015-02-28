package com.google.common.collect;

import java.util.*;

class ImmutableCollection$EmptyImmutableCollection extends ImmutableCollection<Object>
{
    private static final Object[] cAq;
    
    static {
        cAq = new Object[0];
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<Object> YX() {
        return I.cAO;
    }
    
    @Override
    final ImmutableList<Object> Zq() {
        return ImmutableList.Zr();
    }
    
    @Override
    public boolean contains(final Object o) {
        return false;
    }
    
    @Override
    public boolean isEmpty() {
        return true;
    }
    
    @Override
    public int size() {
        return 0;
    }
    
    @Override
    public Object[] toArray() {
        return ImmutableCollection$EmptyImmutableCollection.cAq;
    }
    
    @Override
    public <T> T[] toArray(final T[] array) {
        if (array.length > 0) {
            array[0] = null;
        }
        return array;
    }
}
