package com.android.mail.utils;

import android.net.*;

public final class p
{
    public static final p aPi;
    public final Uri aPj;
    private Uri aPk;
    
    static {
        aPi = new p(Uri.EMPTY);
    }
    
    public p(final Uri aPj) {
        this.aPk = null;
        this.aPj = aPj;
    }
    
    public final Uri AR() {
        if (this.aPk == null) {
            final Uri aPj = this.aPj;
            final Uri$Builder uri$Builder = new Uri$Builder();
            uri$Builder.scheme(aPj.getScheme());
            uri$Builder.encodedAuthority(aPj.getEncodedAuthority());
            uri$Builder.encodedPath(aPj.getEncodedPath());
            this.aPk = uri$Builder.build();
        }
        return this.aPk;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof p) {
            return this.AR().equals((Object)((p)o).AR());
        }
        return this.AR().equals(o);
    }
    
    @Override
    public final int hashCode() {
        return this.AR().hashCode();
    }
    
    @Override
    public final String toString() {
        return this.aPj.toString();
    }
}
