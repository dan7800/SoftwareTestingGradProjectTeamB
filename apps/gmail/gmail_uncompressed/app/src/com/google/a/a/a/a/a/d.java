package com.google.a.a.a.a.a;

import java.util.*;
import com.google.android.gms.internal.*;

public final class d extends dm<d>
{
    public long cCP;
    public int cCQ;
    public int cCR;
    public boolean cCS;
    public e[] cCT;
    public c cCU;
    public byte[] cCV;
    public byte[] cCW;
    public byte[] cCX;
    public b cCY;
    public String cCZ;
    public String tag;
    
    public d() {
        this.cCP = 0L;
        this.tag = "";
        this.cCQ = 0;
        this.cCR = 0;
        this.cCS = false;
        this.cCT = e.aau();
        this.cCU = null;
        this.cCV = dw.cak;
        this.cCW = dw.cak;
        this.cCX = dw.cak;
        this.cCY = null;
        this.cCZ = "";
        this.bZR = null;
        this.cac = -1;
    }
    
    @Override
    protected final int Ma() {
        int ma = super.Ma();
        if (this.cCP != 0L) {
            ma += vx.aZ(this.cCP);
        }
        if (!this.tag.equals("")) {
            ma += vx.h(2, this.tag);
        }
        if (this.cCT != null && this.cCT.length > 0) {
            int n = ma;
            for (int i = 0; i < this.cCT.length; ++i) {
                final e e = this.cCT[i];
                if (e != null) {
                    n += vx.b(3, e);
                }
            }
            ma = n;
        }
        if (!Arrays.equals(this.cCV, dw.cak)) {
            ma += vx.b(6, this.cCV);
        }
        if (this.cCY != null) {
            ma += vx.b(7, this.cCY);
        }
        if (!Arrays.equals(this.cCW, dw.cak)) {
            ma += vx.b(8, this.cCW);
        }
        if (this.cCU != null) {
            ma += vx.b(9, this.cCU);
        }
        if (this.cCS) {
            final boolean ccs = this.cCS;
            ma += vx.SL();
        }
        if (this.cCQ != 0) {
            ma += vx.aa(11, this.cCQ);
        }
        if (this.cCR != 0) {
            ma += vx.aa(12, this.cCR);
        }
        if (!Arrays.equals(this.cCX, dw.cak)) {
            ma += vx.b(13, this.cCX);
        }
        if (!this.cCZ.equals("")) {
            ma += vx.h(14, this.cCZ);
        }
        return ma;
    }
    
    @Override
    public final void a(final vx vx) {
        if (this.cCP != 0L) {
            vx.aY(this.cCP);
        }
        if (!this.tag.equals("")) {
            vx.g(2, this.tag);
        }
        if (this.cCT != null && this.cCT.length > 0) {
            for (int i = 0; i < this.cCT.length; ++i) {
                final e e = this.cCT[i];
                if (e != null) {
                    vx.a(3, e);
                }
            }
        }
        if (!Arrays.equals(this.cCV, dw.cak)) {
            vx.a(6, this.cCV);
        }
        if (this.cCY != null) {
            vx.a(7, this.cCY);
        }
        if (!Arrays.equals(this.cCW, dw.cak)) {
            vx.a(8, this.cCW);
        }
        if (this.cCU != null) {
            vx.a(9, this.cCU);
        }
        if (this.cCS) {
            vx.ck(this.cCS);
        }
        if (this.cCQ != 0) {
            vx.Z(11, this.cCQ);
        }
        if (this.cCR != 0) {
            vx.Z(12, this.cCR);
        }
        if (!Arrays.equals(this.cCX, dw.cak)) {
            vx.a(13, this.cCX);
        }
        if (!this.cCZ.equals("")) {
            vx.g(14, this.cCZ);
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
            final boolean b2 = o instanceof d;
            b = false;
            if (b2) {
                final d d = (d)o;
                final long n = lcmp(this.cCP, d.cCP);
                b = false;
                if (n == 0) {
                    if (this.tag == null) {
                        final String tag = d.tag;
                        b = false;
                        if (tag != null) {
                            return b;
                        }
                    }
                    else if (!this.tag.equals(d.tag)) {
                        return false;
                    }
                    final int ccq = this.cCQ;
                    final int ccq2 = d.cCQ;
                    b = false;
                    if (ccq == ccq2) {
                        final int ccr = this.cCR;
                        final int ccr2 = d.cCR;
                        b = false;
                        if (ccr == ccr2) {
                            final boolean ccs = this.cCS;
                            final boolean ccs2 = d.cCS;
                            b = false;
                            if (ccs == ccs2) {
                                final boolean equals = ds.equals(this.cCT, d.cCT);
                                b = false;
                                if (equals) {
                                    if (this.cCU == null) {
                                        final c ccu = d.cCU;
                                        b = false;
                                        if (ccu != null) {
                                            return b;
                                        }
                                    }
                                    else if (!this.cCU.equals(d.cCU)) {
                                        return false;
                                    }
                                    final boolean equals2 = Arrays.equals(this.cCV, d.cCV);
                                    b = false;
                                    if (equals2) {
                                        final boolean equals3 = Arrays.equals(this.cCW, d.cCW);
                                        b = false;
                                        if (equals3) {
                                            final boolean equals4 = Arrays.equals(this.cCX, d.cCX);
                                            b = false;
                                            if (equals4) {
                                                if (this.cCY == null) {
                                                    final b ccy = d.cCY;
                                                    b = false;
                                                    if (ccy != null) {
                                                        return b;
                                                    }
                                                }
                                                else if (!this.cCY.equals(d.cCY)) {
                                                    return false;
                                                }
                                                if (this.cCZ == null) {
                                                    final String ccz = d.cCZ;
                                                    b = false;
                                                    if (ccz != null) {
                                                        return b;
                                                    }
                                                }
                                                else if (!this.cCZ.equals(d.cCZ)) {
                                                    return false;
                                                }
                                                return this.a(d);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        final int n = 31 * (527 + (int)(this.cCP ^ this.cCP >>> 32));
        int hashCode;
        if (this.tag == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.tag.hashCode();
        }
        final int n2 = 31 * (31 * (31 * (hashCode + n) + this.cCQ) + this.cCR);
        int n3;
        if (this.cCS) {
            n3 = 1231;
        }
        else {
            n3 = 1237;
        }
        final int n4 = 31 * (31 * (n3 + n2) + ds.hashCode(this.cCT));
        int hashCode2;
        if (this.cCU == null) {
            hashCode2 = 0;
        }
        else {
            hashCode2 = this.cCU.hashCode();
        }
        final int n5 = 31 * (31 * (31 * (31 * (hashCode2 + n4) + Arrays.hashCode(this.cCV)) + Arrays.hashCode(this.cCW)) + Arrays.hashCode(this.cCX));
        int hashCode3;
        if (this.cCY == null) {
            hashCode3 = 0;
        }
        else {
            hashCode3 = this.cCY.hashCode();
        }
        final int n6 = 31 * (hashCode3 + n5);
        final String ccz = this.cCZ;
        int hashCode4 = 0;
        if (ccz != null) {
            hashCode4 = this.cCZ.hashCode();
        }
        return 31 * (n6 + hashCode4) + this.SN();
    }
}
