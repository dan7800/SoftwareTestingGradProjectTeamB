package com.android.mail.ui;

import android.animation.*;

final class bq extends AnimatorListenerAdapter
{
    final /* synthetic */ CustomViewToolbar aIU;
    
    bq(final CustomViewToolbar aiu) {
        this.aIU = aiu;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aIU.aIT.setVisibility(4);
    }
}
