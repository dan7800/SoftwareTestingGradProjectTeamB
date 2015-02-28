package com.google.android.gm.provider;

public final class ai
{
    private final String aLM;
    private final String aXZ;
    private final int mu;
    
    public ai(final String axz, final String alm, final int n) {
        this.aXZ = axz;
        this.aLM = alm;
        this.mu = (0xFF000000 | n);
    }
    
    public final int getBackgroundColor() {
        return this.mu;
    }
    
    public final String getLabel() {
        return this.aXZ;
    }
    
    public final String getQuery() {
        return this.aLM;
    }
    
    @Override
    public final String toString() {
        return this.aXZ;
    }
}
