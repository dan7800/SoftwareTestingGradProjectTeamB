package com.google.api.client.util.a;

public abstract class f extends b
{
    private static char[] a(final char[] array, final int n, final int n2) {
        final char[] array2 = new char[n2];
        if (n > 0) {
            System.arraycopy(array, 0, array2, 0, n);
        }
        return array2;
    }
    
    protected abstract int c(final CharSequence p0, final int p1, final int p2);
    
    protected abstract char[] eV(final int p0);
    
    protected final String q(final String s, int i) {
        final int length = s.length();
        char[] array = d.VZ();
        int n = 0;
        int n2 = 0;
        while (i < length) {
            if (i >= length) {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            }
            final int n3 = i + 1;
            int n4 = s.charAt(i);
            if (n4 >= 55296 && n4 <= 57343) {
                if (n4 > 56319) {
                    throw new IllegalArgumentException("Unexpected low surrogate character '" + (char)n4 + "' with value " + n4 + " at index " + (n3 - 1));
                }
                if (n3 == length) {
                    n4 = -n4;
                }
                else {
                    final char char1 = s.charAt(n3);
                    if (!Character.isLowSurrogate(char1)) {
                        throw new IllegalArgumentException("Expected low surrogate but got char '" + char1 + "' with value " + (int)char1 + " at index " + n3);
                    }
                    n4 = Character.toCodePoint((char)n4, char1);
                }
            }
            if (n4 < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            final char[] ev = this.eV(n4);
            int n5;
            if (Character.isSupplementaryCodePoint(n4)) {
                n5 = 2;
            }
            else {
                n5 = 1;
            }
            final int n6 = n5 + i;
            int n9;
            int n10;
            if (ev != null) {
                final int n7 = i - n;
                final int n8 = n2 + n7 + ev.length;
                if (array.length < n8) {
                    array = a(array, n2, 32 + (n8 + length - i));
                }
                if (n7 > 0) {
                    s.getChars(n, i, array, n2);
                    n2 += n7;
                }
                if (ev.length > 0) {
                    System.arraycopy(ev, 0, array, n2, ev.length);
                    n2 += ev.length;
                }
                n9 = n2;
                n10 = n6;
            }
            else {
                final int n11 = n;
                n9 = n2;
                n10 = n11;
            }
            i = this.c(s, n6, length);
            final int n12 = n10;
            n2 = n9;
            n = n12;
        }
        final int n13 = length - n;
        if (n13 > 0) {
            final int n14 = n13 + n2;
            if (array.length < n14) {
                array = a(array, n2, n14);
            }
            s.getChars(n, length, array, n2);
            n2 = n14;
        }
        return new String(array, 0, n2);
    }
}
