package com.android.mail.ui;

import android.view.*;
import android.animation.*;

final class cy extends AnimatorListenerAdapter
{
    final /* synthetic */ View aMa;
    final /* synthetic */ int aMb;
    final /* synthetic */ cx aMc;
    
    cy(final cx aMc, final View aMa, final int aMb) {
        this.aMc = aMc;
        this.aMa = aMa;
        this.aMb = aMb;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aMa.setVisibility(this.aMb);
    }
}
