package com.android.mail.ui;

import android.os.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.animation.*;
import com.android.mail.utils.*;
import android.animation.*;
import android.text.*;
import android.view.*;

final class aa extends AnimatorListenerAdapter
{
    final /* synthetic */ ActionableToastBar aFy;
    
    aa(final ActionableToastBar aFy) {
        this.aFy = aFy;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aFy.aFn.setTranslationY(0.0f);
    }
}
