package android.support.v4.view;

import android.view.*;
import android.animation.*;

final class bf extends AnimatorListenerAdapter
{
    final /* synthetic */ bk jL;
    final /* synthetic */ View jM;
    
    bf(final bk jl, final View jm) {
        this.jL = jl;
        this.jM = jm;
    }
    
    public final void onAnimationCancel(final Animator animator) {
        this.jL.C(this.jM);
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.jL.B(this.jM);
    }
    
    public final void onAnimationStart(final Animator animator) {
        this.jL.A(this.jM);
    }
}
