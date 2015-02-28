package com.google.android.gms.people.accountswitcherview;

import java.util.*;
import com.google.android.gms.people.model.*;
import android.animation.*;
import android.os.*;
import android.view.animation.*;
import android.widget.*;
import android.view.*;

public final class b extends FrameLayout implements View$OnClickListener, AdapterView$OnItemClickListener, N, Q
{
    private List<d> bqh;
    private d bqi;
    private c cgW;
    private e cgX;
    private com.google.android.gms.people.accountswitcherview.d cgY;
    private FrameLayout cgZ;
    private SelectedAccountNavigationView cha;
    private r chb;
    private ShrinkingItem chc;
    private boolean chd;
    private ViewGroup che;
    private ExpanderView chf;
    private g chg;
    private boolean chh;
    private f chi;
    private int chj;
    private int chk;
    
    private void a(final d bqi, final boolean b) {
        final d bqi2 = this.bqi;
        this.bqi = bqi;
        if (this.bqh != null) {
            this.bqh = r.a(this.bqh, bqi2, this.bqi);
            if (!b) {
                this.cha.d(this.bqi);
            }
            this.chb.S(this.bqh);
            return;
        }
        this.cha.d((d)null);
    }
    
    private void a(final boolean b, final Interpolator interpolator) {
        boolean b2;
        boolean b3;
        if (b) {
            b2 = true;
            b3 = false;
        }
        else {
            b3 = true;
            b2 = false;
        }
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this.chc, "animatedHeightFraction", new float[] { (float)(b3 ? 1 : 0), (float)(b2 ? 1 : 0) });
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator((TimeInterpolator)interpolator);
        ofFloat.start();
    }
    
    public static boolean cY() {
        return Build$VERSION.CODENAME.equals("L") || Build$VERSION.SDK_INT >= 21;
    }
    
    private void eQ(final int n) {
        this.cgZ.offsetTopAndBottom(n);
        this.chk = this.cgZ.getTop();
    }
    
    private void t(final View view, final int n) {
        view.offsetTopAndBottom(n);
        this.chj = view.getTop();
    }
    
    public final void a(final SelectedAccountNavigationView selectedAccountNavigationView) {
        switch (this.cha.getNavigationMode()) {
            case 0: {
                final AlphaAnimation animation = new AlphaAnimation(0.0f, 1.0f);
                ((Animation)animation).setDuration(200L);
                this.cgZ.setAnimation((Animation)animation);
                this.a(false, (Interpolator)new AccelerateInterpolator(0.8f));
                this.cgZ.setVisibility(0);
                this.chc.setVisibility(8);
                break;
            }
            case 1: {
                final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                ((Animation)alphaAnimation).setDuration(200L);
                ((Animation)alphaAnimation).setStartOffset(133L);
                this.a(true, (Interpolator)new DecelerateInterpolator(0.8f));
                this.cgZ.setVisibility(8);
                this.chc.setVisibility(0);
                break;
            }
        }
        if (this.chi != null) {
            final f chi = this.chi;
            this.cha.getNavigationMode();
        }
    }
    
    public final void a(final d d) {
        this.a(d, true);
        if (this.cgW != null) {
            final c cgW = this.cgW;
            final d bqi = this.bqi;
        }
    }
    
    public final int getNestedScrollAxes() {
        return 2;
    }
    
    public final void onClick(final View view) {
        int n = 1;
        if (view == this.che) {
            if (this.chg != null) {
                final g chg = this.chg;
            }
        }
        else if (view == this.chf) {
            int navigationMode;
            if (this.cha.getNavigationMode() == n) {
                navigationMode = 0;
            }
            else {
                navigationMode = n;
            }
            this.cha.setNavigationMode(navigationMode);
            final ExpanderView chf = this.chf;
            if (this.cha.getNavigationMode() != n) {
                n = 0;
            }
            chf.aC(n != 0);
            this.a(this.cha);
        }
    }
    
    public final void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        if (this.chb.getItemViewType(n) == 0) {
            this.a(this.chb.eR(n), false);
            if (this.cgW != null) {
                final c cgW = this.cgW;
                final d bqi = this.bqi;
            }
        }
        else if (this.chb.getItemViewType(n) == 1) {
            if (this.cgY != null) {
                final com.google.android.gms.people.accountswitcherview.d cgY = this.cgY;
            }
        }
        else if (this.chb.getItemViewType(n) == 2 && this.cgX != null) {
            final e cgX = this.cgX;
        }
    }
    
    protected final void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        Object o;
        if (this.chd) {
            o = this.che;
        }
        else {
            o = this.cha;
        }
        if (this.chj != ((View)o).getTop()) {
            ((View)o).offsetTopAndBottom(this.chj - ((View)o).getTop());
        }
        if (this.chk != this.cgZ.getTop()) {
            this.cgZ.offsetTopAndBottom(this.chk - this.cgZ.getTop());
        }
    }
    
    public final void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        for (int i = 0; i < this.getChildCount(); ++i) {
            if (this.getChildAt(i).equals(this.cgZ)) {
                int n3;
                if (this.chd) {
                    n3 = this.che.getMeasuredHeight();
                }
                else {
                    n3 = this.cha.getMeasuredHeight();
                }
                this.cgZ.setPadding(this.cgZ.getPaddingLeft(), n3, this.cgZ.getPaddingRight(), this.cgZ.getPaddingBottom());
                if (!this.chh) {
                    n3 = 0;
                }
                this.cgZ.measure(n, n3 + View$MeasureSpec.makeMeasureSpec(this.getHeight(), 1073741824));
                break;
            }
        }
    }
    
    public final boolean onNestedFling(final View view, final float n, final float n2, final boolean b) {
        Object o;
        if (this.chd) {
            o = this.che;
        }
        else {
            o = this.cha;
        }
        if (!b && n2 < 0.0f && ((View)o).getBottom() < 0) {
            this.t((View)o, -((View)o).getTop());
            this.eQ(-((View)o).getTop());
            return true;
        }
        if (b && n2 > 0.0f) {
            if (((View)o).getTop() > -((View)o).getMeasuredHeight()) {
                this.t((View)o, -((View)o).getMeasuredHeight() - ((View)o).getTop());
            }
            if (this.cgZ.getTop() > -((View)o).getMeasuredHeight()) {
                this.eQ(-((View)o).getMeasuredHeight() - this.cgZ.getTop());
            }
        }
        return false;
    }
    
    public final void onNestedPreScroll(final View view, final int n, final int n2, final int[] array) {
        Object o;
        if (this.chd) {
            o = this.che;
        }
        else {
            o = this.cha;
        }
        if (this.cha.getNavigationMode() != 1) {
            int n3;
            if (n2 > 0 && ((View)o).getBottom() > 0) {
                if (((View)o).getBottom() > n2) {
                    n3 = -n2;
                }
                else {
                    n3 = -((View)o).getBottom();
                }
            }
            else {
                n3 = 0;
            }
            if (n3 != 0) {
                if (n3 + ((View)o).getTop() < -((View)o).getMeasuredHeight()) {
                    this.t((View)o, -((View)o).getMeasuredHeight() - ((View)o).getTop());
                }
                else {
                    this.t((View)o, n3);
                }
                if (n3 + this.cgZ.getTop() < -((View)o).getMeasuredHeight()) {
                    this.eQ(-((View)o).getMeasuredHeight() - this.cgZ.getTop());
                }
                else {
                    this.eQ(n3);
                }
                array[0] = 0;
                array[1] = n3;
            }
        }
    }
    
    public final void onNestedScroll(final View view, final int n, final int n2, final int n3, int top) {
        Object o;
        if (this.chd) {
            o = this.che;
        }
        else {
            o = this.cha;
        }
        if (top < 0 && ((View)o).getTop() < 0) {
            if (top <= ((View)o).getTop()) {
                top = ((View)o).getTop();
            }
        }
        else {
            top = 0;
        }
        if (top != 0) {
            if (((View)o).getTop() - top > 0) {
                this.t((View)o, -((View)o).getTop());
            }
            else {
                this.t((View)o, -top);
            }
            if (this.cgZ.getTop() - top <= ((View)o).getMeasuredHeight()) {
                this.eQ(-top);
                return;
            }
            this.eQ(((View)o).getMeasuredHeight() - this.cgZ.getTop());
        }
    }
    
    public final boolean onStartNestedScroll(final View view, final View view2, final int n) {
        return this.chh;
    }
}
