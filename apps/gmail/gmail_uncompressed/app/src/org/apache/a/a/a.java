package org.apache.a.a;

import java.io.*;
import org.apache.a.a.a.*;

public final class a
{
    public static final char cDb;
    public static final String czG;
    
    static {
        cDb = File.separatorChar;
        final StringWriter stringWriter = new StringWriter(4);
        new PrintWriter(stringWriter).println();
        czG = stringWriter.toString();
    }
    
    private static int a(final Reader reader, final Writer writer) {
        final char[] array = new char[4096];
        long n = 0L;
        while (true) {
            final int read = reader.read(array);
            if (-1 == read) {
                break;
            }
            writer.write(array, 0, read);
            n += read;
        }
        if (n > 2147483647L) {
            return -1;
        }
        return (int)n;
    }
    
    private static void a(final InputStream inputStream, final Writer writer) {
        a(new InputStreamReader(inputStream), writer);
    }
    
    public static int b(final InputStream inputStream, final OutputStream outputStream) {
        final long c = c(inputStream, outputStream);
        if (c > 2147483647L) {
            return -1;
        }
        return (int)c;
    }
    
    public static long c(final InputStream inputStream, final OutputStream outputStream) {
        final byte[] array = new byte[4096];
        long n = 0L;
        while (true) {
            final int read = inputStream.read(array);
            if (-1 == read) {
                break;
            }
            outputStream.write(array, 0, read);
            n += read;
        }
        return n;
    }
    
    public static String c(final InputStream inputStream, final String s) {
        final StringWriter stringWriter = new StringWriter();
        if (s == null) {
            a(inputStream, stringWriter);
        }
        else {
            a(new InputStreamReader(inputStream, s), stringWriter);
        }
        return stringWriter.toString();
    }
    
    public static byte[] h(final InputStream inputStream) {
        final org.apache.a.a.a.a a = new org.apache.a.a.a.a();
        b(inputStream, a);
        return a.toByteArray();
    }
    
    public static String i(final InputStream inputStream) {
        final StringWriter stringWriter = new StringWriter();
        a(inputStream, stringWriter);
        return stringWriter.toString();
    }
}
