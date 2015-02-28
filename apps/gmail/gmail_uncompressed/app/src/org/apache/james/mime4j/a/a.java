package org.apache.james.mime4j.a;

import java.io.*;

public final class a extends InputStream
{
    private static byte[] cDX;
    private boolean cAR;
    private final InputStream cDS;
    private int cDT;
    private int cDU;
    private final int[] cDV;
    private final byte[] cDW;
    
    static {
        a.cDX = new byte[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    }
    
    public a(final InputStream cds) {
        this.cDT = 0;
        this.cDU = 0;
        this.cDV = new int[3];
        this.cDW = new byte[4];
        this.cAR = false;
        this.cDS = cds;
    }
    
    private void fK(final int n) {
        final int n2 = 0x0 | this.cDW[0] << 18 | this.cDW[1] << 12 | this.cDW[2] << 6 | this.cDW[3];
        if (n == 4) {
            this.cDV[0] = (0xFF & n2 >> 16);
            this.cDV[1] = (0xFF & n2 >> 8);
            this.cDV[2] = (n2 & 0xFF);
            this.cDT = 3;
            return;
        }
        if (n == 3) {
            this.cDV[0] = (0xFF & n2 >> 16);
            this.cDV[1] = (0xFF & n2 >> 8);
            this.cDT = 2;
            return;
        }
        this.cDV[0] = (0xFF & n2 >> 16);
        this.cDT = 1;
    }
    
    @Override
    public final void close() {
        this.cDS.close();
    }
    
    @Override
    public final int read() {
        int n = 0;
        if (this.cDU == this.cDT) {
            this.cDT = 0;
            this.cDU = 0;
        Label_0110:
            while (!this.cAR) {
                final int read = this.cDS.read();
                switch (read) {
                    default: {
                        final byte b = a.cDX[read];
                        if (b < 0) {
                            continue;
                        }
                        final byte[] cdw = this.cDW;
                        final int n2 = n + 1;
                        cdw[n] = b;
                        if (n2 == 4) {
                            this.fK(n2);
                            break Label_0110;
                        }
                        n = n2;
                        continue;
                    }
                    case 61: {
                        this.cAR = true;
                        this.fK(n);
                    }
                    case -1: {
                        break Label_0110;
                    }
                }
            }
            if (this.cDU == this.cDT) {
                return -1;
            }
        }
        return this.cDV[this.cDU++];
    }
}
