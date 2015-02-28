package com.google.common.primitives;

import java.io.*;
import com.google.common.base.*;
import java.util.*;

class Longs$LongArrayAsList extends AbstractList<Long> implements Serializable, RandomAccess
{
    private static final long serialVersionUID;
    final long[] array;
    final int end;
    final int start;
    
    Longs$LongArrayAsList(final long[] array) {
        this(array, 0, array.length);
    }
    
    private Longs$LongArrayAsList(final long[] array, final int start, final int end) {
        this.array = array;
        this.start = start;
        this.end = end;
    }
    
    @Override
    public boolean contains(final Object o) {
        return o instanceof Long && Longs.a(this.array, (long)o, this.start, this.end) != -1;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof Longs$LongArrayAsList)) {
                return super.equals(o);
            }
            final Longs$LongArrayAsList list = (Longs$LongArrayAsList)o;
            final int size = this.size();
            if (list.size() != size) {
                return false;
            }
            for (int i = 0; i < size; ++i) {
                if (this.array[i + this.start] != list.array[i + list.start]) {
                    return false;
                }
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        int n = 1;
        for (int i = this.start; i < this.end; ++i) {
            final int n2 = n * 31;
            final long n3 = this.array[i];
            n = n2 + (int)(n3 ^ n3 >>> 32);
        }
        return n;
    }
    
    @Override
    public int indexOf(final Object o) {
        if (o instanceof Long) {
            final int a = Longs.a(this.array, (long)o, this.start, this.end);
            if (a >= 0) {
                return a - this.start;
            }
        }
        return -1;
    }
    
    @Override
    public boolean isEmpty() {
        return false;
    }
    
    @Override
    public int lastIndexOf(final Object o) {
        int n = -1;
        if (o instanceof Long) {
            final long[] array = this.array;
            final long longValue = (long)o;
            final int start = this.start;
            int i = -1 + this.end;
            while (true) {
                while (i >= start) {
                    if (array[i] == longValue) {
                        if (i >= 0) {
                            n = i - this.start;
                            return n;
                        }
                        return n;
                    }
                    else {
                        --i;
                    }
                }
                i = n;
                continue;
            }
        }
        return n;
    }
    
    @Override
    public int size() {
        return this.end - this.start;
    }
    
    @Override
    public List<Long> subList(final int n, final int n2) {
        i.k(n, n2, this.size());
        if (n == n2) {
            return Collections.emptyList();
        }
        return new Longs$LongArrayAsList(this.array, n + this.start, n2 + this.start);
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(10 * this.size());
        sb.append('[').append(this.array[this.start]);
        for (int i = 1 + this.start; i < this.end; ++i) {
            sb.append(", ").append(this.array[i]);
        }
        return sb.append(']').toString();
    }
}
