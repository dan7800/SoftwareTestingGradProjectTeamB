package com.android.email.activity.setup;

final class o implements Runnable
{
    final /* synthetic */ n MC;
    
    o(final n mc) {
        this.MC = mc;
    }
    
    @Override
    public final void run() {
        if (this.MC.MB.isResumed()) {
            ((p)this.MC.MB.getActivity()).hw();
        }
    }
}
