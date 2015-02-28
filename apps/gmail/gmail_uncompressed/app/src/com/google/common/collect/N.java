package com.google.common.collect;

import java.util.*;

final class n extends aK<Object>
{
    @Override
    public final boolean hasNext() {
        return false;
    }
    
    @Override
    public final boolean hasPrevious() {
        return false;
    }
    
    @Override
    public final Object next() {
        throw new NoSuchElementException();
    }
    
    @Override
    public final int nextIndex() {
        return 0;
    }
    
    @Override
    public final Object previous() {
        throw new NoSuchElementException();
    }
    
    @Override
    public final int previousIndex() {
        return -1;
    }
}
