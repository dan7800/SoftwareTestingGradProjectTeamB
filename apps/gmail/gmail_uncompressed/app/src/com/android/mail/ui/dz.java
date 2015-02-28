package com.android.mail.ui;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.view.animation.*;
import android.content.res.*;
import java.util.*;
import android.animation.*;
import android.graphics.*;
import com.android.mail.utils.*;
import android.view.*;

final class dz extends AnimatorListenerAdapter implements Runnable
{
    final /* synthetic */ TwoPaneLayout aOG;
    
    private dz(final TwoPaneLayout aog) {
        this.aOG = aog;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aOG.Aw();
    }
    
    public final void onAnimationStart(final Animator animator) {
        if (!ag.Bg()) {
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[] { 0.0f, 1.0f });
            ofFloat.setDuration(300L).addUpdateListener(this.aOG.aOF);
            ofFloat.start();
        }
    }
    
    public final void run() {
        this.aOG.Aw();
    }
}
