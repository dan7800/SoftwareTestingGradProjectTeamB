package com.google.android.mail.common.base;

public abstract class a extends A
{
    private static char[] a(final char[] array, final int n, final int n2) {
        final char[] array2 = new char[n2];
        if (n > 0) {
            System.arraycopy(array, 0, array2, 0, n);
        }
        return array2;
    }
    
    protected abstract char[] g(final char p0);
    
    @Override
    public String gF(String q) {
        G.ak(q);
        for (int length = q.length(), i = 0; i < length; ++i) {
            if (this.g(q.charAt(i)) != null) {
                q = this.q(q, i);
                break;
            }
        }
        return q;
    }
    
    protected final String q(final String s, int i) {
        final int length = s.length();
        char[] array = E.VZ();
        int length2 = array.length;
        int n = 0;
        int n2 = 0;
        while (i < length) {
            final char[] g = this.g(s.charAt(i));
            if (g != null) {
                final int length3 = g.length;
                final int n3 = i - n;
                final int n4 = length3 + (n2 + n3);
                if (length2 < n4) {
                    length2 = 32 + (n4 + (length - i));
                    array = a(array, n2, length2);
                }
                int n5;
                if (n3 > 0) {
                    s.getChars(n, i, array, n2);
                    n5 = n2 + n3;
                }
                else {
                    n5 = n2;
                }
                if (length3 > 0) {
                    System.arraycopy(g, 0, array, n5, length3);
                    n5 += length3;
                }
                final int n6 = i + 1;
                n2 = n5;
                n = n6;
            }
            ++i;
        }
        final int n7 = length - n;
        if (n7 > 0) {
            final int n8 = n7 + n2;
            if (length2 < n8) {
                array = a(array, n2, n8);
            }
            s.getChars(n, length, array, n2);
            n2 = n8;
        }
        return new String(array, 0, n2);
    }
}
