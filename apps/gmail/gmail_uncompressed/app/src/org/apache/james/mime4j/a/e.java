package org.apache.james.mime4j.a;

final class e
{
    protected byte[] buffer;
    protected int cEd;
    protected int cEe;
    
    public e() {
        this(32);
    }
    
    public e(final int n) {
        if (n <= 0) {
            throw new IllegalArgumentException("The size must be greater than 0");
        }
        this.buffer = new byte[n + 1];
        this.cEd = 0;
        this.cEe = 0;
    }
    
    public final byte aaH() {
        int n;
        if (this.size() == 0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            throw new IllegalStateException("The buffer is already empty");
        }
        final byte b = this.buffer[this.cEd];
        ++this.cEd;
        if (this.cEd >= this.buffer.length) {
            this.cEd = 0;
        }
        return b;
    }
    
    public final boolean e(final byte b) {
        if (1 + this.size() >= this.buffer.length) {
            final byte[] buffer = new byte[1 + 2 * (-1 + this.buffer.length)];
            int i = this.cEd;
            int cEe = 0;
            while (i != this.cEe) {
                buffer[cEe] = this.buffer[i];
                this.buffer[i] = 0;
                ++cEe;
                if (++i == this.buffer.length) {
                    i = 0;
                }
            }
            this.buffer = buffer;
            this.cEd = 0;
            this.cEe = cEe;
        }
        this.buffer[this.cEe] = b;
        ++this.cEe;
        if (this.cEe >= this.buffer.length) {
            this.cEe = 0;
        }
        return true;
    }
    
    public final int size() {
        if (this.cEe < this.cEd) {
            return this.buffer.length - this.cEd + this.cEe;
        }
        return this.cEe - this.cEd;
    }
}
