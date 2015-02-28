package com.google.android.gms.people;

public final class c
{
    private String bVQ;
    private boolean cgr;
    private String cgs;
    private int cgt;
    private int cgu;
    private int cgv;
    private boolean cgw;
    private String mAccount;
    
    public c() {
        this.cgs = "com.google";
        this.cgt = 0;
        this.cgv = 10;
        this.cgw = true;
    }
    
    public final c UJ() {
        this.cgt = 1;
        return this;
    }
    
    public final c UK() {
        this.cgw = true;
        return this;
    }
    
    public final b UL() {
        return new b(this, (byte)0);
    }
    
    public final c gy(final String mAccount) {
        this.mAccount = mAccount;
        return this;
    }
}
