package com.google.android.mail.common.base;

import java.util.*;

final class m extends j
{
    final /* synthetic */ char[] cpb;
    
    m(final char[] cpb) {
        this.cpb = cpb;
    }
    
    @Override
    protected final void a(final y y) {
        final char[] cpb = this.cpb;
        for (int length = cpb.length, i = 0; i < length; ++i) {
            y.j(cpb[i]);
        }
    }
    
    @Override
    public final boolean i(final char c) {
        return Arrays.binarySearch(this.cpb, c) >= 0;
    }
}
