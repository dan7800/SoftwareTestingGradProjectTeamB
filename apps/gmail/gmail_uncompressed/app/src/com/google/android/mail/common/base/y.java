package com.google.android.mail.common.base;

public final class y
{
    int[] cpi;
    
    protected y() {
        this.cpi = new int[2048];
    }
    
    final void j(final char c) {
        final int[] cpi = this.cpi;
        final char c2 = (char)(c >> 5);
        cpi[c2] |= 1 << c;
    }
}
