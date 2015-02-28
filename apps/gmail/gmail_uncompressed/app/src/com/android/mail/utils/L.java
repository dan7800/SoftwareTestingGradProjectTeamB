package com.android.mail.utils;

import android.os.*;
import android.view.*;

public final class l
{
    private View aPe;
    private m aPf;
    private final n aPg;
    private int ao;
    private final Handler mHandler;
    
    public l() {
        this.ao = 0;
        this.aPg = new n(this, (byte)0);
        this.mHandler = new Handler();
    }
    
    public final void a(final m aPf) {
        this.aPf = aPf;
        if (this.aPf != null) {
            this.aPf.a(this, this.ao);
        }
    }
    
    public final void aF(final View aPe) {
        if (this.aPe != aPe) {
            if (this.aPe != null) {
                this.aPe.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this.aPg);
            }
            this.aPe = aPe;
            if (this.aPe != null) {
                this.aPe.getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this.aPg);
            }
        }
    }
}
