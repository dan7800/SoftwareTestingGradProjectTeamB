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

final class dw implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ TwoPaneLayout aOG;
    
    dw(final TwoPaneLayout aog) {
        this.aOG = aog;
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        if (this.aOG.Av) {
            final int n = (int)this.aOG.aOq.getX() + this.aOG.aOq.getWidth();
            this.aOG.invalidate(n, 0, n + this.aOG.aOB, this.aOG.getBottom());
            return;
        }
        final int n2 = (int)this.aOG.aOq.getX();
        this.aOG.invalidate(n2 - this.aOG.aOB, 0, n2, this.aOG.getBottom());
    }
}
