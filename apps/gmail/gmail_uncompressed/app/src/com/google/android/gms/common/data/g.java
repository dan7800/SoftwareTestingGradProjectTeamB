package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.*;
import java.util.*;

public final class g<T> implements Iterator<T>
{
    protected final b<T> bEm;
    protected int bEn;
    
    public g(final b<T> b) {
        this.bEm = G.ae(b);
        this.bEn = -1;
    }
    
    @Override
    public final boolean hasNext() {
        return this.bEn < -1 + this.bEm.getCount();
    }
    
    @Override
    public final T next() {
        if (!this.hasNext()) {
            throw new NoSuchElementException("Cannot advance the iterator beyond " + this.bEn);
        }
        final b<T> bEm = this.bEm;
        final int bEn = 1 + this.bEn;
        this.bEn = bEn;
        return bEm.get(bEn);
    }
    
    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
