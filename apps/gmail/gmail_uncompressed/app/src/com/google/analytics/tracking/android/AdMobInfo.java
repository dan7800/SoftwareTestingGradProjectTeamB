package com.google.analytics.tracking.android;

import java.util.*;

final class AdMobInfo
{
    private static final AdMobInfo aRZ;
    private int aSa;
    private Random aSb;
    
    static {
        aRZ = new AdMobInfo();
    }
    
    private AdMobInfo() {
        this.aSb = new Random();
    }
    
    static AdMobInfo Bw() {
        return AdMobInfo.aRZ;
    }
    
    final int Bx() {
        return this.aSa = 1 + this.aSb.nextInt(2147483646);
    }
}
