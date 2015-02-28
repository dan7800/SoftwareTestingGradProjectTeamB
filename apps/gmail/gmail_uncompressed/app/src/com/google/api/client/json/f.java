package com.google.api.client.json;

import com.google.api.client.util.*;
import java.util.*;
import java.io.*;
import java.nio.charset.*;
import com.google.api.client.a.a.a.a.a.*;
import java.lang.reflect.*;

public final class f implements F
{
    private final d cxZ;
    private final Set<String> cyb;
    
    protected f(final g g) {
        this.cxZ = g.cxZ;
        this.cyb = new HashSet<String>(g.cyc);
    }
    
    public final d Xg() {
        return this.cxZ;
    }
    
    public final Set<String> Yd() {
        return Collections.unmodifiableSet((Set<? extends String>)this.cyb);
    }
    
    @Override
    public final <T> T a(final InputStream inputStream, final Charset charset, final Class<T> clazz) {
        boolean b = true;
        final h a = this.cxZ.a(inputStream, charset);
        Label_0072: {
            if (this.cyb.isEmpty()) {
                break Label_0072;
            }
            try {
                if (a.r(this.cyb) == null || a.WG() == JsonToken.cyi) {
                    b = false;
                }
                com.google.api.client.a.a.a.a.a.a.a(b, "wrapper key(s) not found: %s", this.cyb);
                return (T)a.a(clazz);
            }
            finally {
                a.close();
            }
        }
    }
}
