package com.android.email;

import java.io.*;

public final class q extends InputStream
{
    private final InputStream LP;
    private boolean LT;
    private int LU;
    
    public q(final InputStream lp) {
        this.LP = lp;
    }
    
    public final int gS() {
        if (!this.LT) {
            this.LU = this.read();
            this.LT = true;
        }
        return this.LU;
    }
    
    @Override
    public final int read() {
        if (!this.LT) {
            return this.LP.read();
        }
        this.LT = false;
        return this.LU;
    }
    
    @Override
    public final int read(final byte[] array) {
        return this.read(array, 0, array.length);
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        if (!this.LT) {
            return this.LP.read(array, n, n2);
        }
        array[0] = (byte)this.LU;
        this.LT = false;
        final int read = this.LP.read(array, n + 1, n2 - 1);
        if (read == -1) {
            return 1;
        }
        return read + 1;
    }
    
    @Override
    public final String toString() {
        return String.format("PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)", this.LP.toString(), this.LT, this.LU);
    }
}
