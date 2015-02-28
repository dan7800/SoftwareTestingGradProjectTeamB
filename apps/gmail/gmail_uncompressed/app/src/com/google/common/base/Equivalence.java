package com.google.common.base;

public abstract class Equivalence<T>
{
    public final int av(final T t) {
        if (t == null) {
            return 0;
        }
        return this.aw(t);
    }
    
    protected abstract int aw(final T p0);
    
    public final boolean l(final T t, final T t2) {
        return t == t2 || (t != null && t2 != null && this.m(t, t2));
    }
    
    protected abstract boolean m(final T p0, final T p1);
}
