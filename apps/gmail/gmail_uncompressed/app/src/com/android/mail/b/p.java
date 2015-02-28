package com.android.mail.b;

import android.animation.*;
import android.graphics.drawable.*;
import android.graphics.*;

final class p implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ o alc;
    
    p(final o alc) {
        this.alc = alc;
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float a = this.alc.ala;
        this.alc.ala = (float)valueAnimator.getAnimatedValue();
        if (a != this.alc.ala) {
            this.alc.invalidateSelf();
        }
    }
}
