package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.*;

public final class n extends dm<n>
{
    public String bHK;
    public long bHL;
    public long bHM;
    public int versionCode;
    
    public n() {
        this.versionCode = 1;
        this.bHK = "";
        this.bHL = -1L;
        this.bHM = -1L;
        this.bZR = null;
        this.cac = -1;
    }
    
    @Override
    protected final int Ma() {
        return super.Ma() + vx.aa(1, this.versionCode) + vx.h(2, this.bHK) + vx.b(3, this.bHL) + vx.b(4, this.bHM);
    }
    
    @Override
    public final void a(final vx vx) {
        vx.Z(1, this.versionCode);
        vx.g(2, this.bHK);
        vx.a(3, this.bHL);
        vx.a(4, this.bHM);
        super.a(vx);
    }
    
    @Override
    public final boolean equals(final Object o) {
        boolean b;
        if (o == this) {
            b = true;
        }
        else {
            final boolean b2 = o instanceof n;
            b = false;
            if (b2) {
                final n n = (n)o;
                final int versionCode = this.versionCode;
                final int versionCode2 = n.versionCode;
                b = false;
                if (versionCode == versionCode2) {
                    if (this.bHK == null) {
                        final String bhk = n.bHK;
                        b = false;
                        if (bhk != null) {
                            return b;
                        }
                    }
                    else if (!this.bHK.equals(n.bHK)) {
                        return false;
                    }
                    final long n2 = lcmp(this.bHL, n.bHL);
                    b = false;
                    if (n2 == 0) {
                        final long n3 = lcmp(this.bHM, n.bHM);
                        b = false;
                        if (n3 == 0) {
                            return this.a(n);
                        }
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        final int n = 31 * (527 + this.versionCode);
        int hashCode;
        if (this.bHK == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.bHK.hashCode();
        }
        return 31 * (31 * (31 * (hashCode + n) + (int)(this.bHL ^ this.bHL >>> 32)) + (int)(this.bHM ^ this.bHM >>> 32)) + this.SN();
    }
}
