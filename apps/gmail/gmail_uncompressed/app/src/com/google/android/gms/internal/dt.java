package com.google.android.gms.internal;

import java.io.*;

public abstract class dt
{
    protected volatile int cac;
    
    public dt() {
        this.cac = -1;
    }
    
    public static final byte[] b(final dt dt) {
        final byte[] array = new byte[dt.SP()];
        final int length = array.length;
        try {
            final vx a = vx.a(array, 0, length);
            dt.a(a);
            a.SM();
            return array;
        }
        catch (IOException ex) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", ex);
        }
    }
    
    protected int Ma() {
        return 0;
    }
    
    public final int SO() {
        if (this.cac < 0) {
            this.SP();
        }
        return this.cac;
    }
    
    public final int SP() {
        return this.cac = this.Ma();
    }
    
    public void a(final vx vx) {
    }
    
    @Override
    public String toString() {
        return du.c(this);
    }
}
