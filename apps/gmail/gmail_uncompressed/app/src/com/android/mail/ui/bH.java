package com.android.mail.ui;

import android.graphics.*;
import android.view.*;
import android.app.*;
import android.os.*;
import com.android.mail.utils.*;
import android.animation.*;
import android.content.res.*;

final class bh extends AnimatorListenerAdapter
{
    final /* synthetic */ be aIE;
    final /* synthetic */ Runnable aIF;
    
    bh(final be aie, final Runnable aif) {
        this.aIE = aie;
        this.aIF = aif;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aIE.aIC.setVisibility(8);
        this.aIE.aIC.setLayerType(0, (Paint)null);
        if (this.aIF != null) {
            this.aIF.run();
        }
    }
}
