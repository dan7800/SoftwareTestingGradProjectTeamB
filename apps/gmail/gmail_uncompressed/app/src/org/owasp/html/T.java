package org.owasp.html;

final class t
{
    p cHZ;
    p cIa;
    
    t() {
        this.cHZ = null;
        this.cIa = null;
    }
    
    final void a(final p p) {
        p cjx = p;
        while (cjx != p.cHY) {
            if (this.cIa != p.cHY) {
                if (cjx instanceof T) {
                    final T t = (T)cjx;
                    this.a(t.cJW);
                    cjx = t.cJX;
                    continue;
                }
                if (cjx != this.cHZ) {
                    this.cHZ = cjx;
                    if (this.cIa == null || this.cIa == p.cHX) {
                        this.cIa = cjx;
                        return;
                    }
                    if (cjx != p.cHX) {
                        this.cIa = new T(this.cIa, cjx);
                    }
                }
            }
            return;
        }
        this.cIa = cjx;
    }
}
