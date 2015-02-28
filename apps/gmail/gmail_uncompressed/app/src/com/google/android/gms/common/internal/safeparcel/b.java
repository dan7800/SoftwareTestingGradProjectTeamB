package com.google.android.gms.common.internal.safeparcel;

import android.os.*;
import java.util.*;

public final class b
{
    private static int B(final Parcel parcel, final int n) {
        parcel.writeInt(0xFFFF0000 | n);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }
    
    private static void C(final Parcel parcel, final int n) {
        final int dataPosition = parcel.dataPosition();
        final int n2 = dataPosition - n;
        parcel.setDataPosition(n - 4);
        parcel.writeInt(n2);
        parcel.setDataPosition(dataPosition);
    }
    
    public static void D(final Parcel parcel, final int n) {
        C(parcel, n);
    }
    
    public static void a(final Parcel parcel, final int n, final byte b) {
        c(parcel, n, 4);
        parcel.writeInt((int)b);
    }
    
    public static void a(final Parcel parcel, final int n, final double n2) {
        c(parcel, n, 8);
        parcel.writeDouble(n2);
    }
    
    public static void a(final Parcel parcel, final int n, final float n2) {
        c(parcel, n, 4);
        parcel.writeFloat(n2);
    }
    
    public static void a(final Parcel parcel, final int n, final long n2) {
        c(parcel, n, 8);
        parcel.writeLong(n2);
    }
    
    public static void a(final Parcel parcel, final int n, final Bundle bundle) {
        if (bundle == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeBundle(bundle);
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final int n, final IBinder binder) {
        if (binder == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeStrongBinder(binder);
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final int n, final Parcelable parcelable, final int n2, final boolean b) {
        if (parcelable == null) {
            if (b) {
                c(parcel, n, 0);
            }
            return;
        }
        final int b2 = B(parcel, n);
        parcelable.writeToParcel(parcel, n2);
        C(parcel, b2);
    }
    
    public static void a(final Parcel parcel, final int n, final Boolean b) {
        if (b == null) {
            return;
        }
        c(parcel, n, 4);
        int n2;
        if (b) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
    
    public static void a(final Parcel parcel, final int n, final Double n2) {
        if (n2 == null) {
            return;
        }
        c(parcel, n, 8);
        parcel.writeDouble((double)n2);
    }
    
    public static void a(final Parcel parcel, final int n, final Integer n2) {
        if (n2 == null) {
            return;
        }
        c(parcel, n, 4);
        parcel.writeInt((int)n2);
    }
    
    public static void a(final Parcel parcel, final int n, final Long n2) {
        if (n2 == null) {
            return;
        }
        c(parcel, n, 8);
        parcel.writeLong((long)n2);
    }
    
    public static void a(final Parcel parcel, final int n, final String s, final boolean b) {
        if (s == null) {
            if (b) {
                c(parcel, n, 0);
            }
            return;
        }
        final int b2 = B(parcel, n);
        parcel.writeString(s);
        C(parcel, b2);
    }
    
    public static void a(final Parcel parcel, final int n, final List<Integer> list) {
        if (list == null) {
            return;
        }
        final int b = B(parcel, n);
        final int size = list.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; ++i) {
            parcel.writeInt((int)list.get(i));
        }
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final int n, final List<String> list, final boolean b) {
        if (list == null) {
            if (b) {
                c(parcel, n, 0);
            }
            return;
        }
        final int b2 = B(parcel, n);
        parcel.writeStringList((List)list);
        C(parcel, b2);
    }
    
    public static void a(final Parcel parcel, final int n, final boolean b) {
        c(parcel, n, 4);
        int n2;
        if (b) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
    
    public static void a(final Parcel parcel, final int n, final byte[] array) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeByteArray(array);
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final int n, final int[] array) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeIntArray(array);
        C(parcel, b);
    }
    
    public static <T extends Parcelable> void a(final Parcel parcel, final int n, final T[] array, final int n2) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, n);
        final int length = array.length;
        parcel.writeInt(length);
        for (final Parcelable parcelable : array) {
            if (parcelable == null) {
                parcel.writeInt(0);
            }
            else {
                a(parcel, parcelable, n2);
            }
        }
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final int n, final String[] array) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeStringArray(array);
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final Parcel parcel2) {
        if (parcel2 == null) {
            return;
        }
        final int b = B(parcel, 2);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        C(parcel, b);
    }
    
    private static <T extends Parcelable> void a(final Parcel parcel, final T t, final int n) {
        final int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        final int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, n);
        final int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
    
    public static void a(final Parcel parcel, final List<Long> list) {
        if (list == null) {
            return;
        }
        final int b = B(parcel, 2);
        final int size = list.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; ++i) {
            parcel.writeLong((long)list.get(i));
        }
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final short n) {
        c(parcel, 3, 4);
        parcel.writeInt((int)n);
    }
    
    public static void a(final Parcel parcel, final double[] array) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, 11);
        parcel.writeDoubleArray(array);
        C(parcel, b);
    }
    
    public static void a(final Parcel parcel, final byte[][] array) {
        if (array == null) {
            return;
        }
        final int b = B(parcel, 3);
        final int length = array.length;
        parcel.writeInt(length);
        for (int i = 0; i < length; ++i) {
            parcel.writeByteArray(array[i]);
        }
        C(parcel, b);
    }
    
    public static int ae(final Parcel parcel) {
        return B(parcel, 20293);
    }
    
    public static void b(final Parcel parcel, final int n, final List list) {
        if (list == null) {
            return;
        }
        final int b = B(parcel, n);
        parcel.writeList(list);
        C(parcel, b);
    }
    
    public static <T extends Parcelable> void b(final Parcel parcel, final int n, final List<T> list, final boolean b) {
        if (list == null) {
            if (b) {
                c(parcel, n, 0);
            }
            return;
        }
        final int b2 = B(parcel, n);
        final int size = list.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; ++i) {
            final Parcelable parcelable = list.get(i);
            if (parcelable == null) {
                parcel.writeInt(0);
            }
            else {
                a(parcel, parcelable, 0);
            }
        }
        C(parcel, b2);
    }
    
    private static void c(final Parcel parcel, final int n, final int n2) {
        if (n2 >= 65535) {
            parcel.writeInt(0xFFFF0000 | n);
            parcel.writeInt(n2);
            return;
        }
        parcel.writeInt(n | n2 << 16);
    }
    
    public static void d(final Parcel parcel, final int n, final int n2) {
        c(parcel, n, 4);
        parcel.writeInt(n2);
    }
}
