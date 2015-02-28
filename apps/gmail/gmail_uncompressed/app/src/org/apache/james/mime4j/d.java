package org.apache.james.mime4j;

import java.io.*;

public final class d extends InputStream
{
    private PushbackInputStream cDo;
    private int cDp;
    private int cDq;
    private int cDr;
    private e cDs;
    private int flags;
    private int pos;
    private int size;
    
    public d(final InputStream inputStream) {
        this.cDo = null;
        this.cDp = 0;
        this.flags = 3;
        this.size = 0;
        this.pos = 0;
        this.cDo = new PushbackInputStream(inputStream, 2);
    }
    
    public d(final InputStream inputStream, final int size, final e cDs) {
        this(inputStream);
        this.size = size;
        this.cDr = this.size / 10;
        this.cDq = this.cDr;
        this.cDs = cDs;
    }
    
    private void fI(final int n) {
        this.cDo.unread(n);
        --this.pos;
    }
    
    private int jH() {
        final int read = this.cDo.read();
        if (read != -1 && this.cDs != null && this.pos++ == this.cDq) {
            this.cDq += this.cDr;
            if (this.cDs != null) {
                this.cDs.bf(this.pos);
            }
        }
        return read;
    }
    
    @Override
    public final void close() {
        this.cDo.close();
    }
    
    @Override
    public final int read() {
        int jh = this.jH();
        if (jh == -1) {
            this.pos = this.size;
            return -1;
        }
        if ((0x1 & this.flags) != 0x0 && jh == 13) {
            final int jh2 = this.jH();
            if (jh2 != -1) {
                this.fI(jh2);
            }
            if (jh2 != 10) {
                this.fI(10);
            }
        }
        else if ((0x2 & this.flags) != 0x0 && jh == 10 && this.cDp != 13) {
            this.fI(10);
            jh = 13;
        }
        return this.cDp = jh;
    }
}
