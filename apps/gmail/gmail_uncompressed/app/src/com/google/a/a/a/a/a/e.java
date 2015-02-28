package com.google.a.a.a.a.a;

import com.google.android.gms.internal.*;

public final class e extends dm<e>
{
    private static volatile e[] cDa;
    public String key;
    public String value;
    
    public e() {
        this.key = "";
        this.value = "";
        this.bZR = null;
        this.cac = -1;
    }
    
    public static e[] aau() {
        Label_0027: {
            if (e.cDa != null) {
                break Label_0027;
            }
            synchronized (ds.cab) {
                if (e.cDa == null) {
                    e.cDa = new e[0];
                }
                return e.cDa;
            }
        }
    }
    
    @Override
    protected final int Ma() {
        int ma = super.Ma();
        if (!this.key.equals("")) {
            ma += vx.h(1, this.key);
        }
        if (!this.value.equals("")) {
            ma += vx.h(2, this.value);
        }
        return ma;
    }
    
    @Override
    public final void a(final vx vx) {
        if (!this.key.equals("")) {
            vx.g(1, this.key);
        }
        if (!this.value.equals("")) {
            vx.g(2, this.value);
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
            final boolean b2 = o instanceof e;
            b = false;
            if (b2) {
                final e e = (e)o;
                if (this.key == null) {
                    final String key = e.key;
                    b = false;
                    if (key != null) {
                        return b;
                    }
                }
                else if (!this.key.equals(e.key)) {
                    return false;
                }
                if (this.value == null) {
                    final String value = e.value;
                    b = false;
                    if (value != null) {
                        return b;
                    }
                }
                else if (!this.value.equals(e.value)) {
                    return false;
                }
                return this.a(e);
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        int hashCode;
        if (this.key == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.key.hashCode();
        }
        final int n = 31 * (hashCode + 527);
        final String value = this.value;
        int hashCode2 = 0;
        if (value != null) {
            hashCode2 = this.value.hashCode();
        }
        return 31 * (n + hashCode2) + this.SN();
    }
}
