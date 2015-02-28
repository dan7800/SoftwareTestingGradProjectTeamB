package com.google.api.client.http;

import com.google.api.client.a.a.a.a.a.*;
import java.io.*;

public final class d extends b
{
    private final byte[] cwG;
    private final int length;
    private final int offset;
    
    public d(final String s, final byte[] array, final int length) {
        super(s);
        this.cwG = a.ak(array);
        a.a(length >= 0 && length + 0 <= array.length, "offset %s, length %s, array length %s", 0, length, array.length);
        this.offset = 0;
        this.length = length;
    }
    
    @Override
    public final boolean Xk() {
        return true;
    }
    
    @Override
    public final InputStream getInputStream() {
        return new ByteArrayInputStream(this.cwG, this.offset, this.length);
    }
    
    @Override
    public final long getLength() {
        return this.length;
    }
}
