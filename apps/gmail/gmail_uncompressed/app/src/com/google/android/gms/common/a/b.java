package com.google.android.gms.common.a;

import java.util.*;

public final class b
{
    public static void a(final StringBuilder sb, final double[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(array[i]));
        }
    }
    
    public static void a(final StringBuilder sb, final float[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(array[i]));
        }
    }
    
    public static void a(final StringBuilder sb, final long[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(array[i]));
        }
    }
    
    public static <T> void a(final StringBuilder sb, final T[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(array[i].toString());
        }
    }
    
    public static void a(final StringBuilder sb, final String[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("\"").append(array[i]).append("\"");
        }
    }
    
    public static void a(final StringBuilder sb, final boolean[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(array[i]));
        }
    }
    
    public static <T> ArrayList<T> d(final T[] array) {
        final int length = array.length;
        final ArrayList list = new ArrayList<T>(length);
        for (int i = 0; i < length; ++i) {
            list.add(array[i]);
        }
        return (ArrayList<T>)list;
    }
}
