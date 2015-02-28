package com.google.common.primitives;

import java.util.*;
import com.google.common.base.*;

public final class Ints
{
    public static int[] O(final Collection<Integer> collection) {
        if (collection instanceof Ints$IntArrayAsList) {
            return ((Ints$IntArrayAsList)collection).aat();
        }
        final Object[] array = collection.toArray();
        final int length = array.length;
        final int[] array2 = new int[length];
        for (int i = 0; i < length; ++i) {
            array2[i] = i.ak(array[i]);
        }
        return array2;
    }
    
    public static int[] a(final int[]... array) {
        final int length = array.length;
        int i = 0;
        int n = 0;
        while (i < length) {
            n += array[i].length;
            ++i;
        }
        final int[] array2 = new int[n];
        final int length2 = array.length;
        int j = 0;
        int n2 = 0;
        while (j < length2) {
            final int[] array3 = array[j];
            System.arraycopy(array3, 0, array2, n2, array3.length);
            n2 += array3.length;
            ++j;
        }
        return array2;
    }
    
    public static int bi(final long n) {
        if (n > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (n < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int)n;
    }
}
