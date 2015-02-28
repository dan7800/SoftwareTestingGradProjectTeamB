package com.google.a.a.a.a.a;

import com.google.android.gms.internal.*;

public final class c extends dm<c>
{
    public int cCN;
    public String cCO;
    public String version;
    
    public c() {
        this.cCN = 0;
        this.cCO = "";
        this.version = "";
        this.bZR = null;
        this.cac = -1;
    }
    
    @Override
    protected final int Ma() {
        int ma = super.Ma();
        if (this.cCN != 0) {
            ma += vx.aa(1, this.cCN);
        }
        if (!this.cCO.equals("")) {
            ma += vx.h(2, this.cCO);
        }
        if (!this.version.equals("")) {
            ma += vx.h(3, this.version);
        }
        return ma;
    }
    
    @Override
    public final void a(final vx vx) {
        if (this.cCN != 0) {
            vx.Z(1, this.cCN);
        }
        if (!this.cCO.equals("")) {
            vx.g(2, this.cCO);
        }
        if (!this.version.equals("")) {
            vx.g(3, this.version);
        }
        super.a(vx);
    }
    
    @Override
    public final boolean equals(final Object o) {
        boolean b;
        if (o == this) {
            b = true;
        }
        else {
            final boolean b2 = o instanceof c;
            b = false;
            if (b2) {
                final c c = (c)o;
                final int ccn = this.cCN;
                final int ccn2 = c.cCN;
                b = false;
                if (ccn == ccn2) {
                    if (this.cCO == null) {
                        final String cco = c.cCO;
                        b = false;
                        if (cco != null) {
                            return b;
                        }
                    }
                    else if (!this.cCO.equals(c.cCO)) {
                        return false;
                    }
                    if (this.version == null) {
                        final String version = c.version;
                        b = false;
                        if (version != null) {
                            return b;
                        }
                    }
                    else if (!this.version.equals(c.version)) {
                        return false;
                    }
                    return this.a(c);
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        final int n = 31 * (527 + this.cCN);
        int hashCode;
        if (this.cCO == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.cCO.hashCode();
        }
        final int n2 = 31 * (hashCode + n);
        final String version = this.version;
        int hashCode2 = 0;
        if (version != null) {
            hashCode2 = this.version.hashCode();
        }
        return 31 * (n2 + hashCode2) + this.SN();
    }
}
