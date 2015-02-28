package org.apache.james.mime4j.field.contenttype.parser;

import java.io.*;

public final class d
{
    int cFF;
    int cFG;
    int cFH;
    public int cFI;
    protected int[] cFJ;
    protected int[] cFK;
    protected int cFL;
    protected boolean cFM;
    protected boolean cFN;
    protected Reader cFO;
    protected char[] cFP;
    protected int cFQ;
    protected int cFR;
    protected int cFS;
    protected int column;
    
    public d(final Reader reader) {
        this(reader, 1, 1);
    }
    
    private d(final Reader cfo, final int n, final int n2) {
        this.cFI = -1;
        this.column = 0;
        this.cFL = 1;
        this.cFM = false;
        this.cFN = false;
        this.cFQ = 0;
        this.cFR = 0;
        this.cFS = 8;
        this.cFO = cfo;
        this.cFL = 1;
        this.column = 0;
        this.cFF = 4096;
        this.cFG = 4096;
        this.cFP = new char[4096];
        this.cFJ = new int[4096];
        this.cFK = new int[4096];
    }
    
    private void cs(final boolean b) {
        final char[] array = new char[2048 + this.cFF];
        final int[] array2 = new int[2048 + this.cFF];
        final int[] array3 = new int[2048 + this.cFF];
        Label_0242: {
            if (!b) {
                break Label_0242;
            }
            try {
                System.arraycopy(this.cFP, this.cFH, array, 0, this.cFF - this.cFH);
                System.arraycopy(this.cFP, 0, array, this.cFF - this.cFH, this.cFI);
                this.cFP = array;
                System.arraycopy(this.cFJ, this.cFH, array2, 0, this.cFF - this.cFH);
                System.arraycopy(this.cFJ, 0, array2, this.cFF - this.cFH, this.cFI);
                this.cFJ = array2;
                System.arraycopy(this.cFK, this.cFH, array3, 0, this.cFF - this.cFH);
                System.arraycopy(this.cFK, 0, array3, this.cFF - this.cFH, this.cFI);
                this.cFK = array3;
                final int n = this.cFI + (this.cFF - this.cFH);
                this.cFI = n;
                this.cFQ = n;
                while (true) {
                    this.cFF += 2048;
                    this.cFG = this.cFF;
                    this.cFH = 0;
                    return;
                    System.arraycopy(this.cFP, this.cFH, array, 0, this.cFF - this.cFH);
                    this.cFP = array;
                    System.arraycopy(this.cFJ, this.cFH, array2, 0, this.cFF - this.cFH);
                    this.cFJ = array2;
                    System.arraycopy(this.cFK, this.cFH, array3, 0, this.cFF - this.cFH);
                    this.cFK = array3;
                    final int n2 = this.cFI - this.cFH;
                    this.cFI = n2;
                    this.cFQ = n2;
                    continue;
                }
            }
            catch (Throwable t) {
                throw new Error(t.getMessage());
            }
        }
    }
    
    public final int abh() {
        return this.cFK[this.cFI];
    }
    
    public final int abi() {
        return this.cFJ[this.cFI];
    }
    
    public final int abj() {
        return this.cFK[this.cFH];
    }
    
    public final int abk() {
        return this.cFJ[this.cFH];
    }
    
    public final String abl() {
        if (this.cFI >= this.cFH) {
            return new String(this.cFP, this.cFH, 1 + (this.cFI - this.cFH));
        }
        return new String(this.cFP, this.cFH, this.cFF - this.cFH) + new String(this.cFP, 0, 1 + this.cFI);
    }
    
    public final void fX(final int n) {
        this.cFR += n;
        final int cfi = this.cFI - n;
        this.cFI = cfi;
        if (cfi < 0) {
            this.cFI += this.cFF;
        }
    }
    
    public final char[] fY(final int n) {
        final char[] array = new char[n];
        if (1 + this.cFI >= n) {
            System.arraycopy(this.cFP, 1 + (this.cFI - n), array, 0, n);
            return array;
        }
        System.arraycopy(this.cFP, this.cFF - (-1 + (n - this.cFI)), array, 0, -1 + (n - this.cFI));
        System.arraycopy(this.cFP, 0, array, -1 + (n - this.cFI), 1 + this.cFI);
        return array;
    }
    
    public final char readChar() {
        if (this.cFR > 0) {
            --this.cFR;
            if (++this.cFI == this.cFF) {
                this.cFI = 0;
            }
            return this.cFP[this.cFI];
        }
        Label_0303: {
            if (++this.cFI >= this.cFQ) {
                while (true) {
                    Label_0208: {
                        if (this.cFQ == this.cFG) {
                            if (this.cFG == this.cFF) {
                                if (this.cFH <= 2048) {
                                    break Label_0208;
                                }
                                this.cFQ = 0;
                                this.cFI = 0;
                                this.cFG = this.cFH;
                            }
                            else if (this.cFG > this.cFH) {
                                this.cFG = this.cFF;
                            }
                            else if (this.cFH - this.cFG < 2048) {
                                this.cs(true);
                            }
                            else {
                                this.cFG = this.cFH;
                            }
                        }
                        int read = 0;
                        Label_0292: {
                            try {
                                read = this.cFO.read(this.cFP, this.cFQ, this.cFG - this.cFQ);
                                if (read == -1) {
                                    this.cFO.close();
                                    throw new IOException();
                                }
                                break Label_0292;
                            }
                            catch (IOException ex) {
                                --this.cFI;
                                this.fX(0);
                                if (this.cFH == -1) {
                                    this.cFH = this.cFI;
                                }
                                throw ex;
                            }
                            break Label_0208;
                        }
                        this.cFQ += read;
                        break Label_0303;
                    }
                    if (this.cFH < 0) {
                        this.cFQ = 0;
                        this.cFI = 0;
                        continue;
                    }
                    this.cs(false);
                    continue;
                }
            }
        }
        final char c = this.cFP[this.cFI];
        ++this.column;
        Label_0352: {
            if (this.cFN) {
                this.cFN = false;
            }
            else {
                if (!this.cFM) {
                    break Label_0352;
                }
                this.cFM = false;
                if (c == '\n') {
                    this.cFN = true;
                    break Label_0352;
                }
            }
            final int cfl = this.cFL;
            this.column = 1;
            this.cFL = cfl + 1;
        }
        switch (c) {
            case 13: {
                this.cFM = true;
                break;
            }
            case 10: {
                this.cFN = true;
                break;
            }
            case 9: {
                --this.column;
                this.column += this.cFS - this.column % this.cFS;
                break;
            }
        }
        this.cFJ[this.cFI] = this.cFL;
        this.cFK[this.cFI] = this.column;
        return c;
    }
}
