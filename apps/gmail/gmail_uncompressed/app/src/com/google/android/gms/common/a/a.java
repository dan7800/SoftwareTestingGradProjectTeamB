package com.google.android.gms.common.a;

import java.io.*;

public final class a
{
    public static void b(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (IOException ex) {}
    }
}
