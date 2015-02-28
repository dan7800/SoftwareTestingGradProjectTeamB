package com.android.mail.ui;

import android.view.animation.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;
import com.android.mail.utils.*;
import android.animation.*;

final class de implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ boolean aNA;
    final /* synthetic */ View aNy;
    final /* synthetic */ db aNz;
    
    de(final db aNz, final boolean ana, final View aNy) {
        this.aNz = aNz;
        this.aNA = ana;
        this.aNy = aNy;
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        if (this.aNA) {
            this.aNy.setAlpha(this.aNz.aC(this.aNy));
        }
        db.aD(this.aNy);
    }
}
