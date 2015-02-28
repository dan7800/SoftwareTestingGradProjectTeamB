package com.google.android.mail.common.base;

final class i extends g
{
    public i(final char[][] array) {
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
        if (c < '\u0100') {
            return new char[] { '\\', 'x', d.coF[(char)(c >>> 4) & '\u000f'], d.coF[c & '\u000f'] };
        }
        final char[] array2 = { '\0', '\0', '\0', '\0', '\0', d.coF[c & '\u000f'] };
        final char c2 = (char)(c >>> 4);
        array2[4] = d.coF[c2 & '\u000f'];
        final char c3 = (char)(c2 >>> 4);
        array2[3] = d.coF[c3 & '\u000f'];
        array2[2] = d.coF[(char)(c3 >>> 4) & '\u000f'];
        array2[1] = 'u';
        array2[0] = '\\';
        return array2;
    }
}
