package com.google.common.base;

public final class k
{
    public static <X extends Throwable> void a(final Throwable t, final Class<X> clazz) throws X {
        if (t != null && clazz.isInstance(t)) {
            throw clazz.cast(t);
        }
    }
}
