package com.android.mail.ui;

import android.support.v7.widget.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import android.animation.*;
import com.android.mail.utils.*;
import android.view.*;

public class CustomViewToolbar extends Toolbar implements dE, dy
{
    private dD aDb;
    protected TextView aIS;
    protected View aIT;
    private as aob;
    private ac aqm;
    private d atL;
    protected View vl;
    
    public CustomViewToolbar(final Context context) {
        super(context);
        this.atL = new bo(this);
    }
    
    public CustomViewToolbar(final Context context, final AttributeSet set) {
        super(context, set);
        this.atL = new bo(this);
    }
    
    private void r(final Account account) {
        if (this.aIT != null) {
            int n;
            if (this.aqm.xs() && account.ug()) {
                n = 1;
            }
            else {
                n = 0;
            }
            final View ait = this.aIT;
            int visibility = 0;
            if (n == 0) {
                visibility = 4;
            }
            ait.setVisibility(visibility);
        }
    }
    
    private void ze() {
        this.r(this.aob.yd().oN());
    }
    
    public final void a(final as aob, final ac aqm, final dD aDb) {
        this.aob = aob;
        this.aqm = aqm;
        (this.aDb = aDb).a(this);
        this.atL.a(this.aob.yd());
    }
    
    @Override
    public final void cI(final int n) {
        this.ze();
    }
    
    @Override
    public final void j(final int n, final boolean b) {
        if (b) {
            this.aIT.animate().alpha(0.0f).setDuration(150L).setListener((Animator$AnimatorListener)new bq(this));
        }
        else {
            this.ze();
            if (this.aIT.isShown()) {
                this.aIT.animate().alpha(1.0f).setDuration(150L).setListener((Animator$AnimatorListener)null);
            }
            final int[] array = new int[2];
            this.vl.getLocationInWindow(array);
            int width;
            if (al.aH((View)this)) {
                width = array[0] + this.vl.getWidth() - n;
            }
            else {
                width = n - array[0];
            }
            if (this.vl.getWidth() != width) {
                final ViewGroup$LayoutParams layoutParams = this.vl.getLayoutParams();
                layoutParams.width = width;
                this.vl.setLayoutParams(layoutParams);
            }
        }
    }
    
    protected final void onDestroy() {
        this.atL.um();
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.vl = this.findViewById(2131558860);
        this.aIS = (TextView)this.findViewById(2131558861);
        (this.aIT = this.findViewById(2131558862)).setOnClickListener((View$OnClickListener)new bp(this));
    }
    
    @Override
    public final void setTitle(final CharSequence text) {
        this.aIS.setText(text);
    }
    
    @Override
    public final void setTitleTextAppearance(final Context context, final int n) {
        this.aIS.setTextAppearance(context, n);
    }
}
