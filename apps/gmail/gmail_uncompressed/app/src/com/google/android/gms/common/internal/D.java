package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.*;

public abstract class d implements SafeParcelable
{
    private static final Object bEO;
    private static ClassLoader bEP;
    private static Integer bEQ;
    private boolean bER;
    
    static {
        bEO = new Object();
        d.bEP = null;
        d.bEQ = null;
    }
    
    public d() {
        this.bER = false;
    }
    
    private static ClassLoader KX() {
        synchronized (d.bEO) {
            return d.bEP;
        }
    }
    
    protected static Integer KY() {
        synchronized (d.bEO) {
            return d.bEQ;
        }
    }
    
    private static boolean c(final Class<?> clazz) {
        try {
            return "SAFE_PARCELABLE_NULL_STRING".equals(clazz.getField("NULL").get(null));
        }
        catch (IllegalAccessException ex) {
            return false;
        }
        catch (NoSuchFieldException ex2) {
            return false;
        }
    }
    
    protected static boolean fU(final String s) {
        final ClassLoader kx = KX();
        if (kx == null) {
            return true;
        }
        try {
            return c(kx.loadClass(s));
        }
        catch (Exception ex) {
            return false;
        }
    }
    
    protected final boolean KZ() {
        return this.bER;
    }
}
