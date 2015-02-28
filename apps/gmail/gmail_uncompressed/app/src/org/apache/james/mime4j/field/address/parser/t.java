package org.apache.james.mime4j.field.address.parser;

public class t extends p implements r
{
    protected r cFT;
    protected r[] cFU;
    protected int id;
    
    public t(final int id) {
        this.id = id;
    }
    
    @Override
    public final void a(final r r, final int n) {
        if (this.cFU == null) {
            this.cFU = new r[n + 1];
        }
        else if (n >= this.cFU.length) {
            final r[] cfu = new r[n + 1];
            System.arraycopy(this.cFU, 0, cfu, 0, this.cFU.length);
            this.cFU = cfu;
        }
        this.cFU[n] = r;
    }
    
    public final int abm() {
        if (this.cFU == null) {
            return 0;
        }
        return this.cFU.length;
    }
    
    @Override
    public final void d(final r cft) {
        this.cFT = cft;
    }
    
    public final r fZ(final int n) {
        return this.cFU[n];
    }
    
    @Override
    public String toString() {
        return o.cFx[this.id];
    }
}
