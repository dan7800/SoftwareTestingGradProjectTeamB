package com.google.api.client.util;

import com.google.api.client.a.a.a.a.a.*;
import java.io.*;

final class i extends FilterInputStream
{
    private long cyC;
    private long cyD;
    
    i(final InputStream inputStream, final long cyC) {
        super(inputStream);
        this.cyD = -1L;
        a.ak(inputStream);
        H.c(cyC >= 0L, "limit must be non-negative");
        this.cyC = cyC;
    }
    
    @Override
    public final int available() {
        return (int)Math.min(this.in.available(), this.cyC);
    }
    
    @Override
    public final void mark(final int n) {
        synchronized (this) {
            this.in.mark(n);
            this.cyD = this.cyC;
        }
    }
    
    @Override
    public final int read() {
        if (this.cyC == 0L) {
            return -1;
        }
        final int read = this.in.read();
        if (read != -1) {
            --this.cyC;
        }
        return read;
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        if (this.cyC == 0L) {
            return -1;
        }
        final int read = this.in.read(array, n, (int)Math.min(n2, this.cyC));
        if (read != -1) {
            this.cyC -= read;
        }
        return read;
    }
    
    @Override
    public final void reset() {
        synchronized (this) {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            }
        }
        if (this.cyD == -1L) {
            throw new IOException("Mark not set");
        }
        this.in.reset();
        this.cyC = this.cyD;
    }
    // monitorexit(this)
    
    @Override
    public final long skip(final long n) {
        final long skip = this.in.skip(Math.min(n, this.cyC));
        this.cyC -= skip;
        return skip;
    }
}
