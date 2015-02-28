package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class SingletonImmutableSet<E> extends ImmutableSet<E>
{
    final transient E cCn;
    private transient int cCs;
    
    SingletonImmutableSet(final E e) {
        this.cCn = i.ak(e);
    }
    
    SingletonImmutableSet(final E cCn, final int cCs) {
        this.cCn = cCn;
        this.cCs = cCs;
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final aJ<E> YX() {
        return I.aK(this.cCn);
    }
    
    @Override
    final boolean Zc() {
        return this.cCs != 0;
    }
    
    @Override
    public final boolean contains(final Object o) {
        return this.cCn.equals(o);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof Set)) {
                return false;
            }
            final Set set = (Set)o;
            if (set.size() != 1 || !this.cCn.equals(set.iterator().next())) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        int cCs = this.cCs;
        if (cCs == 0) {
            cCs = this.cCn.hashCode();
            this.cCs = cCs;
        }
        return cCs;
    }
    
    @Override
    public final boolean isEmpty() {
        return false;
    }
    
    @Override
    public final int size() {
        return 1;
    }
    
    @Override
    public final Object[] toArray() {
        return new Object[] { this.cCn };
    }
    
    @Override
    public final <T> T[] toArray(T[] b) {
        if (b.length == 0) {
            b = aA.b(b, 1);
        }
        else if (b.length > 1) {
            b[1] = null;
        }
        b[0] = (T)this.cCn;
        return b;
    }
    
    @Override
    public final String toString() {
        final String string = this.cCn.toString();
        return new StringBuilder(2 + string.length()).append('[').append(string).append(']').toString();
    }
}
