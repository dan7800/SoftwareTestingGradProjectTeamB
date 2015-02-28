package com.android.ex.photo;

import android.view.animation.*;

final class o implements Animation$AnimationListener
{
    final /* synthetic */ k ahp;
    
    o(final k ahp) {
        this.ahp = ahp;
    }
    
    public final void onAnimationEnd(final Animation animation) {
        this.ahp.onEnterAnimationComplete();
    }
    
    public final void onAnimationRepeat(final Animation animation) {
    }
    
    public final void onAnimationStart(final Animation animation) {
    }
}
