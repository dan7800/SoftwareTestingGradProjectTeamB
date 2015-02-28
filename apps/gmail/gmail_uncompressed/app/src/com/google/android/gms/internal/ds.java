package com.google.android.gms.internal;

import java.util.*;

public final class ds
{
    public static final Object cab;
    
    static {
        cab = new Object();
    }
    
    public static boolean equals(final int[] array, final int[] array2) {
        if (array == null || array.length == 0) {
            return array2 == null || array2.length == 0;
        }
        return Arrays.equals(array, array2);
    }
    
    public static boolean equals(final Object[] array, final Object[] array2) {
        int length;
        if (array == null) {
            length = 0;
        }
        else {
            length = array.length;
        }
        int length2;
        if (array2 == null) {
            length2 = 0;
        }
        else {
            length2 = array2.length;
        }
        int n = 0;
        int n2 = 0;
        boolean b3;
        while (true) {
            if (n2 < length && array[n2] == null) {
                ++n2;
            }
            else {
                int n3;
                for (n3 = n; n3 < length2 && array2[n3] == null; ++n3) {}
                boolean b;
                if (n2 >= length) {
                    b = true;
                }
                else {
                    b = false;
                }
                boolean b2;
                if (n3 >= length2) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
                if (b && b2) {
                    b3 = true;
                    break;
                }
                b3 = false;
                if (b != b2) {
                    break;
                }
                final boolean equals = array[n2].equals(array2[n3]);
                b3 = false;
                if (!equals) {
                    break;
                }
                final int n4 = n2 + 1;
                n = n3 + 1;
                n2 = n4;
            }
        }
        return b3;
    }
    
    public static int hashCode(final int[] array) {
        if (array == null || array.length == 0) {
            return 0;
        }
        return Arrays.hashCode(array);
    }
    
    public static int hashCode(final Object[] array) {
        int n = 0;
        if (array == null) {
            final int length = 0;
        }
        else {
            final int length = array.length;
        }
        for (final Object o : array) {
            if (o != null) {
                n = n * 31 + o.hashCode();
            }
        }
        return n;
    }
}
