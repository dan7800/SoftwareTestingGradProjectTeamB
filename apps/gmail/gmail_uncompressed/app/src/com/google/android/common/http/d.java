package com.google.android.common.http;

import org.apache.http.entity.*;
import org.apache.http.params.*;
import org.apache.http.util.*;
import java.util.*;
import java.io.*;
import org.apache.http.*;
import org.apache.http.message.*;

public final class d extends AbstractHttpEntity
{
    private static byte[] aVV;
    protected g[] aVW;
    private byte[] aVX;
    private boolean aVY;
    private HttpParams params;
    
    static {
        d.aVV = EncodingUtils.getAsciiBytes("-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
    }
    
    public d(final g[] avw) {
        this.aVY = false;
        this.setContentType("multipart/form-data");
        if (avw == null) {
            throw new IllegalArgumentException("parts cannot be null");
        }
        this.aVW = avw;
        this.params = null;
    }
    
    private byte[] Co() {
        if (this.aVX == null) {
            final HttpParams params = this.params;
            String s = null;
            if (params != null) {
                s = (String)this.params.getParameter("http.method.multipart.boundary");
            }
            if (s != null) {
                this.aVX = EncodingUtils.getAsciiBytes(s);
            }
            else {
                final Random random = new Random();
                final byte[] avx = new byte[30 + random.nextInt(11)];
                for (int i = 0; i < avx.length; ++i) {
                    avx[i] = d.aVV[random.nextInt(d.aVV.length)];
                }
                this.aVX = avx;
            }
        }
        return this.aVX;
    }
    
    public final InputStream getContent() {
        if (!this.isRepeatable() && this.aVY) {
            throw new IllegalStateException("Content has been consumed");
        }
        this.aVY = true;
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        g.a(byteArrayOutputStream, this.aVW, this.aVX);
        return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    }
    
    public final long getContentLength() {
        try {
            return g.a(this.aVW, this.Co());
        }
        catch (Exception ex) {
            return 0L;
        }
    }
    
    public final Header getContentType() {
        final StringBuffer sb = new StringBuffer("multipart/form-data");
        sb.append("; boundary=");
        sb.append(EncodingUtils.getAsciiString(this.Co()));
        return (Header)new BasicHeader("Content-Type", sb.toString());
    }
    
    public final boolean isRepeatable() {
        for (int i = 0; i < this.aVW.length; ++i) {
            final g[] avw = this.aVW;
            g.isRepeatable();
        }
        return true;
    }
    
    public final boolean isStreaming() {
        return false;
    }
    
    public final void writeTo(final OutputStream outputStream) {
        g.a(outputStream, this.aVW, this.Co());
    }
}
