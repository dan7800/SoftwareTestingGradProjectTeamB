package com.android.mail.utils;

import android.view.*;
import android.animation.*;
import android.graphics.*;

public final class r extends AnimatorListenerAdapter
{
    private final View ke;
    
    public r(final View ke) {
        this.ke = ke;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.ke.setLayerType(0, (Paint)null);
    }
    
    public final void onAnimationStart(final Animator animator) {
        this.ke.setLayerType(2, (Paint)null);
    }
}
