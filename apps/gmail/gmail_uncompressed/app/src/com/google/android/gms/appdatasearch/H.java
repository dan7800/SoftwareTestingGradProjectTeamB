package com.google.android.gms.appdatasearch;

import java.util.*;

public final class h
{
    private String bvP;
    private boolean bvQ;
    private int bvR;
    private boolean bvS;
    private String bvT;
    private final List<Feature> bvU;
    private BitSet bvV;
    private String bvW;
    private final String mName;
    
    public h(final String mName) {
        this.mName = mName;
        this.bvR = 1;
        this.bvU = new ArrayList<Feature>();
    }
    
    public final h Jo() {
        this.bvQ = true;
        return this;
    }
    
    public final RegisterSectionInfo Jp() {
        int n = 0;
        final BitSet bvV = this.bvV;
        int[] array = null;
        if (bvV != null) {
            array = new int[this.bvV.cardinality()];
            int n2;
            for (int i = this.bvV.nextSetBit(0); i >= 0; i = this.bvV.nextSetBit(i + 1), n = n2) {
                n2 = n + 1;
                array[n] = i;
            }
        }
        return new RegisterSectionInfo(this.mName, this.bvP, this.bvQ, this.bvR, this.bvS, this.bvT, this.bvU.toArray(new Feature[this.bvU.size()]), array, this.bvW);
    }
    
    public final h fF(final String bvP) {
        this.bvP = bvP;
        return this;
    }
}
