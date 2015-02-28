package com.google.api.client.a.a.a.a.a;

public final class a
{
    public static <T> T a(final T t, final String s, final Object... array) {
        if (t == null) {
            throw new NullPointerException(format(s, array));
        }
        return t;
    }
    
    public static void a(final boolean b, final String s, final Object... array) {
        if (!b) {
            throw new IllegalArgumentException(format(s, array));
        }
    }
    
    public static <T> T ak(final T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }
    
    public static void b(final boolean b, final String s, final Object... array) {
        if (!b) {
            throw new IllegalStateException(format(s, array));
        }
    }
    
    private static String format(final String s, final Object... array) {
        int i = 0;
        final String value = String.valueOf(s);
        final StringBuilder sb = new StringBuilder(value.length() + 16 * array.length);
        int n = 0;
        while (i < array.length) {
            final int index = value.indexOf("%s", n);
            if (index == -1) {
                break;
            }
            sb.append(value.substring(n, index));
            final int n2 = i + 1;
            sb.append(array[i]);
            n = index + 2;
            i = n2;
        }
        sb.append(value.substring(n));
        if (i < array.length) {
            sb.append(" [");
            final int n3 = i + 1;
            sb.append(array[i]);
            int n4;
            for (int j = n3; j < array.length; j = n4) {
                sb.append(", ");
                n4 = j + 1;
                sb.append(array[j]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
