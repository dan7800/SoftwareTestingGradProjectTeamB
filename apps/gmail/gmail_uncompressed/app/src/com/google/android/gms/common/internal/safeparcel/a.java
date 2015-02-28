package com.google.android.gms.common.internal.safeparcel;

import java.util.*;
import java.math.*;
import android.os.*;

public final class a
{
    public static Parcel[] A(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final int int1 = parcel.readInt();
        final Parcel[] array = new Parcel[int1];
        for (int i = 0; i < int1; ++i) {
            final int int2 = parcel.readInt();
            if (int2 != 0) {
                final int dataPosition2 = parcel.dataPosition();
                final Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, int2);
                array[i] = obtain;
                parcel.setDataPosition(int2 + dataPosition2);
            }
            else {
                array[i] = null;
            }
        }
        parcel.setDataPosition(dataPosition + a);
        return array;
    }
    
    public static int a(final Parcel parcel, final int n) {
        if ((n & 0xFFFF0000) != 0xFFFF0000) {
            return 0xFFFF & n >> 16;
        }
        return parcel.readInt();
    }
    
    public static <T extends Parcelable> T a(final Parcel parcel, final int n, final Parcelable$Creator<T> parcelable$Creator) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final Parcelable parcelable = (Parcelable)parcelable$Creator.createFromParcel(parcel);
        parcel.setDataPosition(a + dataPosition);
        return (T)parcelable;
    }
    
    private static void a(final Parcel parcel, final int n, final int n2) {
        final int a = a(parcel, n);
        if (a != n2) {
            throw new a$a("Expected size " + n2 + " got " + a + " (0x" + Integer.toHexString(a) + ")", parcel);
        }
    }
    
    public static void a(final Parcel parcel, final int n, final List list, final ClassLoader classLoader) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(a + dataPosition);
    }
    
    public static int ad(final Parcel parcel) {
        final int int1 = parcel.readInt();
        final int a = a(parcel, int1);
        final int dataPosition = parcel.dataPosition();
        if ((0xFFFF & int1) != 0x4F45) {
            throw new a$a("Expected object header. Got 0x" + Integer.toHexString(int1), parcel);
        }
        final int n = dataPosition + a;
        if (n < dataPosition || n > parcel.dataSize()) {
            throw new a$a("Size read is invalid start=" + dataPosition + " end=" + n, parcel);
        }
        return n;
    }
    
    public static void b(final Parcel parcel, final int n) {
        parcel.setDataPosition(a(parcel, n) + parcel.dataPosition());
    }
    
    private static void b(final Parcel parcel, final int n, final int n2) {
        if (n != n2) {
            throw new a$a("Expected size " + n2 + " got " + n + " (0x" + Integer.toHexString(n) + ")", parcel);
        }
    }
    
    public static <T> T[] b(final Parcel parcel, final int n, final Parcelable$Creator<T> parcelable$Creator) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final Object[] typedArray = parcel.createTypedArray((Parcelable$Creator)parcelable$Creator);
        parcel.setDataPosition(a + dataPosition);
        return (T[])typedArray;
    }
    
    public static <T> ArrayList<T> c(final Parcel parcel, final int n, final Parcelable$Creator<T> parcelable$Creator) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final ArrayList typedArrayList = parcel.createTypedArrayList((Parcelable$Creator)parcelable$Creator);
        parcel.setDataPosition(a + dataPosition);
        return (ArrayList<T>)typedArrayList;
    }
    
    public static boolean c(final Parcel parcel, final int n) {
        a(parcel, n, 4);
        return parcel.readInt() != 0;
    }
    
    public static Boolean d(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        if (a == 0) {
            return null;
        }
        b(parcel, a, 4);
        return parcel.readInt() != 0;
    }
    
    public static byte e(final Parcel parcel, final int n) {
        a(parcel, n, 4);
        return (byte)parcel.readInt();
    }
    
    public static short f(final Parcel parcel, final int n) {
        a(parcel, n, 4);
        return (short)parcel.readInt();
    }
    
    public static int g(final Parcel parcel, final int n) {
        a(parcel, n, 4);
        return parcel.readInt();
    }
    
    public static Integer h(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        if (a == 0) {
            return null;
        }
        b(parcel, a, 4);
        return parcel.readInt();
    }
    
    public static long i(final Parcel parcel, final int n) {
        a(parcel, n, 8);
        return parcel.readLong();
    }
    
    public static Long j(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        if (a == 0) {
            return null;
        }
        b(parcel, a, 8);
        return parcel.readLong();
    }
    
    public static BigInteger k(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final byte[] byteArray = parcel.createByteArray();
        parcel.setDataPosition(a + dataPosition);
        return new BigInteger(byteArray);
    }
    
    public static float l(final Parcel parcel, final int n) {
        a(parcel, n, 4);
        return parcel.readFloat();
    }
    
    public static double m(final Parcel parcel, final int n) {
        a(parcel, n, 8);
        return parcel.readDouble();
    }
    
    public static Double n(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        if (a == 0) {
            return null;
        }
        b(parcel, a, 8);
        return parcel.readDouble();
    }
    
    public static BigDecimal o(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final byte[] byteArray = parcel.createByteArray();
        final int int1 = parcel.readInt();
        parcel.setDataPosition(a + dataPosition);
        return new BigDecimal(new BigInteger(byteArray), int1);
    }
    
    public static String p(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final String string = parcel.readString();
        parcel.setDataPosition(a + dataPosition);
        return string;
    }
    
    public static IBinder q(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(a + dataPosition);
        return strongBinder;
    }
    
    public static Bundle r(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(a + dataPosition);
        return bundle;
    }
    
    public static byte[] s(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final byte[] byteArray = parcel.createByteArray();
        parcel.setDataPosition(a + dataPosition);
        return byteArray;
    }
    
    public static int[] t(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final int[] intArray = parcel.createIntArray();
        parcel.setDataPosition(a + dataPosition);
        return intArray;
    }
    
    public static double[] u(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final double[] doubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(a + dataPosition);
        return doubleArray;
    }
    
    public static BigDecimal[] v(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final int int1 = parcel.readInt();
        final BigDecimal[] array = new BigDecimal[int1];
        for (int i = 0; i < int1; ++i) {
            array[i] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + a);
        return array;
    }
    
    public static String[] w(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final String[] stringArray = parcel.createStringArray();
        parcel.setDataPosition(a + dataPosition);
        return stringArray;
    }
    
    public static ArrayList<Integer> x(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final ArrayList<Integer> list = new ArrayList<Integer>();
        for (int int1 = parcel.readInt(), i = 0; i < int1; ++i) {
            list.add(parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + a);
        return list;
    }
    
    public static ArrayList<String> y(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final ArrayList stringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(a + dataPosition);
        return (ArrayList<String>)stringArrayList;
    }
    
    public static Parcel z(final Parcel parcel, final int n) {
        final int a = a(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (a == 0) {
            return null;
        }
        final Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, a);
        parcel.setDataPosition(a + dataPosition);
        return obtain;
    }
}
