package android.support.v4.f;

import android.util.*;
import java.io.*;

public final class e extends Writer
{
    private final String aK;
    private StringBuilder gJ;
    
    public e(final String ak) {
        this.gJ = new StringBuilder(128);
        this.aK = ak;
    }
    
    private void aP() {
        if (this.gJ.length() > 0) {
            Log.d(this.aK, this.gJ.toString());
            this.gJ.delete(0, this.gJ.length());
        }
    }
    
    @Override
    public final void close() {
        this.aP();
    }
    
    @Override
    public final void flush() {
        this.aP();
    }
    
    @Override
    public final void write(final char[] array, final int n, final int n2) {
        for (int i = 0; i < n2; ++i) {
            final char c = array[n + i];
            if (c == '\n') {
                this.aP();
            }
            else {
                this.gJ.append(c);
            }
        }
    }
}
