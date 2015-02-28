package com.android.emailcommon.b;

import java.io.*;

public final class e extends OutputStream
{
    private long abk;
    private final OutputStream abl;
    
    public e(final OutputStream abl) {
        this.abl = abl;
    }
    
    public final long getCount() {
        return this.abk;
    }
    
    @Override
    public final void write(final int n) {
        this.abl.write(n);
        ++this.abk;
    }
    
    @Override
    public final void write(final byte[] array, final int n, final int n2) {
        this.abl.write(array, n, n2);
        this.abk += n2;
    }
}
