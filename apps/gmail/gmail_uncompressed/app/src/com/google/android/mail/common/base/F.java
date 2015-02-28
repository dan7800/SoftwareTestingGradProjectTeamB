package com.google.android.mail.common.base;

final class f extends a
{
    @Override
    protected final char[] g(final char c) {
        if (c <= '\u007f') {
            return null;
        }
        final char[] array = { '\0', '\0', '\0', '\0', '\0', d.coF[c & '\u000f'] };
        final char c2 = (char)(c >>> 4);
        array[4] = d.coF[c2 & '\u000f'];
        final char c3 = (char)(c2 >>> 4);
        array[3] = d.coF[c3 & '\u000f'];
        array[2] = d.coF[(char)(c3 >>> 4) & '\u000f'];
        array[1] = 'u';
        array[0] = '\\';
        return array;
    }
}
