package com.google.api.client.util;

import java.io.*;
import com.google.api.client.a.a.a.a.a.*;

public final class h
{
    public static int a(final InputStream inputStream, final byte[] array, final int n, final int n2) {
        a.ak(inputStream);
        a.ak(array);
        if (n2 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i;
        int read;
        for (i = 0; i < n2; i += read) {
            read = inputStream.read(array, n + i, n2 - i);
            if (read == -1) {
                break;
            }
        }
        return i;
    }
    
    public static InputStream a(final InputStream inputStream, final long n) {
        return new i(inputStream, n);
    }
}
