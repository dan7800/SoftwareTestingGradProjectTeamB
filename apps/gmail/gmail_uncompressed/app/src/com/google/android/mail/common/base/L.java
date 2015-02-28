package com.google.android.mail.common.base;

final class l extends j
{
    final /* synthetic */ char coZ;
    final /* synthetic */ char cpa;
    
    l(final char coZ, final char cpa) {
        this.coZ = coZ;
        this.cpa = cpa;
    }
    
    @Override
    public final j VX() {
        return this;
    }
    
    @Override
    protected final void a(final y y) {
        y.j(this.coZ);
        y.j(this.cpa);
    }
    
    @Override
    public final boolean i(final char c) {
        return c == this.coZ || c == this.cpa;
    }
}
