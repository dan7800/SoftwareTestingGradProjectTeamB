package com.android.email;

import java.io.*;

public final class k extends InputStream
{
    private final InputStream LP;
    private int LQ;
    private final int mLength;
    
    public k(final InputStream lp, final int mLength) {
        this.LP = lp;
        this.mLength = mLength;
    }
    
    @Override
    public final int available() {
        return this.mLength - this.LQ;
    }
    
    public final int getLength() {
        return this.mLength;
    }
    
    @Override
    public final int read() {
        if (this.LQ < this.mLength) {
            ++this.LQ;
            return this.LP.read();
        }
        return -1;
    }
    
    @Override
    public final int read(final byte[] array) {
        return this.read(array, 0, array.length);
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        if (this.LQ < this.mLength) {
            final int read = this.LP.read(array, n, Math.min(this.mLength - this.LQ, n2));
            if (read != -1) {
                this.LQ += read;
                return read;
            }
        }
        return -1;
    }
    
    @Override
    public final String toString() {
        return String.format("FixedLengthInputStream(in=%s, length=%d)", this.LP.toString(), this.mLength);
    }
}
