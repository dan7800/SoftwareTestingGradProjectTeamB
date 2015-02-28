package com.android.email.activity.setup;

final class i implements Runnable
{
    final /* synthetic */ g My;
    final /* synthetic */ j Mz;
    
    i(final g my, final j mz) {
        this.My = my;
        this.Mz = mz;
    }
    
    @Override
    public final void run() {
        if (!this.My.Mr.isResumed()) {
            return;
        }
        this.Mz.ht();
        this.Mz.hu();
    }
}
