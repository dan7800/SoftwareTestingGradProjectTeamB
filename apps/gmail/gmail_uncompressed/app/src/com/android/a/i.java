package com.android.a;

import android.graphics.*;

public class i implements e
{
    public final Bitmap GM;
    private int GN;
    private int GO;
    private final boolean GP;
    private int fI;
    private int yS;
    
    public i(final Bitmap bitmap) {
        this(bitmap, true);
    }
    
    public i(final Bitmap gm, final boolean gp) {
        this.GO = 0;
        this.GM = gm;
        this.GP = gp;
    }
    
    public final void aC(final int gn) {
        this.GN = gn;
    }
    
    public final void aD(final int ys) {
        this.yS = ys;
    }
    
    @Override
    public void acquireReference() {
        ++this.GO;
    }
    
    @Override
    public final int fU() {
        return this.GO;
    }
    
    @Override
    public final boolean fV() {
        return this.GP;
    }
    
    public final int fY() {
        return this.GN;
    }
    
    public final int fZ() {
        return this.yS;
    }
    
    public int getByteCount() {
        return this.GM.getByteCount();
    }
    
    public void releaseReference() {
        if (this.GO == 0) {
            throw new IllegalStateException();
        }
        --this.GO;
    }
    
    public final void setOrientation(final int n) {
        this.fI = 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("[");
        sb.append(super.toString());
        sb.append(" refCount=");
        sb.append(this.GO);
        sb.append(" mReusable=");
        sb.append(this.GP);
        sb.append(" bmp=");
        sb.append(this.GM);
        sb.append(" logicalW/H=");
        sb.append(this.GN);
        sb.append("/");
        sb.append(this.yS);
        if (this.GM != null) {
            sb.append(" sz=");
            sb.append(this.GM.getByteCount() >> 10);
            sb.append("KB");
        }
        sb.append("]");
        return sb.toString();
    }
}
