package com.android.mail.ui;

import android.view.animation.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;
import com.android.mail.utils.*;
import android.animation.*;

final class df implements Animator$AnimatorListener
{
    final /* synthetic */ View aNy;
    final /* synthetic */ db aNz;
    
    df(final db aNz, final View aNy) {
        this.aNz = aNz;
        this.aNy = aNy;
    }
    
    public final void onAnimationCancel(final Animator animator) {
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aNy.setAlpha(1.0f);
        final dg a = this.aNz.aNn;
        this.aNz.aNq;
        a.Af();
    }
    
    public final void onAnimationRepeat(final Animator animator) {
    }
    
    public final void onAnimationStart(final Animator animator) {
    }
}
