package com.google.android.gms.common.internal;

public final class b
{
    public static void a(final boolean b, final Object o) {
        if (!b) {
            throw new IllegalStateException(String.valueOf(o));
        }
    }
    
    public static void ab(final Object o) {
        if (o == null) {
            throw new IllegalArgumentException("null reference");
        }
    }
    
    public static void cc(final boolean b) {
        if (!b) {
            throw new IllegalStateException();
        }
    }
}
