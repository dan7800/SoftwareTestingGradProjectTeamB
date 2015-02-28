package com.google.android.mail.common.base;

final class h extends g
{
    public h(final char[][] array) {
        super(array);
    }
    
    @Override
    protected final char[] g(final char c) {
        if (c < this.coG) {
            final char[] array = this.coo[c];
            if (array != null) {
                return array;
            }
        }
        if (this.coH <= c && c <= this.coI) {
            return null;
        }
        if (c <= '\u00ff') {
            final char[] array2 = { '\\', '\0', '\0', d.coF[c & '\u0007'] };
            final char c2 = (char)(c >>> 3);
            array2[2] = d.coF[c2 & '\u0007'];
            array2[1] = d.coF[(char)(c2 >>> 3) & '\u0007'];
            return array2;
        }
        final char[] array3 = { '\\', 'u', '\0', '\0', '\0', d.coF[c & '\u000f'] };
        final char c3 = (char)(c >>> 4);
        array3[4] = d.coF[c3 & '\u000f'];
        final char c4 = (char)(c3 >>> 4);
        array3[3] = d.coF[c4 & '\u000f'];
        array3[2] = d.coF[(char)(c4 >>> 4) & '\u000f'];
        return array3;
    }
}
