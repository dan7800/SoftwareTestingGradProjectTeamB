package com.google.common.base;

import java.io.*;

public final class f
{
    private final StringBuilder czU;
    private boolean czV;
    
    private f(final String s) {
        this.czV = false;
        i.ak(s);
        this.czU = new StringBuilder(32).append(s).append('{');
    }
    
    private StringBuilder YL() {
        if (this.czV) {
            return this.czU.append(", ");
        }
        this.czV = true;
        return this.czU;
    }
    
    private StringBuilder hO(final String s) {
        i.ak(s);
        return this.YL().append(s).append('=');
    }
    
    public final f A(final String s, final Object o) {
        this.hO(s).append(o);
        return this;
    }
    
    public final f az(final Object o) {
        this.YL().append(o);
        return this;
    }
    
    public final f r(final String s, final int n) {
        this.hO(s).append(n);
        return this;
    }
    
    @Override
    public final String toString() {
        try {
            return this.czU.append('}').toString();
        }
        finally {
            this.czU.setLength(-1 + this.czU.length());
        }
    }
}
