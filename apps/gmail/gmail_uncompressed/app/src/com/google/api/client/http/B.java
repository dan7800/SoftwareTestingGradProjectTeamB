package com.google.api.client.http;

import java.io.*;
import com.google.api.client.util.*;

public abstract class b implements k
{
    private boolean cwF;
    private String type;
    
    public b(final String s) {
        this.cwF = true;
        this.hc(s);
    }
    
    public final boolean Xl() {
        return this.cwF;
    }
    
    public b cn(final boolean cwF) {
        this.cwF = cwF;
        return this;
    }
    
    public abstract InputStream getInputStream();
    
    @Override
    public final String getType() {
        return this.type;
    }
    
    public b hc(final String type) {
        this.type = type;
        return this;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        w.a(this.getInputStream(), outputStream, this.cwF);
        outputStream.flush();
    }
}
