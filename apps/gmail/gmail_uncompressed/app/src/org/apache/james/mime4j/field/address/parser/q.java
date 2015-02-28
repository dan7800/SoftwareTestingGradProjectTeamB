package org.apache.james.mime4j.field.address.parser;

import java.util.*;

final class q
{
    private Stack<r> cFA;
    private Stack<Integer> cFB;
    private int cFC;
    private int cFD;
    private boolean cFE;
    
    q() {
        this.cFA = new Stack<r>();
        this.cFB = new Stack<Integer>();
        this.cFC = 0;
        this.cFD = 0;
    }
    
    private r abe() {
        final int cfc = -1 + this.cFC;
        this.cFC = cfc;
        if (cfc < this.cFD) {
            this.cFD = this.cFB.pop();
        }
        return this.cFA.pop();
    }
    
    final r abd() {
        return this.cFA.elementAt(0);
    }
    
    final void abf() {
        while (this.cFC > this.cFD) {
            this.abe();
        }
        this.cFD = this.cFB.pop();
    }
    
    final void abg() {
        this.cFB.push(new Integer(this.cFD));
        this.cFD = this.cFC;
    }
    
    final void c(final r r) {
        final int n = this.cFC - this.cFD;
        this.cFD = this.cFB.pop();
        int n2 = n;
        while (true) {
            final int n3 = n2 - 1;
            if (n2 <= 0) {
                break;
            }
            final r abe = this.abe();
            abe.d(r);
            r.a(abe, n3);
            n2 = n3;
        }
        this.cFA.push(r);
        ++this.cFC;
        this.cFE = true;
    }
}
