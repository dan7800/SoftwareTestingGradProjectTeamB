package com.google.android.gms.internal;

public abstract class dm<M extends dm<M>> extends dt
{
    protected dp bZR;
    
    @Override
    protected int Ma() {
        int i = 0;
        int n;
        if (this.bZR != null) {
            n = 0;
            while (i < this.bZR.size()) {
                n += this.bZR.eM(i).Ma();
                ++i;
            }
        }
        else {
            n = 0;
        }
        return n;
    }
    
    protected final int SN() {
        if (this.bZR == null || this.bZR.isEmpty()) {
            return 0;
        }
        return this.bZR.hashCode();
    }
    
    @Override
    public void a(final vx vx) {
        if (this.bZR != null) {
            for (int i = 0; i < this.bZR.size(); ++i) {
                this.bZR.eM(i).a(vx);
            }
        }
    }
    
    protected final boolean a(final M m) {
        if (this.bZR == null || this.bZR.isEmpty()) {
            return m.bZR == null || m.bZR.isEmpty();
        }
        return this.bZR.equals(m.bZR);
    }
}
