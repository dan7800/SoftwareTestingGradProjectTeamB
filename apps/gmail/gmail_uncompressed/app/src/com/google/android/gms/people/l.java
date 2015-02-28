package com.google.android.gms.people;

public final class l
{
    private int bVW;
    private int bVX;
    public boolean bVY;
    
    public l() {
        this.bVW = 1;
        this.bVX = 0;
    }
    
    public final l UP() {
        this.bVW = 1;
        return this;
    }
    
    public final l UQ() {
        this.bVX = 1;
        return this;
    }
    
    public final k UR() {
        return new k(this, (byte)0);
    }
}
