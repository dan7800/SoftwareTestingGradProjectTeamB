package com.google.api.client.util;

import java.io.*;
import java.util.logging.*;

public final class z extends FilterInputStream
{
    private final y czD;
    
    public z(final InputStream inputStream, final Logger logger, final Level level, final int n) {
        super(inputStream);
        this.czD = new y(logger, level, n);
    }
    
    @Override
    public final void close() {
        this.czD.close();
        super.close();
    }
    
    @Override
    public final int read() {
        final int read = super.read();
        this.czD.write(read);
        return read;
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int n2) {
        final int read = super.read(array, n, n2);
        if (read > 0) {
            this.czD.write(array, n, read);
        }
        return read;
    }
}
