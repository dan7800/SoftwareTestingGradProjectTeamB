package org.apache.james.mime4j;

import java.io.*;

final class i extends InputStream
{
    private int cDE;
    private int cDF;
    private boolean cDG;
    private InputStream cDn;
    
    public i(final InputStream cDn) {
        this.cDn = null;
        this.cDE = 1;
        this.cDF = -1;
        this.cDG = false;
        this.cDn = cDn;
    }
    
    public final int getLineNumber() {
        return this.cDE;
    }
    
    @Override
    public final int read() {
        if (this.cDG) {
            return -1;
        }
        final int read = this.cDn.read();
        if (this.cDF == 13 && read == 10) {
            ++this.cDE;
        }
        return this.cDF = read;
    }
    
    @Override
    public final int read(final byte[] array) {
        return this.read(array, 0, array.length);
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        int read;
        if (this.cDG) {
            read = -1;
        }
        else {
            read = this.cDn.read(array, n, n2);
            for (int i = n; i < n + read; ++i) {
                if (this.cDF == 13 && array[i] == 10) {
                    ++this.cDE;
                }
                this.cDF = array[i];
            }
        }
        return read;
    }
}
