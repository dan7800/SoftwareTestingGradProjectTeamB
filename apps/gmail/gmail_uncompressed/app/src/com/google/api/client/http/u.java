package com.google.api.client.http;

public final class u
{
    private final A cwo;
    private final v cxx;
    
    u(final A cwo, final v cxx) {
        this.cwo = cwo;
        this.cxx = cxx;
    }
    
    public final t a(final String s, final j j, final k k) {
        final t xt = this.cwo.XT();
        if (this.cxx != null) {
            this.cxx.a(xt);
        }
        xt.hp(s);
        if (j != null) {
            xt.e(j);
        }
        if (k != null) {
            xt.b(k);
        }
        return xt;
    }
}
