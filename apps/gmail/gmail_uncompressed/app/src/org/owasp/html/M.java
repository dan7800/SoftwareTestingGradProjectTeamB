package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;

public final class m implements Iterator<String>
{
    private int cHi;
    private final int cHj;
    final /* synthetic */ CssTokens cHk;
    
    m(final CssTokens cHk, final int cHj) {
        this.cHk = cHk;
        this.cHi = 0;
        this.cHj = cHj;
    }
    
    private boolean abW() {
        return this.cHi < this.cHj;
    }
    
    public final m abU() {
        if (!this.hasNext()) {
            throw new NoSuchElementException();
        }
        final int ge = this.cHk.cGQ.ge(this.cHi);
        if (ge < 0) {
            return null;
        }
        final m m = new m(this.cHk, ge);
        m.cHi = 1 + this.cHi;
        this.cHi = ge + 1;
        return m;
    }
    
    public final String abV() {
        return this.cHk.cGP.substring(this.cHk.cGR[this.cHi], this.cHk.cGR[1 + this.cHi]);
    }
    
    public final boolean abX() {
        while (this.abW()) {
            if (this.abY() != CssTokens$TokenType.cHB) {
                return true;
            }
            this.advance();
        }
        return false;
    }
    
    public final CssTokens$TokenType abY() {
        return this.cHk.cGS[this.cHi];
    }
    
    public final void advance() {
        if (!this.abW()) {
            throw new NoSuchElementException();
        }
        ++this.cHi;
    }
    
    @Override
    public final boolean hasNext() {
        return this.abW();
    }
    
    @Override
    public final String next() {
        final String abV = this.abV();
        this.advance();
        return abV;
    }
    
    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
