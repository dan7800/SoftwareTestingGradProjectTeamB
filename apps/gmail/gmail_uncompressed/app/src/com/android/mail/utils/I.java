package com.android.mail.utils;

import android.os.*;

public abstract class i extends Handler
{
    private final int aPb;
    private long aPc;
    
    public i(final Looper looper, final int aPb) {
        super(looper);
        this.aPc = -1L;
        this.aPb = aPb;
    }
    
    public final void AP() {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        this.removeMessages(0);
        if (this.aPc == -1L || this.aPc + this.aPb < elapsedRealtime) {
            this.sendEmptyMessage(0);
            return;
        }
        this.sendEmptyMessageDelayed(0, (long)this.aPb);
    }
    
    protected abstract void AQ();
    
    public void dispatchMessage(final Message message) {
        this.aPc = SystemClock.elapsedRealtime();
        this.AQ();
    }
}
