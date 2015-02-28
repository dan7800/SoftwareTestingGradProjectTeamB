package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.*;
import android.net.*;
import java.util.*;

public abstract class h
{
    protected final DataHolder bDT;
    protected int bEo;
    private int bEp;
    
    public h(final DataHolder dataHolder, final int bEo) {
        this.bDT = G.ae(dataHolder);
        G.cc(bEo >= 0 && bEo < this.bDT.getCount());
        this.bEo = bEo;
        this.bEp = this.bDT.ex(this.bEo);
    }
    
    protected final int KP() {
        return this.bEo;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof h;
        boolean b2 = false;
        if (b) {
            final h h = (h)o;
            final boolean b3 = E.b(h.bEo, this.bEo);
            b2 = false;
            if (b3) {
                final boolean b4 = E.b(h.bEp, this.bEp);
                b2 = false;
                if (b4) {
                    final DataHolder bdt = h.bDT;
                    final DataHolder bdt2 = this.bDT;
                    b2 = false;
                    if (bdt == bdt2) {
                        b2 = true;
                    }
                }
            }
        }
        return b2;
    }
    
    public final boolean fR(final String s) {
        return this.bDT.fR(s);
    }
    
    protected final Uri fS(final String s) {
        return this.bDT.h(s, this.bEo, this.bEp);
    }
    
    protected final boolean fT(final String s) {
        return this.bDT.i(s, this.bEo, this.bEp);
    }
    
    protected boolean getBoolean(final String s) {
        return this.bDT.d(s, this.bEo, this.bEp);
    }
    
    protected final byte[] getByteArray(final String s) {
        return this.bDT.g(s, this.bEo, this.bEp);
    }
    
    protected double getDouble(final String s) {
        return this.bDT.f(s, this.bEo, this.bEp);
    }
    
    protected float getFloat(final String s) {
        return this.bDT.e(s, this.bEo, this.bEp);
    }
    
    protected int getInteger(final String s) {
        return this.bDT.b(s, this.bEo, this.bEp);
    }
    
    protected long getLong(final String s) {
        return this.bDT.a(s, this.bEo, this.bEp);
    }
    
    protected final String getString(final String s) {
        return this.bDT.c(s, this.bEo, this.bEp);
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bEo, this.bEp, this.bDT });
    }
}
