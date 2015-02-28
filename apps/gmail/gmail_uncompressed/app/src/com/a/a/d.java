package com.a.a;

final class d extends e
{
    final String aRI;
    
    d(final String s, final String[] array, final boolean b) {
        super(s, array, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", false);
        if (b) {
            this.aRI = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n";
            return;
        }
        this.aRI = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'(),-./:? \t\r\n";
    }
    
    @Override
    final byte Br() {
        return 43;
    }
    
    @Override
    final byte Bs() {
        return 45;
    }
    
    @Override
    final boolean e(final char c) {
        return this.aRI.indexOf(c) >= 0;
    }
}
