package com.google.common.collect;

import java.util.*;

public abstract class i<T> extends aJ<T>
{
    private T cAl;
    
    protected i(final T cAl) {
        this.cAl = cAl;
    }
    
    protected abstract T aC(final T p0);
    
    @Override
    public final boolean hasNext() {
        return this.cAl != null;
    }
    
    @Override
    public final T next() {
        if (!this.hasNext()) {
            throw new NoSuchElementException();
        }
        try {
            return this.cAl;
        }
        finally {
            this.cAl = this.aC(this.cAl);
        }
    }
}
