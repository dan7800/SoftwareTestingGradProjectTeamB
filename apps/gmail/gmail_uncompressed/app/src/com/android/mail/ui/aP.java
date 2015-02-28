package com.android.mail.ui;

import android.animation.*;

final class ap implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ ButteryProgressBar aGx;
    
    ap(final ButteryProgressBar aGx) {
        this.aGx = aGx;
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.aGx.invalidate();
    }
}
