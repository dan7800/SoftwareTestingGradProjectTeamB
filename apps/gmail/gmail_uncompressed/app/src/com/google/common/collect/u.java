package com.google.common.collect;

final class u
{
    static int fj(final int n) {
        final int n2 = n ^ (n >>> 20 ^ n >>> 12);
        return n2 ^ n2 >>> 7 ^ n2 >>> 4;
    }
}
