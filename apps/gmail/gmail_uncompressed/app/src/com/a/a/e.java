package com.a.a;

import java.util.*;
import java.nio.charset.*;

abstract class e extends Charset
{
    private static final List aRJ;
    final boolean aRK;
    a aRL;
    
    static {
        aRJ = Arrays.asList("US-ASCII", "ISO-8859-1", "UTF-8", "UTF-16", "UTF-16LE", "UTF-16BE");
    }
    
    protected e(final String s, final String[] array, final String s2, final boolean ark) {
        super(s, array);
        this.aRL = new a(s2);
        this.aRK = ark;
    }
    
    abstract byte Br();
    
    abstract byte Bs();
    
    @Override
    public boolean contains(final Charset charset) {
        return e.aRJ.contains(charset.name());
    }
    
    abstract boolean e(final char p0);
    
    @Override
    public CharsetDecoder newDecoder() {
        return new f(this, this.aRL, this.aRK);
    }
    
    @Override
    public CharsetEncoder newEncoder() {
        return new g(this, this.aRL, this.aRK);
    }
}
