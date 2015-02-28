package com.google.android.mail.common.base;

final class x extends j
{
    final /* synthetic */ char cph;
    
    x(final char cph) {
        this.cph = cph;
    }
    
    @Override
    public final j VW() {
        return j.h(this.cph);
    }
    
    @Override
    public final j a(final j j) {
        final j coX;
        if (j.i(this.cph)) {
            coX = x.coX;
        }
        return coX;
    }
    
    @Override
    public final boolean i(final char c) {
        return c != this.cph;
    }
}
