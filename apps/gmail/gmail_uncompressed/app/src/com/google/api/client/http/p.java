package com.google.api.client.http;

final class p extends D
{
    private final o cwR;
    private final q cwS;
    
    p(final o cwR, final q cwS) {
        this.cwR = cwR;
        this.cwS = cwS;
    }
    
    @Override
    public final E Xw() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final void addHeader(final String s, final String s2) {
        this.cwR.a(s, s2, this.cwS);
    }
}
