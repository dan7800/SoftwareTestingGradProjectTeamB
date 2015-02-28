package org.owasp.html;

import java.util.*;

abstract class a
{
    private R cGD;
    
    public final R aby() {
        if (this.cGD == null) {
            this.cGD = this.abz();
        }
        final R cgd = this.cGD;
        if (cgd == null) {
            throw new NoSuchElementException();
        }
        this.cGD = null;
        return cgd;
    }
    
    protected abstract R abz();
    
    public final boolean hasNext() {
        if (this.cGD == null) {
            this.cGD = this.abz();
        }
        return this.cGD != null;
    }
}
