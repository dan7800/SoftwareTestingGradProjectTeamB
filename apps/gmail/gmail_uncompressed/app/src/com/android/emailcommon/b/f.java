package com.android.emailcommon.b;

import java.io.*;

public final class f extends FilterOutputStream
{
    int abm;
    
    public f(final OutputStream outputStream) {
        super(outputStream);
    }
    
    @Override
    public final void flush() {
        if (this.abm == 13) {
            super.write(10);
            this.abm = 10;
        }
        super.flush();
    }
    
    @Override
    public final void write(final int abm) {
        if (abm == 10 && this.abm != 13) {
            super.write(13);
        }
        super.write(abm);
        this.abm = abm;
    }
}
