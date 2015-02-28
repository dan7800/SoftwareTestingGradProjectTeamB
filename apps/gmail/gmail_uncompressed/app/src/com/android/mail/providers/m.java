package com.android.mail.providers;

import android.net.*;

public final class m
{
    private int Qo;
    private int Zr;
    private int Zz;
    private Uri aAA;
    private int aAB;
    private int aAC;
    private int aAD;
    private String aAE;
    private String aAF;
    private String aAG;
    private Uri aAH;
    private long aAI;
    private String aAJ;
    private boolean aAu;
    private int aAv;
    private Uri aAw;
    private Uri aAx;
    private int aAy;
    private int aAz;
    private Uri aqe;
    private String axP;
    private int cH;
    private Uri eM;
    private String mName;
    private int wo;
    
    public final m bP(final String axP) {
        this.axP = axP;
        return this;
    }
    
    public final m bQ(final String mName) {
        this.mName = mName;
        return this;
    }
    
    public final m bR(final String aae) {
        this.aAE = aae;
        return this;
    }
    
    public final m bS(final String aaf) {
        this.aAF = aaf;
        return this;
    }
    
    public final m cC(final int ch) {
        this.cH = ch;
        return this;
    }
    
    public final m cD(final int zr) {
        this.Zr = zr;
        return this;
    }
    
    public final m s(final Uri em) {
        this.eM = em;
        return this;
    }
    
    public final m t(final Uri aAw) {
        this.aAw = aAw;
        return this;
    }
    
    public final Folder vd() {
        final int ch = this.cH;
        final String axP = this.axP;
        final Uri em = this.eM;
        final String mName = this.mName;
        final int qo = this.Qo;
        final boolean aAu = this.aAu;
        final int aAv = this.aAv;
        final Uri aAw = this.aAw;
        final Uri aAx = this.aAx;
        final int aAy = this.aAy;
        final int aAz = this.aAz;
        final int zz = this.Zz;
        final Uri aaa = this.aAA;
        final int aab = this.aAB;
        final int aac = this.aAC;
        final int zr = this.Zr;
        final int wo = this.wo;
        final int aad = this.aAD;
        return new Folder(ch, axP, em, mName, qo, aAu, aAv, aAw, aAx, aAy, aAz, zz, aaa, aab, aac, zr, wo, this.aAE, this.aAF, this.aqe, this.aAG, this.aAH, this.aAI, this.aAJ);
    }
    
    public final m ve() {
        this.aAB = 0;
        return this;
    }
    
    public final m vf() {
        this.aAC = 0;
        return this;
    }
}
