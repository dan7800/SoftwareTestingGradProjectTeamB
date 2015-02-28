package com.google.android.common.http;

import org.apache.http.util.*;
import java.io.*;

public abstract class g
{
    @Deprecated
    protected static final byte[] aWg;
    private static final byte[] aWh;
    protected static final byte[] aWi;
    protected static final byte[] aWj;
    protected static final byte[] aWk;
    protected static final byte[] aWl;
    protected static final byte[] aWm;
    protected static final byte[] aWn;
    protected static final byte[] aWo;
    private byte[] aWp;
    
    static {
        aWh = (aWg = EncodingUtils.getAsciiBytes("----------------314159265358979323846"));
        aWi = EncodingUtils.getAsciiBytes("\r\n");
        aWj = EncodingUtils.getAsciiBytes("\"");
        aWk = EncodingUtils.getAsciiBytes("--");
        aWl = EncodingUtils.getAsciiBytes("Content-Disposition: form-data; name=");
        aWm = EncodingUtils.getAsciiBytes("Content-Type: ");
        aWn = EncodingUtils.getAsciiBytes("; charset=");
        aWo = EncodingUtils.getAsciiBytes("Content-Transfer-Encoding: ");
    }
    
    public static long a(final g[] array, final byte[] aWp) {
        if (array == null) {
            throw new IllegalArgumentException("Parts may not be null");
        }
        int i = 0;
        long n = 0L;
        while (i < array.length) {
            array[i].aWp = aWp;
            final g g = array[i];
            long n2;
            if (g.Cn() < 0L) {
                n2 = -1L;
            }
            else {
                final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                g.c(byteArrayOutputStream);
                g.a(byteArrayOutputStream);
                g.d(byteArrayOutputStream);
                g.e(byteArrayOutputStream);
                f(byteArrayOutputStream);
                byteArrayOutputStream.write(com.google.android.common.http.g.aWi);
                n2 = byteArrayOutputStream.size() + g.Cn();
            }
            if (n2 < 0L) {
                return -1L;
            }
            n += n2;
            ++i;
        }
        return n + g.aWk.length + aWp.length + g.aWk.length + g.aWi.length;
    }
    
    public static void a(final OutputStream outputStream, final g[] array, final byte[] aWp) {
        if (array == null) {
            throw new IllegalArgumentException("Parts may not be null");
        }
        if (aWp == null || aWp.length == 0) {
            throw new IllegalArgumentException("partBoundary may not be empty");
        }
        for (int i = 0; i < array.length; ++i) {
            array[i].aWp = aWp;
            final g g = array[i];
            g.c(outputStream);
            g.a(outputStream);
            g.d(outputStream);
            g.e(outputStream);
            f(outputStream);
            g.b(outputStream);
            outputStream.write(com.google.android.common.http.g.aWi);
        }
        outputStream.write(g.aWk);
        outputStream.write(aWp);
        outputStream.write(g.aWk);
        outputStream.write(g.aWi);
    }
    
    private void c(final OutputStream outputStream) {
        outputStream.write(g.aWk);
        byte[] array;
        if (this.aWp == null) {
            array = g.aWh;
        }
        else {
            array = this.aWp;
        }
        outputStream.write(array);
        outputStream.write(g.aWi);
    }
    
    private void d(final OutputStream outputStream) {
        final String contentType = this.getContentType();
        if (contentType != null) {
            outputStream.write(g.aWi);
            outputStream.write(g.aWm);
            outputStream.write(EncodingUtils.getAsciiBytes(contentType));
            final String cp = this.Cp();
            if (cp != null) {
                outputStream.write(g.aWn);
                outputStream.write(EncodingUtils.getAsciiBytes(cp));
            }
        }
    }
    
    private void e(final OutputStream outputStream) {
        final String cq = this.Cq();
        if (cq != null) {
            outputStream.write(g.aWi);
            outputStream.write(g.aWo);
            outputStream.write(EncodingUtils.getAsciiBytes(cq));
        }
    }
    
    private static void f(final OutputStream outputStream) {
        outputStream.write(g.aWi);
        outputStream.write(g.aWi);
    }
    
    public static boolean isRepeatable() {
        return true;
    }
    
    protected abstract long Cn();
    
    public abstract String Cp();
    
    public abstract String Cq();
    
    protected void a(final OutputStream outputStream) {
        outputStream.write(g.aWl);
        outputStream.write(g.aWj);
        outputStream.write(EncodingUtils.getAsciiBytes(this.getName()));
        outputStream.write(g.aWj);
    }
    
    protected abstract void b(final OutputStream p0);
    
    public abstract String getContentType();
    
    public abstract String getName();
    
    @Override
    public String toString() {
        return this.getName();
    }
}
