package com.google.common.primitives;

import java.io.*;
import com.google.common.base.*;
import java.util.*;

class Ints$IntArrayAsList extends AbstractList<Integer> implements Serializable, RandomAccess
{
    private static final long serialVersionUID;
    final int[] array;
    final int end;
    final int start;
    
    private Ints$IntArrayAsList(final int[] array, final int start, final int end) {
        this.array = array;
        this.start = start;
        this.end = end;
    }
    
    final int[] aat() {
        final int size = this.size();
        final int[] array = new int[size];
        System.arraycopy(this.array, this.start, array, 0, size);
        return array;
    }
    
    @Override
    public boolean contains(final Object o) {
        return o instanceof Integer && Ints.a(this.array, (int)o, this.start, this.end) != -1;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof Ints$IntArrayAsList)) {
                return super.equals(o);
            }
            final Ints$IntArrayAsList list = (Ints$IntArrayAsList)o;
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
            n = n * 31 + this.array[i];
        }
        return n;
    }
    
    @Override
    public int indexOf(final Object o) {
        if (o instanceof Integer) {
            final int a = Ints.a(this.array, (int)o, this.start, this.end);
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
        if (o instanceof Integer) {
            final int[] array = this.array;
            final int intValue = (int)o;
            final int start = this.start;
            int i = -1 + this.end;
            while (true) {
                while (i >= start) {
                    if (array[i] == intValue) {
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
    public List<Integer> subList(final int n, final int n2) {
        i.k(n, n2, this.size());
        if (n == n2) {
            return Collections.emptyList();
        }
        return new Ints$IntArrayAsList(this.array, n + this.start, n2 + this.start);
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(5 * this.size());
        sb.append('[').append(this.array[this.start]);
        for (int i = 1 + this.start; i < this.end; ++i) {
            sb.append(", ").append(this.array[i]);
        }
        return sb.append(']').toString();
    }
}
