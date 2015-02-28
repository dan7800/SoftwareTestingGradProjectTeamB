package com.google.android.mail.common.base;

abstract class g extends a
{
    protected final int coG;
    protected final char coH;
    protected final char coI;
    protected final char[][] coo;
    
    public g(final char[][] coo) {
        this.coo = coo;
        this.coG = coo.length;
        this.coH = ' ';
        this.coI = '~';
    }
    
    @Override
    public final String gF(String q) {
        for (int length = q.length(), i = 0; i < length; ++i) {
            final char char1 = q.charAt(i);
            if ((char1 < this.coG && this.coo[char1] != null) || char1 < this.coH || char1 > this.coI) {
                q = this.q(q, i);
                break;
            }
        }
        return q;
    }
}
