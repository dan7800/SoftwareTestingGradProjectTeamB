package com.android.mail.compose;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.animation.*;

public class CcBccView extends RelativeLayout
{
    private final View avi;
    private final View avj;
    
    public CcBccView(final Context context) {
        this(context, null);
    }
    
    public CcBccView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public CcBccView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        LayoutInflater.from(context).inflate(2130968638, (ViewGroup)this);
        this.avi = this.findViewById(2131558659);
        this.avj = this.findViewById(2131558662);
    }
    
    public final void b(final boolean b, final boolean b2, final boolean b3) {
        int visibility = 8;
        final boolean shown = this.avi.isShown();
        final View avi = this.avi;
        int visibility2;
        if (b2) {
            visibility2 = 0;
        }
        else {
            visibility2 = visibility;
        }
        avi.setVisibility(visibility2);
        final View avj = this.avj;
        if (b3) {
            visibility = 0;
        }
        avj.setVisibility(visibility);
        if (b) {
            final int integer = this.getResources().getInteger(2131427339);
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this.avj, "alpha", new float[] { 0.0f, 1.0f });
            ofFloat.setDuration((long)integer);
            Object o;
            if (!shown) {
                final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)this.avi, "alpha", new float[] { 0.0f, 1.0f });
                ofFloat2.setDuration((long)integer);
                o = new AnimatorSet();
                ((AnimatorSet)o).playTogether(new Animator[] { ofFloat2, ofFloat });
            }
            else {
                o = ofFloat;
            }
            ((Animator)o).start();
            return;
        }
        if (b2) {
            this.avi.setAlpha(1.0f);
        }
        if (b3) {
            this.avj.setAlpha(1.0f);
        }
        this.requestLayout();
    }
    
    public final boolean sl() {
        return this.avi.getVisibility() == 0;
    }
    
    public final boolean sm() {
        return this.avj.getVisibility() == 0;
    }
}
