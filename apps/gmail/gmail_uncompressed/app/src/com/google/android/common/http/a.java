package com.google.android.common.http;

import org.apache.http.util.*;
import java.io.*;

public final class a extends h
{
    private static final byte[] aVN;
    private i aVO;
    
    static {
        aVN = EncodingUtils.getAsciiBytes("; filename=");
    }
    
    public a(final String s, final i avo, String s2) {
        if (s2 == null) {
            s2 = "application/octet-stream";
        }
        super(s, s2, "ISO-8859-1", "binary");
        if (avo == null) {
            throw new IllegalArgumentException("Source may not be null");
        }
        this.aVO = avo;
    }
    
    @Override
    protected final long Cn() {
        return this.aVO.getLength();
    }
    
    @Override
    protected final void a(final OutputStream outputStream) {
        super.a(outputStream);
        final String fileName = this.aVO.getFileName();
        if (fileName != null) {
            outputStream.write(a.aVN);
            outputStream.write(a.aWj);
            outputStream.write(EncodingUtils.getAsciiBytes(fileName));
            outputStream.write(a.aWj);
        }
    }
    
    @Override
    protected final void b(final OutputStream outputStream) {
        if (this.Cn() == 0L) {
            return;
        }
        final byte[] array = new byte[4096];
        final InputStream fw = this.aVO.fW();
        try {
            while (true) {
                final int read = fw.read(array);
                if (read < 0) {
                    break;
                }
                outputStream.write(array, 0, read);
            }
        }
        finally {
            fw.close();
        }
        fw.close();
    }
}
