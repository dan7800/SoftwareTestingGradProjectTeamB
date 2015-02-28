package org.owasp.html;

final class W
{
    private static final char[] cKc;
    private static final char[] cKd;
    
    static {
        int i = 97;
        int n = 65;
        cKc = new char[91];
        cKd = new char[123];
        for (int j = 0; j < n; ++j) {
            W.cKc[j] = (char)j;
        }
        int k;
        while (true) {
            k = 0;
            if (n > 90) {
                break;
            }
            W.cKc[n] = (char)(n | 0x20);
            ++n;
        }
        while (k < i) {
            W.cKd[k] = (char)k;
            ++k;
        }
        while (i <= 122) {
            W.cKd[i] = (char)(i & 0xFFFFFFDF);
            ++i;
        }
    }
    
    public static boolean a(final CharSequence charSequence, final int n, final CharSequence charSequence2, int n2) {
        if (n + n2 <= charSequence.length() && n2 + 0 <= charSequence2.length()) {
            while (--n2 >= 0) {
                char char1 = charSequence.charAt(n + n2);
                char char2 = charSequence2.charAt(n2 + 0);
                if (char1 != char2) {
                    if (char1 > 'z' || char1 < 'A') {
                        return false;
                    }
                    if (char1 <= 'Z') {
                        char1 |= ' ';
                    }
                    if (char2 <= 'Z' && char2 >= 'A') {
                        char2 |= ' ';
                    }
                    if (char1 != char2) {
                        return false;
                    }
                    continue;
                }
            }
            return true;
        }
        return false;
    }
    
    public static String hL(String value) {
        int length = value.length();
        while (--length >= 0) {
            final char char1 = value.charAt(length);
            if (char1 <= 'Z' && char1 >= 'A') {
                final char[] charArray = value.toCharArray();
                charArray[length] = W.cKc[char1];
                while (--length >= 0) {
                    final char c = charArray[length];
                    if (c <= 'Z') {
                        charArray[length] = W.cKc[c];
                    }
                }
                value = String.valueOf(charArray);
                break;
            }
        }
        return value;
    }
}
