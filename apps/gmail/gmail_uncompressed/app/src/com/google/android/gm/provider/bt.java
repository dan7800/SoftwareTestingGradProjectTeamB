package com.google.android.gm.provider;

public final class bt
{
    public final long bmB;
    public final String bmC;
    public final String bmD;
    public final String bmE;
    public final String bmF;
    public final String bmG;
    public final String bmH;
    public final String bmI;
    public final long bmJ;
    public int bmK;
    public int bmL;
    public long bmM;
    public final long mMessageId;
    
    public bt(final String s, final long n, final long n2) {
        this(s, n, 0L, n2, null, null, null, null, null, null, 0, 0, 0L);
    }
    
    public bt(final String bmI, final long mMessageId, final long bmJ, final long bmB, final String bmC, final String bmD, final String bmE, final String bmF, final String bmG, final String bmH, final int bmK, final int bmL, final long bmM) {
        this.bmI = bmI;
        this.mMessageId = mMessageId;
        this.bmJ = bmJ;
        this.bmB = bmB;
        this.bmC = bmC;
        this.bmD = bmD;
        this.bmE = bmE;
        this.bmF = bmF;
        this.bmG = bmG;
        this.bmH = bmH;
        this.bmK = bmK;
        this.bmL = bmL;
        this.bmM = bmM;
    }
}
