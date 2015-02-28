package com.android.email.activity.setup;

final class z implements Runnable
{
    final /* synthetic */ y MY;
    
    z(final y my) {
        this.MY = my;
    }
    
    @Override
    public final void run() {
        if (this.MY.MX.isResumed()) {
            ((A)this.MY.MX.getActivity()).hE();
        }
    }
}
