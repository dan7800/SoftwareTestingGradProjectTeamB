package com.google.android.mail.common.base;

final class o extends j
{
    final /* synthetic */ j cpe;
    final /* synthetic */ j cpf;
    
    o(final j cpf, final j cpe) {
        this.cpf = cpf;
        this.cpe = cpe;
    }
    
    @Override
    public final j VW() {
        return this.cpe;
    }
    
    @Override
    public final boolean i(final char c) {
        return !this.cpe.i(c);
    }
}
