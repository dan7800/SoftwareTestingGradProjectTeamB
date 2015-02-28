package com.a.a;

final class c extends e
{
    c(final String s, final String[] array) {
        super(s, array, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,", true);
    }
    
    @Override
    final byte Br() {
        return 38;
    }
    
    @Override
    final byte Bs() {
        return 45;
    }
    
    @Override
    final boolean e(final char c) {
        return c != '&' && c >= ' ' && c <= '~';
    }
}
