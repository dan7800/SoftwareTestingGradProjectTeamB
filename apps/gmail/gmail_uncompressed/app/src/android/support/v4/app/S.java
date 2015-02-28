package android.support.v4.app;

import android.os.*;

final class s implements Runnable
{
    final /* synthetic */ q ca;
    final /* synthetic */ int cb;
    final /* synthetic */ int cc;
    
    s(final q ca, final int cb, final int n) {
        this.ca = ca;
        this.cb = cb;
        this.cc = 1;
    }
    
    @Override
    public final void run() {
        final q ca = this.ca;
        final Handler mHandler = this.ca.aG.mHandler;
        ca.b(this.cb, this.cc);
    }
}
