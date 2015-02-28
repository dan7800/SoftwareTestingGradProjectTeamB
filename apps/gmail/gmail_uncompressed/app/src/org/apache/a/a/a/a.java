package org.apache.a.a.a;

import java.io.*;
import java.util.*;

public final class a extends OutputStream
{
    private static final byte[] cDc;
    private List<byte[]> cDd;
    private int cDe;
    private int cDf;
    private byte[] cDg;
    private int count;
    
    static {
        cDc = new byte[0];
    }
    
    public a() {
        this((byte)0);
    }
    
    private a(final byte b) {
        this.cDd = new ArrayList<byte[]>();
        this.fH(1024);
    }
    
    private byte[] fG(final int n) {
        return this.cDd.get(n);
    }
    
    private void fH(int max) {
        if (this.cDe < -1 + this.cDd.size()) {
            this.cDf += this.cDg.length;
            ++this.cDe;
            this.cDg = this.fG(this.cDe);
            return;
        }
        if (this.cDg == null) {
            this.cDf = 0;
        }
        else {
            max = Math.max(this.cDg.length << 1, max - this.cDf);
            this.cDf += this.cDg.length;
        }
        ++this.cDe;
        this.cDg = new byte[max];
        this.cDd.add(this.cDg);
    }
    
    @Override
    public final void close() {
    }
    
    public final byte[] toByteArray() {
        int i = 0;
        synchronized (this) {
            final int count = this.count;
            byte[] cDc;
            if (count == 0) {
                cDc = a.cDc;
            }
            else {
                cDc = new byte[count];
                int n = count;
                int n2 = 0;
                while (i < this.cDd.size()) {
                    final byte[] fg = this.fG(i);
                    final int min = Math.min(fg.length, n);
                    System.arraycopy(fg, 0, cDc, n2, min);
                    n2 += min;
                    n -= min;
                    if (n == 0) {
                        break;
                    }
                    ++i;
                }
            }
            return cDc;
        }
    }
    
    @Override
    public final String toString() {
        return new String(this.toByteArray());
    }
    
    @Override
    public final void write(final int n) {
        synchronized (this) {
            int n2 = this.count - this.cDf;
            if (n2 == this.cDg.length) {
                this.fH(1 + this.count);
                n2 = 0;
            }
            this.cDg[n2] = (byte)n;
            ++this.count;
        }
    }
    
    @Override
    public final void write(final byte[] array, final int n, final int n2) {
        if (n < 0 || n > array.length || n2 < 0 || n + n2 > array.length || n + n2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (n2 == 0) {
            return;
        }
        synchronized (this) {
            final int count = n2 + this.count;
            int n3 = this.count - this.cDf;
            int i = n2;
            while (i > 0) {
                final int min = Math.min(i, this.cDg.length - n3);
                System.arraycopy(array, n + n2 - i, this.cDg, n3, min);
                i -= min;
                if (i > 0) {
                    this.fH(count);
                    n3 = 0;
                }
            }
            this.count = count;
        }
    }
}
