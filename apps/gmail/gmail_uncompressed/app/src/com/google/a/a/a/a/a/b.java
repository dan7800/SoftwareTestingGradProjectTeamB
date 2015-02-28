package com.google.a.a.a.a.a;

import com.google.android.gms.internal.*;

public final class b extends dm<b>
{
    public String[] cCK;
    public String[] cCL;
    public int[] cCM;
    
    public b() {
        this.cCK = dw.cai;
        this.cCL = dw.cai;
        this.cCM = dw.cad;
        this.bZR = null;
        this.cac = -1;
    }
    
    @Override
    protected final int Ma() {
        int i = 0;
        final int ma = super.Ma();
        int n3;
        if (this.cCK != null && this.cCK.length > 0) {
            int j = 0;
            int n = 0;
            int n2 = 0;
            while (j < this.cCK.length) {
                final String s = this.cCK[j];
                if (s != null) {
                    ++n2;
                    n += vx.gv(s);
                }
                ++j;
            }
            n3 = ma + n + n2 * 1;
        }
        else {
            n3 = ma;
        }
        if (this.cCL != null && this.cCL.length > 0) {
            int k = 0;
            int n4 = 0;
            int n5 = 0;
            while (k < this.cCL.length) {
                final String s2 = this.cCL[k];
                if (s2 != null) {
                    ++n5;
                    n4 += vx.gv(s2);
                }
                ++k;
            }
            n3 = n3 + n4 + n5 * 1;
        }
        if (this.cCM != null && this.cCM.length > 0) {
            int n6 = 0;
            while (i < this.cCM.length) {
                n6 += vx.eH(this.cCM[i]);
                ++i;
            }
            n3 = n3 + n6 + 1 * this.cCM.length;
        }
        return n3;
    }
    
    @Override
    public final void a(final vx vx) {
        if (this.cCK != null && this.cCK.length > 0) {
            for (int i = 0; i < this.cCK.length; ++i) {
                final String s = this.cCK[i];
                if (s != null) {
                    vx.g(1, s);
                }
            }
        }
        if (this.cCL != null && this.cCL.length > 0) {
            for (int j = 0; j < this.cCL.length; ++j) {
                final String s2 = this.cCL[j];
                if (s2 != null) {
                    vx.g(2, s2);
                }
            }
        }
        if (this.cCM != null) {
            final int length = this.cCM.length;
            int k = 0;
            if (length > 0) {
                while (k < this.cCM.length) {
                    vx.Z(3, this.cCM[k]);
                    ++k;
                }
            }
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
            final boolean b2 = o instanceof b;
            b = false;
            if (b2) {
                final b b3 = (b)o;
                final boolean equals = ds.equals(this.cCK, b3.cCK);
                b = false;
                if (equals) {
                    final boolean equals2 = ds.equals(this.cCL, b3.cCL);
                    b = false;
                    if (equals2) {
                        final boolean equals3 = ds.equals(this.cCM, b3.cCM);
                        b = false;
                        if (equals3) {
                            return this.a(b3);
                        }
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        return 31 * (31 * (31 * (527 + ds.hashCode(this.cCK)) + ds.hashCode(this.cCL)) + ds.hashCode(this.cCM)) + this.SN();
    }
}
