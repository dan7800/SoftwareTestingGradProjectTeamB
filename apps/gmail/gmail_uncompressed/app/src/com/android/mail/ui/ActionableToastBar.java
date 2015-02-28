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

public class ActionableToastBar extends FrameLayout
{
    private int Fx;
    private final Runnable aFl;
    private final Handler aFm;
    private View aFn;
    private TimeInterpolator aFo;
    private int aFp;
    private long aFq;
    private long aFr;
    private long aFs;
    private TextView aFt;
    private TextView aFu;
    private TextView aFv;
    private TextView aFw;
    private ToastBarOperation aFx;
    private boolean aL;
    private boolean kq;
    private int ww;
    
    public ActionableToastBar(final Context context) {
        this(context, null);
    }
    
    public ActionableToastBar(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ActionableToastBar(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aL = true;
        this.kq = false;
        Object aFo;
        if (ag.Bh()) {
            aFo = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
        }
        else {
            aFo = new LinearInterpolator();
        }
        this.aFo = (TimeInterpolator)aFo;
        this.aFp = this.getResources().getInteger(2131427368);
        this.aFr = this.getResources().getInteger(2131427369);
        this.aFs = this.getResources().getInteger(2131427370);
        this.ww = this.getResources().getDimensionPixelOffset(2131493036);
        this.Fx = this.getResources().getDimensionPixelOffset(2131493037);
        this.aFm = new Handler();
        this.aFl = new W(this);
    }
    
    private void b(final View$OnClickListener view$OnClickListener) {
        this.aFu.setOnClickListener(view$OnClickListener);
        if (this.aFw != null) {
            this.aFw.setOnClickListener(view$OnClickListener);
        }
    }
    
    private void g(final boolean b, final boolean b2) {
        final TextView aFt = this.aFt;
        int visibility;
        if (!b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        aFt.setVisibility(visibility);
        final TextView aFu = this.aFu;
        int visibility2;
        if (!b && b2) {
            visibility2 = 0;
        }
        else {
            visibility2 = 8;
        }
        aFu.setVisibility(visibility2);
        if (this.aFv != null) {
            final TextView aFv = this.aFv;
            int visibility3;
            if (b) {
                visibility3 = 0;
            }
            else {
                visibility3 = 8;
            }
            aFv.setVisibility(visibility3);
        }
        if (this.aFw != null) {
            final TextView aFw = this.aFw;
            while (true) {
                Label_0122: {
                    if (!b) {
                        break Label_0122;
                    }
                    final int visibility4 = 0;
                    if (!b2) {
                        break Label_0122;
                    }
                    aFw.setVisibility(visibility4);
                    return;
                }
                final int visibility4 = 8;
                continue;
            }
        }
    }
    
    private int xp() {
        return this.getHeight() + ((ViewGroup$MarginLayoutParams)this.getLayoutParams()).bottomMargin;
    }
    
    public final void a(final ab ab, final CharSequence charSequence, final int n, final boolean b, final boolean b2, final ToastBarOperation aFx) {
        if (this.aL || b) {
            this.aFm.removeCallbacks(this.aFl);
            this.aFx = aFx;
            this.b((View$OnClickListener)new X(this, aFx, ab));
            this.aFt.setText(charSequence);
            if (this.aFv != null) {
                this.aFv.setText(charSequence);
            }
            al.b((View)this, charSequence);
            if (n == 0) {
                this.aFu.setText((CharSequence)"");
                if (this.aFw != null) {
                    this.aFw.setText((CharSequence)"");
                }
            }
            else {
                this.aFu.setText(n);
                if (this.aFw != null) {
                    this.aFw.setText(n);
                }
            }
            if (this.aL) {
                this.aL = false;
                final float n2 = this.xp();
                this.setVisibility(0);
                this.setTranslationY(n2);
                this.animate().setDuration((long)this.aFp).setInterpolator(this.aFo).translationYBy(-n2).setListener((Animator$AnimatorListener)new Y(this));
                if (this.aFn != null) {
                    this.aFn.setTranslationY(n2);
                    this.aFn.animate().setDuration((long)this.aFp).setInterpolator(this.aFo).translationYBy(-n2);
                }
            }
            if (b2) {
                this.aFm.postDelayed(this.aFl, this.aFs);
            }
        }
    }
    
    public final void aw(final View aFn) {
        this.aFn = aFn;
    }
    
    public final void f(final boolean b, final boolean b2) {
        this.aL = true;
        this.aFq = 0L;
        this.aFm.removeCallbacks(this.aFl);
        if (this.getVisibility() == 0) {
            this.b((View$OnClickListener)null);
            if (b) {
                final float n = this.xp();
                this.setTranslationY(0.0f);
                this.animate().setDuration((long)this.aFp).setInterpolator(this.aFo).translationYBy(n).setListener((Animator$AnimatorListener)new Z(this));
                if (this.aFn != null) {
                    this.aFn.setTranslationY(0.0f);
                    this.aFn.animate().setDuration((long)this.aFp).setInterpolator(this.aFo).translationYBy(n).setListener((Animator$AnimatorListener)new aa(this));
                }
            }
            else {
                if (this.aFn != null) {
                    this.aFn.setTranslationY(0.0f);
                }
                this.setVisibility(8);
            }
            if (!b2 && this.aFx != null) {
                this.aFx.av(this.getContext());
            }
        }
    }
    
    public final boolean j(final MotionEvent motionEvent) {
        if (this.isShown()) {
            final int[] array = new int[2];
            final float x = motionEvent.getX();
            final float y = motionEvent.getY();
            this.getLocationOnScreen(array);
            if (x > array[0] && x < array[0] + this.getWidth() && y > array[1] && y < array[1] + this.getHeight()) {
                return true;
            }
        }
        return false;
    }
    
    public void onDetachedFromWindow() {
        this.aFm.removeCallbacks(this.aFl);
        super.onDetachedFromWindow();
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aFt = (TextView)this.findViewById(2131558777);
        this.aFu = (TextView)this.findViewById(2131558778);
        this.aFv = (TextView)this.findViewById(2131558827);
        this.aFw = (TextView)this.findViewById(2131558828);
    }
    
    protected void onMeasure(final int n, final int n2) {
        final boolean b = !TextUtils.isEmpty(this.aFu.getText());
        this.g(false, b);
        super.onMeasure(n, n2);
        if (this.aFv != null) {
            if (this.aFt.getLineCount() > 1) {
                this.g(true, b);
                super.onMeasure(n, n2);
            }
        }
        else if (this.ww >= 0 && this.Fx >= 0) {
            if (this.getMeasuredWidth() < this.ww) {
                super.onMeasure(View$MeasureSpec.makeMeasureSpec(this.ww, 1073741824), n2);
                return;
            }
            if (this.getMeasuredWidth() > this.Fx) {
                super.onMeasure(View$MeasureSpec.makeMeasureSpec(this.Fx, 1073741824), n2);
            }
        }
    }
    
    public final boolean wo() {
        return this.kq;
    }
    
    public final ToastBarOperation xn() {
        return this.aFx;
    }
    
    public final boolean xo() {
        return System.currentTimeMillis() - this.aFq < this.aFr;
    }
}
