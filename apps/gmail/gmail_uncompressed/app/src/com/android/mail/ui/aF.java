package com.android.mail.ui;

import android.animation.*;
import android.widget.*;
import android.util.*;
import com.android.a.*;
import com.android.mail.b.*;
import android.content.*;
import com.android.mail.utils.*;
import android.database.*;
import com.google.common.collect.*;
import android.view.*;
import android.content.res.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import java.util.*;
import android.os.*;

final class af extends AnimatorListenerAdapter
{
    final /* synthetic */ ae aGd;
    
    af(final ae aGd) {
        this.aGd = aGd;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        Object o;
        if (animator instanceof AnimatorSet) {
            o = ((AnimatorSet)animator).getChildAnimations().get(0).getTarget();
        }
        else {
            o = ((ObjectAnimator)animator).getTarget();
        }
        ae.a(this.aGd, o, this.aGd.aFG);
        ae.a(this.aGd, o, this.aGd.aFD);
        ae.a(this.aGd, o, this.aGd.aFH);
        ae.a(this.aGd, o, this.aGd.aFF);
        if (this.aGd.xy() && o instanceof LeaveBehindItem) {
            final LeaveBehindItem leaveBehindItem = (LeaveBehindItem)o;
            this.aGd.W(leaveBehindItem.zC());
            leaveBehindItem.commit();
            if (!this.aGd.xy()) {
                final LeaveBehindItem xf = this.aGd.xF();
                if (xf != null && xf.zF()) {
                    xf.dc(0);
                }
            }
            this.aGd.notifyDataSetChanged();
        }
        if (!this.aGd.wo()) {
            this.aGd.aob.a(this.aGd);
        }
    }
    
    public final void onAnimationStart(final Animator animator) {
        if (!this.aGd.aFF.isEmpty()) {
            this.aGd.aFD.clear();
            this.aGd.aFE.clear();
            this.aGd.aFG.clear();
        }
    }
}
