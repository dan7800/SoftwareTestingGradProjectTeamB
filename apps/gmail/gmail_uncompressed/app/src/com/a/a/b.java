package com.a.a;

import java.nio.charset.spi.*;
import java.nio.charset.*;
import java.util.*;

public final class b extends CharsetProvider
{
    private static final String[] aRB;
    private static final String[] aRC;
    private static final String[] aRD;
    private Charset aRE;
    private Charset aRF;
    private Charset aRG;
    private List<Charset> aRH;
    
    static {
        aRB = new String[] { "UNICODE-1-1-UTF-7", "CSUNICODE11UTF7", "X-RFC2152", "X-RFC-2152" };
        aRC = new String[] { "X-RFC2152-OPTIONAL", "X-RFC-2152-OPTIONAL" };
        aRD = new String[] { "X-IMAP-MODIFIED-UTF-7", "X-IMAP4-MODIFIED-UTF7", "X-IMAP4-MODIFIED-UTF-7", "X-RFC3501", "X-RFC-3501" };
    }
    
    public b() {
        this.aRE = new d("UTF-7", b.aRB, false);
        this.aRF = new d("X-UTF-7-OPTIONAL", b.aRC, true);
        this.aRG = new c("X-MODIFIED-UTF-7", b.aRD);
        this.aRH = Arrays.asList(this.aRE, this.aRG, this.aRF);
    }
    
    @Override
    public final Charset charsetForName(final String s) {
        final String upperCase = s.toUpperCase();
        for (final Charset charset : this.aRH) {
            if (charset.name().equals(upperCase)) {
                return charset;
            }
        }
        for (final Charset charset2 : this.aRH) {
            if (charset2.aliases().contains(upperCase)) {
                return charset2;
            }
        }
        return null;
    }
    
    @Override
    public final Iterator<Charset> charsets() {
        return this.aRH.iterator();
    }
}
