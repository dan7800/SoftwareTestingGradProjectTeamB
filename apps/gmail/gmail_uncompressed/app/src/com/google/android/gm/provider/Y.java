package com.google.android.gm.provider;

import java.io.*;
import java.util.zip.*;

public final class y
{
    private final ByteArrayOutputStream bdB;
    private final Adler32 bdC;
    
    public y() {
        this.bdB = new ByteArrayOutputStream();
        this.bdC = new Adler32();
    }
    
    public final long DV() {
        return this.bdC.getValue();
    }
    
    public final byte[] getBytes() {
        return this.bdB.toByteArray();
    }
    
    public final void h(final byte[] array) {
        this.bdB.write(array, 0, array.length);
        this.bdC.update(array);
    }
    
    public final int size() {
        return this.bdB.size();
    }
}
