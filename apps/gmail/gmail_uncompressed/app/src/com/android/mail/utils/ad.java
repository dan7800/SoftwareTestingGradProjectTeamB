package com.android.mail.utils;

import android.os.*;
import java.util.*;

public final class ad
{
    private static Timer aQA;
    private static final String mW;
    private final d LF;
    private final Timer aQB;
    private final Runnable aQC;
    private final int aQD;
    private final int aQE;
    private long aQF;
    private ae aQG;
    private int aaP;
    private final Handler mHandler;
    private final String mName;
    
    static {
        mW = D.AU();
        ad.aQA = new Timer();
    }
    
    public ad(final String s, final Runnable runnable, final Handler handler) {
        this(s, runnable, handler, 200, 300, d.aOX, ad.aQA);
    }
    
    private ad(final String mName, final Runnable aqc, final Handler mHandler, final int n, final int n2, final d lf, final Timer aqb) {
        this.mName = mName;
        this.aQC = aqc;
        this.LF = lf;
        this.aQB = aqb;
        this.mHandler = mHandler;
        this.aQD = 200;
        this.aQE = 300;
        this.aaP = this.aQD;
    }
    
    public final void Bd() {
        final d lf = this.LF;
        final long time = d.getTime();
        if (time - this.aQF <= 500L) {
            this.aaP *= 2;
            if (this.aaP >= this.aQE) {
                this.aaP = this.aQE;
            }
        }
        else {
            this.aaP = this.aQD;
        }
        this.aQF = time;
        int n;
        if (this.aQG != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            this.aQG = new ae(this, (byte)0);
            this.aQB.schedule(this.aQG, this.aaP);
        }
    }
}
