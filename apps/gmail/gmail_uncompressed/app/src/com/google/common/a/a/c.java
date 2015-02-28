package com.google.common.a.a;

import java.io.*;

public final class c
{
    public static int a(final b b, final InputStream inputStream, final a a) {
        final long a2 = a.a(inputStream, true);
        if (a2 == -1L) {
            return -1;
        }
        if ((0x7L & a2) != 0x2L) {
            throw new IOException("Message expected");
        }
        final int n = (int)(a2 >>> 3);
        a.a((b)b.fF(n));
        a.a(inputStream, (int)a.a(inputStream, false));
        return n;
    }
}
