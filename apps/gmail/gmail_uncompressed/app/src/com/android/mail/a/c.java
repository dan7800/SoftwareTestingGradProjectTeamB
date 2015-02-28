package com.android.mail.a;

import java.util.*;
import com.google.common.collect.*;
import android.os.*;

public final class c
{
    private static final c akg;
    private final Map<String, Long> akf;
    
    static {
        akg = new c();
    }
    
    private c() {
        this.akf = (Map<String, Long>)Maps.aap();
    }
    
    public static c os() {
        return c.akg;
    }
    
    public final long a(final String s, final boolean b, final String s2, final String s3, final String s4) {
        Long n;
        if (b) {
            n = this.akf.remove(s);
        }
        else {
            n = this.akf.get(s);
        }
        if (n == null) {
            throw new IllegalStateException("Trying to log id that doesn't exist: " + s);
        }
        final long n2 = SystemClock.uptimeMillis() - n;
        a.oq().a(s2, n2, s3, null);
        return n2;
    }
    
    public final void a(final String s, final boolean b, final String s2, final String s3) {
        try {
            this.a(s, b, s2, s3, null);
        }
        catch (IllegalStateException ex) {}
    }
    
    public final void bb(final String s) {
        this.akf.put(s, SystemClock.uptimeMillis());
    }
    
    public final void bc(final String s) {
        this.akf.remove(s);
    }
}
