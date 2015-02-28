package com.google.android.mail.common.base;

final class c extends a
{
    private final char[][] coo;
    private final int cop;
    
    c(final char[][] coo) {
        this.coo = coo;
        this.cop = coo.length;
    }
    
    @Override
    protected final char[] g(final char c) {
        if (c < this.cop) {
            return this.coo[c];
        }
        return null;
    }
    
    @Override
    public final String gF(String q) {
        for (int length = q.length(), i = 0; i < length; ++i) {
            final char char1 = q.charAt(i);
            if (char1 < this.coo.length && this.coo[char1] != null) {
                q = this.q(q, i);
                break;
            }
        }
        return q;
    }
}
