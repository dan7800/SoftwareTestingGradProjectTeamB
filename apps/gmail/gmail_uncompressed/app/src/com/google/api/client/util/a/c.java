package com.google.api.client.util.a;

public final class c extends f
{
    private static final char[] cpm;
    private static final char[] cpn;
    private final boolean cpo;
    private final boolean[] cpp;
    
    static {
        cpm = new char[] { '+' };
        cpn = "0123456789ABCDEF".toCharArray();
    }
    
    public c(final String s, final boolean cpo) {
        if (s.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        if (cpo && s.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        if (s.contains("%")) {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
        this.cpo = cpo;
        this.cpp = gG(s);
    }
    
    private static boolean[] gG(final String s) {
        int i = 0;
        final char[] charArray = s.toCharArray();
        final int length = charArray.length;
        int j = 0;
        int max = 122;
        while (j < length) {
            max = Math.max(charArray[j], max);
            ++j;
        }
        final boolean[] array = new boolean[max + 1];
        for (int k = 48; k <= 57; ++k) {
            array[k] = true;
        }
        for (int l = 65; l <= 90; ++l) {
            array[l] = true;
        }
        for (int n = 97; n <= 122; ++n) {
            array[n] = true;
        }
        while (i < charArray.length) {
            array[charArray[i]] = true;
            ++i;
        }
        return array;
    }
    
    @Override
    protected final int c(final CharSequence charSequence, int i, final int n) {
        while (i < n) {
            final char char1 = charSequence.charAt(i);
            if (char1 >= this.cpp.length || !this.cpp[char1]) {
                break;
            }
            ++i;
        }
        return i;
    }
    
    @Override
    protected final char[] eV(final int n) {
        if (n < this.cpp.length && this.cpp[n]) {
            return null;
        }
        if (n == 32 && this.cpo) {
            return c.cpm;
        }
        if (n <= 127) {
            return new char[] { '%', c.cpn[n >>> 4], c.cpn[n & 0xF] };
        }
        if (n <= 2047) {
            final char[] array = { '%', '\0', '\0', '%', '\0', c.cpn[n & 0xF] };
            final int n2 = n >>> 4;
            array[4] = c.cpn[0x8 | (n2 & 0x3)];
            final int n3 = n2 >>> 2;
            array[2] = c.cpn[n3 & 0xF];
            array[1] = c.cpn[n3 >>> 4 | 0xC];
            return array;
        }
        if (n <= 65535) {
            final char[] array2 = { '%', 'E', '\0', '%', '\0', '\0', '%', '\0', c.cpn[n & 0xF] };
            final int n4 = n >>> 4;
            array2[7] = c.cpn[0x8 | (n4 & 0x3)];
            final int n5 = n4 >>> 2;
            array2[5] = c.cpn[n5 & 0xF];
            final int n6 = n5 >>> 4;
            array2[4] = c.cpn[0x8 | (n6 & 0x3)];
            array2[2] = c.cpn[n6 >>> 2];
            return array2;
        }
        if (n <= 1114111) {
            final char[] array3 = { '%', 'F', '\0', '%', '\0', '\0', '%', '\0', '\0', '%', '\0', c.cpn[n & 0xF] };
            final int n7 = n >>> 4;
            array3[10] = c.cpn[0x8 | (n7 & 0x3)];
            final int n8 = n7 >>> 2;
            array3[8] = c.cpn[n8 & 0xF];
            final int n9 = n8 >>> 4;
            array3[7] = c.cpn[0x8 | (n9 & 0x3)];
            final int n10 = n9 >>> 2;
            array3[5] = c.cpn[n10 & 0xF];
            final int n11 = n10 >>> 4;
            array3[4] = c.cpn[0x8 | (n11 & 0x3)];
            array3[2] = c.cpn[n11 >>> 2 & 0x7];
            return array3;
        }
        throw new IllegalArgumentException("Invalid unicode character value " + n);
    }
    
    @Override
    public final String gF(String q) {
        for (int length = q.length(), i = 0; i < length; ++i) {
            final char char1 = q.charAt(i);
            if (char1 >= this.cpp.length || !this.cpp[char1]) {
                q = this.q(q, i);
                break;
            }
        }
        return q;
    }
}
