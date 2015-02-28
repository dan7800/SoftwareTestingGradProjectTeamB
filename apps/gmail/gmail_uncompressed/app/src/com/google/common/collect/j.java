package com.google.common.collect;

import java.util.*;

final class J extends aJ<Object>
{
    @Override
    public final boolean hasNext() {
        return false;
    }
    
    @Override
    public final Object next() {
        throw new NoSuchElementException();
    }
}
