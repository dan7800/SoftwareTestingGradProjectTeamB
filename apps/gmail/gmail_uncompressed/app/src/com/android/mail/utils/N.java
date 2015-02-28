package com.android.mail.utils;

import android.view.*;
import android.os.*;

final class n implements ViewTreeObserver$OnPreDrawListener, Runnable
{
    final /* synthetic */ l aPh;
    
    private n(final l aPh) {
        this.aPh = aPh;
    }
    
    public final boolean onPreDraw() {
        l.b(this.aPh, 1);
        this.aPh.mHandler.removeCallbacks((Runnable)this);
        this.aPh.mHandler.postDelayed((Runnable)this, 100L);
        return true;
    }
    
    public final void run() {
        l.b(this.aPh, 0);
    }
}
