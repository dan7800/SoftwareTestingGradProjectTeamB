package com.google.api.client.http;

import java.nio.charset.*;
import com.google.api.client.util.*;

public abstract class a implements k
{
    private s cwD;
    private long cwE;
    
    protected a(final s cwD) {
        this.cwE = -1L;
        this.cwD = cwD;
    }
    
    protected a(final String s) {
        s s2;
        if (s == null) {
            s2 = null;
        }
        else {
            s2 = new s(s);
        }
        this(s2);
    }
    
    public static long a(final k k) {
        if (!k.Xk()) {
            return -1L;
        }
        return w.b(k);
    }
    
    public final s Xi() {
        return this.cwD;
    }
    
    protected final Charset Xj() {
        if (this.cwD == null || this.cwD.Xx() == null) {
            return j.UTF_8;
        }
        return this.cwD.Xx();
    }
    
    @Override
    public boolean Xk() {
        return true;
    }
    
    @Override
    public final long getLength() {
        if (this.cwE == -1L) {
            this.cwE = a(this);
        }
        return this.cwE;
    }
    
    @Override
    public final String getType() {
        if (this.cwD == null) {
            return null;
        }
        return this.cwD.Xn();
    }
}
