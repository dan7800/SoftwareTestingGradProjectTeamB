package com.google.common.collect;

import java.util.*;

public abstract class t<E> extends o<E> implements Set<E>
{
    protected abstract Set<E> YT();
    
    @Override
    public boolean equals(final Object o) {
        return o == this || this.YT().equals(o);
    }
    
    @Override
    public int hashCode() {
        return this.YT().hashCode();
    }
}
