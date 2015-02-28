package com.google.api.client.a.a.a.a.a;

public final class b
{
    public static <X extends Throwable> void a(final Throwable t, final Class<X> clazz) throws X {
        if (t != null && clazz.isInstance(t)) {
            throw clazz.cast(t);
        }
    }
}
