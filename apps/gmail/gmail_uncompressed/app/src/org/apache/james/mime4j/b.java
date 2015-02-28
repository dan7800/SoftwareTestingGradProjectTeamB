package org.apache.james.mime4j;

import java.io.*;

public final class b extends InputStream
{
    private InputStream cDn;
    
    public b(final InputStream cDn) {
        this.cDn = cDn;
    }
    
    private void aaA() {
        if (this.cDn == null) {
            throw new IOException("Stream is closed");
        }
    }
    
    @Override
    public final int available() {
        this.aaA();
        return this.cDn.available();
    }
    
    @Override
    public final void close() {
        this.cDn = null;
    }
    
    @Override
    public final void mark(final int n) {
        synchronized (this) {
            if (this.cDn != null) {
                this.cDn.mark(n);
            }
        }
    }
    
    @Override
    public final boolean markSupported() {
        return this.cDn != null && this.cDn.markSupported();
    }
    
    @Override
    public final int read() {
        this.aaA();
        return this.cDn.read();
    }
    
    @Override
    public final int read(final byte[] array) {
        this.aaA();
        return this.cDn.read(array);
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        this.aaA();
        return this.cDn.read(array, n, n2);
    }
    
    @Override
    public final void reset() {
        synchronized (this) {
            this.aaA();
            this.cDn.reset();
        }
    }
    
    @Override
    public final long skip(final long n) {
        this.aaA();
        return this.cDn.skip(n);
    }
}
