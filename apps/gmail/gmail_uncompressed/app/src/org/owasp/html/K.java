package org.owasp.html;

final class k
{
    private final int[] cHa;
    
    private k(final int[] cHa) {
        this.cHa = cHa;
    }
    
    final int ge(final int n) {
        final int n2 = this.cHa.length >> 1;
        int i = 0;
        int n3 = n2;
        while (true) {
            while (i < n3) {
                final int n4 = i + (n3 - i >> 1);
                final int n5 = this.cHa[n4 << 1];
                if (n5 == n) {
                    if (n4 < 0) {
                        return -1;
                    }
                    return this.cHa[1 + (n4 << 1)];
                }
                else if (n5 < n) {
                    i = n4 + 1;
                }
                else {
                    n3 = n4;
                }
            }
            final int n4 = -1;
            continue;
        }
    }
}
