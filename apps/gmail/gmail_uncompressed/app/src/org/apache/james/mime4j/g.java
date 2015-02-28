package org.apache.james.mime4j;

import java.io.*;

public final class g extends InputStream
{
    private PushbackInputStream cDt;
    private byte[] cDu;
    private boolean cDv;
    private boolean cDw;
    private boolean cDx;
    private boolean eof;
    
    public g(final InputStream inputStream, final String s) {
        int i = 0;
        this.cDt = null;
        this.cDu = null;
        this.cDv = true;
        this.eof = false;
        this.cDw = false;
        this.cDx = true;
        this.cDt = new PushbackInputStream(inputStream, 4 + s.length());
        final String string = "--" + s;
        this.cDu = new byte[string.length()];
        while (i < this.cDu.length) {
            this.cDu[i] = (byte)string.charAt(i);
            ++i;
        }
        final int read = this.read();
        if (read != -1) {
            this.cDt.unread(read);
        }
    }
    
    private boolean aaE() {
        for (int i = 0; i < this.cDu.length; ++i) {
            final int read = this.cDt.read();
            if (read != this.cDu[i]) {
                if (read != -1) {
                    this.cDt.unread(read);
                }
                int n = i - 1;
                boolean b;
                while (true) {
                    b = false;
                    if (n < 0) {
                        break;
                    }
                    this.cDt.unread(this.cDu[n]);
                    --n;
                }
                return b;
            }
        }
        final int read2 = this.cDt.read();
        final int read3 = this.cDt.read();
        this.cDx = (read2 != 45 || read3 != 45);
        int n2 = read3;
        int read4;
        for (int n3 = read2; n2 != 10 || n3 != 13; n3 = n2, n2 = read4) {
            read4 = this.cDt.read();
            if (read4 == -1) {
                n2 = read4;
                break;
            }
        }
        if (n2 == -1) {
            this.cDx = false;
            this.cDw = true;
        }
        this.eof = true;
        return true;
    }
    
    public final boolean aaB() {
        return this.cDx;
    }
    
    public final boolean aaC() {
        return this.cDw;
    }
    
    public final void aaD() {
        while (this.read() != -1) {}
    }
    
    @Override
    public final void close() {
        this.cDt.close();
    }
    
    @Override
    public final int read() {
        if (this.eof) {
            return -1;
        }
        if (this.cDv) {
            this.cDv = false;
            if (this.aaE()) {
                return -1;
            }
        }
        final int read = this.cDt.read();
        final int read2 = this.cDt.read();
        if (read == 13 && read2 == 10 && this.aaE()) {
            return -1;
        }
        if (read2 != -1) {
            this.cDt.unread(read2);
        }
        boolean cDw = false;
        if (read == -1) {
            cDw = true;
        }
        this.cDw = cDw;
        this.eof = this.cDw;
        return read;
    }
}
