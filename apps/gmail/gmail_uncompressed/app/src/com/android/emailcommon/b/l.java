package com.android.emailcommon.b;

import com.android.emailcommon.*;
import com.android.mail.utils.*;
import java.io.*;

public final class l extends FilterInputStream
{
    private final String aK;
    private StringBuilder abu;
    private boolean abv;
    
    public l(final InputStream inputStream) {
        this(inputStream, "RAW");
    }
    
    private l(final InputStream inputStream, final String s) {
        super(inputStream);
        this.aK = s + " ";
        this.abv = false;
        this.jR();
        E.c(b.mW, this.aK + "dump start", new Object[0]);
    }
    
    private void bm(final int n) {
        if (n != 13) {
            if (n == 10) {
                this.mg();
            }
            else {
                if (32 <= n && n <= 126) {
                    this.abu.append((char)n);
                    return;
                }
                this.abu.append("\\x" + s.bn(n));
            }
        }
    }
    
    private void jR() {
        this.abu = new StringBuilder(this.aK);
    }
    
    private void mg() {
        if (this.abv || this.abu.length() > this.aK.length()) {
            E.c(b.mW, this.abu.toString(), new Object[0]);
            this.jR();
        }
    }
    
    @Override
    public final void close() {
        super.close();
        this.mg();
    }
    
    @Override
    public final int read() {
        final int read = super.read();
        this.bm(read);
        return read;
    }
    
    @Override
    public final int read(final byte[] array, int n, final int n2) {
        int i;
        int n3;
        for (n3 = (i = super.read(array, n, n2)); i > 0; --i, ++n) {
            this.bm(0xFF & array[n]);
        }
        return n3;
    }
}
