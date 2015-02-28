package com.google.api.client.http;

import java.io.*;
import com.google.api.client.a.a.a.a.a.*;

public final class C extends b
{
    private long cxE;
    private boolean cxF;
    private final InputStream cxG;
    
    public C(final String s, final InputStream inputStream) {
        super(s);
        this.cxE = -1L;
        this.cxG = a.ak(inputStream);
    }
    
    public final C XU() {
        this.cxF = true;
        return this;
    }
    
    @Override
    public final boolean Xk() {
        return this.cxF;
    }
    
    public final C be(final long cxE) {
        this.cxE = cxE;
        return this;
    }
    
    public final C co(final boolean b) {
        return (C)super.cn(b);
    }
    
    @Override
    public final InputStream getInputStream() {
        return this.cxG;
    }
    
    @Override
    public final long getLength() {
        return this.cxE;
    }
}
