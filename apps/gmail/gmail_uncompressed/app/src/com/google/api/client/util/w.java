package com.google.api.client.util;

import java.io.*;
import com.google.api.client.a.a.a.a.a.*;

public final class w
{
    public static void a(final InputStream inputStream, final OutputStream outputStream, final boolean b) {
        try {
            a.ak(inputStream);
            a.ak(outputStream);
            final byte[] array = new byte[4096];
            while (true) {
                final int read = inputStream.read(array);
                if (read == -1) {
                    break;
                }
                outputStream.write(array, 0, read);
            }
        }
        finally {
            if (b) {
                inputStream.close();
            }
        }
        if (b) {
            inputStream.close();
        }
    }
    
    public static long b(final K k) {
        final g g = new g();
        try {
            k.writeTo(g);
            g.close();
            return g.cyB;
        }
        finally {
            g.close();
        }
    }
}
