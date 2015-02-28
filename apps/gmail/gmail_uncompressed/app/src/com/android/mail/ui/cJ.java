package com.android.mail.ui;

public final class cj
{
    public float aKN;
    public float aKO;
    public int height;
    public int width;
    
    public cj() {
    }
    
    public cj(final int n, final int n2) {
        this(n, n2, 1.0f, -1.0f);
    }
    
    public cj(final int width, final int height, final float n, final float ako) {
        this.width = width;
        this.height = height;
        this.aKN = 1.0f;
        this.aKO = ako;
    }
    
    @Override
    public final String toString() {
        return String.format("Dimens [%d x %d]", this.width, this.height);
    }
}
