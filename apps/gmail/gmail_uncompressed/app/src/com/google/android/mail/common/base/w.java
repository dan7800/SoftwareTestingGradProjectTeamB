package com.google.android.mail.common.base;

final class w extends j
{
    final /* synthetic */ char cph;
    
    w(final char cph) {
        this.cph = cph;
    }
    
    @Override
    public final j VW() {
        return new x(this.cph);
    }
    
    @Override
    public final j VX() {
        return this;
    }
    
    @Override
    public final j a(final j j) {
        if (j.i(this.cph)) {
            return j;
        }
        return super.a(j);
    }
    
    @Override
    public final String a(final CharSequence charSequence, final char c) {
        return charSequence.toString().replace(this.cph, c);
    }
    
    @Override
    protected final void a(final y y) {
        y.j(this.cph);
    }
    
    @Override
    public final boolean i(final char c) {
        return c == this.cph;
    }
}
