package com.android.email.provider;

import android.accounts.*;

final class v
{
    private final long PJ;
    final /* synthetic */ EmailProvider Tm;
    private final String Tv;
    private final Account Tw;
    
    private v(final EmailProvider tm, final String tv, final Account tw, final long pj) {
        this.Tm = tm;
        this.Tv = tv;
        this.Tw = tw;
        this.PJ = pj;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final v v = (v)o;
            if (!this.Tw.equals((Object)v.Tw) || this.PJ != v.PJ || !this.Tv.equals(v.Tv)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return 31 * (31 * this.Tv.hashCode() + this.Tw.hashCode()) + (int)(this.PJ ^ this.PJ >>> 32);
    }
}
