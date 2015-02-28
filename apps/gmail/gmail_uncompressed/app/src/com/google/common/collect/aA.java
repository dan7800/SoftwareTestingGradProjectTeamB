package com.google.common.collect;

import java.util.*;
import java.lang.reflect.*;

public final class aA
{
    static Object[] N(final Collection<?> collection) {
        return a((Iterable<?>)collection, new Object[collection.size()]);
    }
    
    private static Object[] a(final Iterable<?> iterable, final Object[] array) {
        int n = 0;
        for (final Object next : iterable) {
            final int n2 = n + 1;
            array[n] = next;
            n = n2;
        }
        return array;
    }
    
    static <T> T[] a(final Collection<?> collection, T[] b) {
        final int size = collection.size();
        if (b.length < size) {
            b = b(b, size);
        }
        a((Iterable<?>)collection, b);
        if (b.length > size) {
            b[size] = null;
        }
        return b;
    }
    
    public static <T> T[] b(final T[] array, final int n) {
        return (T[])Array.newInstance(array.getClass().getComponentType(), n);
    }
}
