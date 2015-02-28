package com.android.emailcommon.a;

import java.util.regex.*;
import com.android.emailcommon.mail.*;
import java.io.*;

public final class c extends d
{
    private static final Pattern Wd;
    private static final Pattern We;
    protected com.android.emailcommon.a.d Wb;
    protected com.android.emailcommon.mail.c Wc;
    protected int gO;
    
    static {
        Wd = Pattern.compile("^<?([^>]+)>?$");
        We = Pattern.compile("\r?\n");
    }
    
    public c() {
        this((byte)0);
    }
    
    private c(final byte b) {
        this(null, null);
    }
    
    public c(final com.android.emailcommon.mail.c c, final String s) {
        this.Wb = new com.android.emailcommon.a.d();
        if (s != null) {
            this.setHeader("Content-Type", s);
        }
        this.a(c);
    }
    
    private String X(final String s) {
        return this.Wb.X(s);
    }
    
    @Override
    public final String[] Y(final String s) {
        return this.Wb.Y(s);
    }
    
    @Override
    public final boolean Z(final String s) {
        return this.getMimeType().equals(s);
    }
    
    @Override
    public final void a(final com.android.emailcommon.mail.c wc) {
        this.Wc = wc;
        if (wc instanceof h) {
            final h h = (h)wc;
            h.c(this);
            this.setHeader("Content-Type", h.getContentType());
        }
        else if (wc instanceof k) {
            String s = String.format("%s;\n charset=utf-8", this.getMimeType());
            final String r = i.r(this.getContentType(), "name");
            if (r != null) {
                s += String.format(";\n name=\"%s\"", r);
            }
            this.setHeader("Content-Type", s);
            this.setHeader("Content-Transfer-Encoding", "base64");
        }
    }
    
    @Override
    public final void addHeader(final String s, final String s2) {
        this.Wb.addHeader(s, s2);
    }
    
    @Override
    public final String getContentType() {
        String x = this.X("Content-Type");
        if (x == null) {
            x = "text/plain";
        }
        return x;
    }
    
    @Override
    public final String getMimeType() {
        return i.r(this.getContentType(), null);
    }
    
    @Override
    public final int getSize() {
        return this.gO;
    }
    
    @Override
    public final com.android.emailcommon.mail.c kO() {
        return this.Wc;
    }
    
    @Override
    public final String kP() {
        String x = this.X("Content-Disposition");
        if (x == null) {
            x = null;
        }
        return x;
    }
    
    @Override
    public final String kQ() {
        final String x = this.X("Content-ID");
        if (x == null) {
            return null;
        }
        return c.Wd.matcher(x).replaceAll("$1");
    }
    
    @Override
    public final void setHeader(final String s, final String s2) {
        this.Wb.setHeader(s, s2);
    }
    
    public final void setSize(final int go) {
        this.gO = go;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        this.Wb.writeTo(outputStream);
        bufferedWriter.write("\r\n");
        bufferedWriter.flush();
        if (this.Wc != null) {
            this.Wc.writeTo(outputStream);
        }
    }
}
