package com.google.api.client.util;

import java.io.*;

final class g extends OutputStream
{
    long cyB;
    
    @Override
    public final void write(final int n) {
        ++this.cyB;
    }
    
    @Override
    public final void write(final byte[] array, final int n, final int n2) {
        this.cyB += n2;
    }
}
