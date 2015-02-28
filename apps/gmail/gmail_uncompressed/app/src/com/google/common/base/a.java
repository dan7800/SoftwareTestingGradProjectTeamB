package com.google.common.base;

public final class a
{
    public static String hL(final String s) {
        final int length = s.length();
        final StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; ++i) {
            char char1 = s.charAt(i);
            int n;
            if (char1 >= 'A' && char1 <= 'Z') {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                char1 ^= ' ';
            }
            sb.append(char1);
        }
        return sb.toString();
    }
}
