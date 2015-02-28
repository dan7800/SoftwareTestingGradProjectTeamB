package com.google.android.mail.common.base;

final class n extends j
{
    final /* synthetic */ char cpc;
    final /* synthetic */ char cpd;
    
    n(final char cpc, final char cpd) {
        this.cpc = cpc;
        this.cpd = cpd;
    }
    
    @Override
    public final j VX() {
        return this;
    }
    
    @Override
    protected final void a(final y y) {
        char cpc = this.cpc;
        while (true) {
            y.j(cpc);
            final char c = (char)(cpc + '\u0001');
            if (cpc == this.cpd) {
                break;
            }
            cpc = c;
        }
    }
    
    @Override
    public final boolean i(final char c) {
        return this.cpc <= c && c <= this.cpd;
    }
}
