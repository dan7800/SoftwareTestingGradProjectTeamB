package com.android.mail.ui;

import android.view.animation.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;
import com.android.mail.utils.*;
import android.animation.*;

final class dc extends AnimatorListenerAdapter
{
    final /* synthetic */ dh aNx;
    final /* synthetic */ View aNy;
    final /* synthetic */ db aNz;
    
    dc(final db aNz, final dh aNx, final View aNy) {
        this.aNz = aNz;
        this.aNx = aNx;
        this.aNy = aNy;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aNz.aNn.b(this.aNx);
        this.aNy.setLayerType(0, (Paint)null);
    }
}
