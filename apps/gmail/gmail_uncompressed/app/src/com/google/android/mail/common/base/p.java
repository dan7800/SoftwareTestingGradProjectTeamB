package com.google.android.mail.common.base;

final class p extends j
{
    final /* synthetic */ j cpf;
    final /* synthetic */ y cpg;
    
    p(final j cpf, final y cpg) {
        this.cpf = cpf;
        this.cpg = cpg;
    }
    
    @Override
    public final j VX() {
        return this;
    }
    
    @Override
    public final boolean i(final char c) {
        return (this.cpg.cpi[c >> 5] & 1 << c) != 0x0;
    }
}
