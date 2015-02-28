package com.google.android.gm.ads;

import com.android.mail.c.*;
import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.content.res.*;
import android.view.animation.*;
import android.animation.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.android.mail.ui.*;

final class o implements Animator$AnimatorListener
{
    final /* synthetic */ AdTeaserView aZO;
    
    o(final AdTeaserView azo) {
        this.aZO = azo;
    }
    
    public final void onAnimationCancel(final Animator animator) {
    }
    
    public final void onAnimationEnd(final Animator animator) {
        this.aZO.aZE = false;
        this.aZO.anZ.notifyDataSetChanged();
    }
    
    public final void onAnimationRepeat(final Animator animator) {
    }
    
    public final void onAnimationStart(final Animator animator) {
    }
}
