package org.apache.james.mime4j.a;

public final class b
{
    private int cAW;
    private e cDY;
    
    public b() {
        this.cAW = -1;
        this.cDY = new e();
    }
    
    public final int CW() {
        return this.cDY.size();
    }
    
    public final byte aaG() {
        return this.cDY.aaH();
    }
    
    public final void c(final byte b) {
        this.cDY.e(b);
    }
    
    public final void clear() {
        if (this.cAW != -1) {
            this.cDY = new e(this.cAW);
            return;
        }
        this.cDY = new e();
    }
}
