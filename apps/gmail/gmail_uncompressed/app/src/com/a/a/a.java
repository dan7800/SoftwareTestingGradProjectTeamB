package com.a.a;

import java.util.*;

final class a
{
    private final int[] aRA;
    private final char[] aRz;
    
    a(final String s) {
        this.aRz = s.toCharArray();
        if (s.length() != 64) {
            throw new IllegalArgumentException("alphabet has incorrect length (should be 64, not " + s.length() + ")");
        }
        Arrays.fill(this.aRA = new int[128], -1);
        for (int i = 0; i < this.aRz.length; ++i) {
            final char c = this.aRz[i];
            if (c >= '\u0080') {
                throw new IllegalArgumentException("invalid character in alphabet: " + c);
            }
            this.aRA[c] = i;
        }
    }
    
    final int a(final byte b) {
        if (b >= 128) {
            return -1;
        }
        return this.aRA[b];
    }
    
    final boolean d(final char c) {
        return c < '\u0080' && this.aRA[c] >= 0;
    }
    
    final byte du(final int n) {
        return (byte)this.aRz[n];
    }
}
