package com.google.android.gm;

import java.util.concurrent.atomic.*;
import android.os.*;
import com.android.mail.utils.*;

public final class aw
{
    private AtomicInteger fh;
    private boolean kr;
    private final Handler mHandler;
    
    public aw() {
        this.mHandler = new Handler();
        this.kr = true;
        this.fh = new AtomicInteger(0);
    }
    
    public final void f(final Runnable runnable) {
        if (this.kr) {
            this.fh.incrementAndGet();
            this.mHandler.post((Runnable)new ax(this, runnable));
            return;
        }
        E.c(ay.mW, "UiHandler is disabled in post(). Dropping Runnable.", new Object[0]);
    }
    
    public final void setEnabled(final boolean kr) {
        if (!(this.kr = kr)) {
            final int andSet = this.fh.getAndSet(0);
            if (andSet > 0) {
                E.f(ay.mW, "Disable UiHandler. Dropping %d Runnables.", andSet);
            }
            this.mHandler.removeCallbacksAndMessages((Object)null);
        }
    }
}
