package android.support.v4.view;

import android.view.*;
import android.animation.*;

final class bj implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ View jM;
    final /* synthetic */ bm jN;
    
    bj(final bm jn, final View jm) {
        this.jN = jn;
        this.jM = jm;
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final bm jn = this.jN;
        final View jm = this.jM;
        jn.bp();
    }
}
