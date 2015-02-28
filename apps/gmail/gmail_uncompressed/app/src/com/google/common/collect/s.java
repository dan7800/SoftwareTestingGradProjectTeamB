package com.google.common.collect;

import java.util.*;

final class S extends AbstractQueue<Object>
{
    @Override
    public final Iterator<Object> iterator() {
        return I.ZC();
    }
    
    @Override
    public final boolean offer(final Object o) {
        return true;
    }
    
    @Override
    public final Object peek() {
        return null;
    }
    
    @Override
    public final Object poll() {
        return null;
    }
    
    @Override
    public final int size() {
        return 0;
    }
}
