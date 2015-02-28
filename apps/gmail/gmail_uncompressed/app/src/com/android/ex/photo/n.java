package com.android.ex.photo;

final class n implements Runnable
{
    final /* synthetic */ k ahp;
    
    n(final k ahp) {
        this.ahp = ahp;
    }
    
    @Override
    public final void run() {
        this.ahp.onEnterAnimationComplete();
    }
}
