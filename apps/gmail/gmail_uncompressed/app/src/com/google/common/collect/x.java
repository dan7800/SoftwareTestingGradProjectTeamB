package com.google.common.collect;

import java.util.*;
import com.google.common.base.*;

public final class x<E> extends w<E>
{
    private final ArrayList<E> cAy;
    
    public x() {
        this.cAy = new ArrayList<E>();
    }
    
    public final ImmutableList<E> Zt() {
        return ImmutableList.J((Collection<? extends E>)this.cAy);
    }
    
    public final x<E> aF(final E e) {
        this.cAy.add(i.ak(e));
        return this;
    }
    
    public final x<E> c(final Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            this.cAy.ensureCapacity(this.cAy.size() + ((Collection<? extends E>)iterable).size());
        }
        super.b(iterable);
        return this;
    }
    
    public final x<E> h(final E... array) {
        this.cAy.ensureCapacity(this.cAy.size() + array.length);
        super.e(array);
        return this;
    }
}
