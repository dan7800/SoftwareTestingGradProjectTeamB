package android.support.v4.app;

import android.view.animation.*;

final class t implements Animation$AnimationListener
{
    final /* synthetic */ q ca;
    final /* synthetic */ Fragment cd;
    
    t(final q ca, final Fragment cd) {
        this.ca = ca;
        this.cd = cd;
    }
    
    public final void onAnimationEnd(final Animation animation) {
        if (this.cd.ap != null) {
            this.cd.ap = null;
            this.ca.a(this.cd, this.cd.aq, 0, 0, false);
        }
    }
    
    public final void onAnimationRepeat(final Animation animation) {
    }
    
    public final void onAnimationStart(final Animation animation) {
    }
}
