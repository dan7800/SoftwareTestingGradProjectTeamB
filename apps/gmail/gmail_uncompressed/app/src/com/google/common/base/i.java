package com.google.common.base;

public final class i
{
    private static String a(final int n, final int n2, final String s) {
        if (n < 0) {
            return format("%s (%s) must not be negative", s, n);
        }
        if (n2 < 0) {
            throw new IllegalArgumentException("negative size: " + n2);
        }
        return format("%s (%s) must not be greater than size (%s)", s, n, n2);
    }
    
    public static void a(final boolean b, final String s, final Object... array) {
        if (!b) {
            throw new IllegalArgumentException(format(s, array));
        }
    }
    
    public static int ad(final int n, final int n2) {
        if (n < 0 || n > n2) {
            throw new IndexOutOfBoundsException(a(n, n2, "index"));
        }
        return n;
    }
    
    public static int ak(final int n, final int n2) {
        if (n < 0 || n >= n2) {
            String s;
            if (n < 0) {
                s = format("%s (%s) must not be negative", "index", n);
            }
            else {
                if (n2 < 0) {
                    throw new IllegalArgumentException("negative size: " + n2);
                }
                s = format("%s (%s) must be less than size (%s)", "index", n, n2);
            }
            throw new IndexOutOfBoundsException(s);
        }
        return n;
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
    
    public static void c(final boolean b, final Object o) {
        if (!b) {
            throw new IllegalArgumentException(String.valueOf(o));
        }
    }
    
    public static void cp(final boolean b) {
        if (!b) {
            throw new IllegalArgumentException();
        }
    }
    
    public static void cq(final boolean b) {
        if (!b) {
            throw new IllegalStateException();
        }
    }
    
    public static void e(final boolean b, final Object o) {
        if (!b) {
            throw new IllegalStateException(String.valueOf(o));
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
    
    public static <T> T i(final T t, final Object o) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(o));
        }
        return t;
    }
    
    public static void k(final int n, final int n2, final int n3) {
        if (n < 0 || n2 < n || n2 > n3) {
            String s;
            if (n < 0 || n > n3) {
                s = a(n, n3, "start index");
            }
            else if (n2 < 0 || n2 > n3) {
                s = a(n2, n3, "end index");
            }
            else {
                s = format("end index (%s) must not be less than start index (%s)", n2, n);
            }
            throw new IndexOutOfBoundsException(s);
        }
    }
}
