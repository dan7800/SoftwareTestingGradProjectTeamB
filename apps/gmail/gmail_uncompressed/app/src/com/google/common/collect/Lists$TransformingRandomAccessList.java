package com.google.common.collect;

import java.io.*;
import java.util.*;
import com.google.common.base.*;

class Lists$TransformingRandomAccessList<F, T> extends AbstractList<T> implements Serializable, RandomAccess
{
    private static final long serialVersionUID;
    final List<F> fromList;
    final b<? super F, ? extends T> function;
    
    Lists$TransformingRandomAccessList(final List<F> list, final b<? super F, ? extends T> b) {
        this.fromList = i.ak(list);
        this.function = i.ak(b);
    }
    
    @Override
    public void clear() {
        this.fromList.clear();
    }
    
    @Override
    public T get(final int n) {
        return (T)this.function.apply((Object)this.fromList.get(n));
    }
    
    @Override
    public boolean isEmpty() {
        return this.fromList.isEmpty();
    }
    
    @Override
    public T remove(final int n) {
        return (T)this.function.apply((Object)this.fromList.remove(n));
    }
    
    @Override
    public int size() {
        return this.fromList.size();
    }
}
