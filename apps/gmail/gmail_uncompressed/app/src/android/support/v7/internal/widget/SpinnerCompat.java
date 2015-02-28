package android.support.v7.internal.widget;

import android.graphics.*;
import android.util.*;
import android.support.v7.a.*;
import android.widget.*;
import android.content.*;
import android.support.v4.view.*;
import android.graphics.drawable.*;
import android.os.*;
import android.view.*;

final class SpinnerCompat extends AbsSpinnerCompat implements DialogInterface$OnClickListener
{
    private P AK;
    private L AL;
    int AM;
    private boolean AN;
    private final U AO;
    private int dV;
    private Rect is;
    private android.support.v7.widget.L ws;
    
    SpinnerCompat(final Context context, final int n) {
        this(context, null, n);
    }
    
    private SpinnerCompat(final Context context, final AttributeSet set, final int n) {
        super(context, null, n);
        this.is = new Rect();
        final Z a = Z.a(context, null, l.sX, n);
        this.setBackgroundDrawable(a.getDrawable(l.sY));
        switch (a.getInt(l.te, 0)) {
            case 0: {
                this.AK = new K(this, (byte)0);
                break;
            }
            case 1: {
                final M ak = new M(this, context, null, n);
                this.AM = a.getLayoutDimension(l.sZ, -2);
                ak.setBackgroundDrawable(a.getDrawable(l.tb));
                this.AK = ak;
                this.ws = new I(this, (View)this, ak);
                break;
            }
        }
        this.dV = a.getInt(l.ta, 17);
        this.AK.m(a.getString(l.td));
        this.AN = a.getBoolean(l.tc, false);
        a.recycle();
        if (this.AL != null) {
            this.AK.setAdapter((ListAdapter)this.AL);
            this.AL = null;
        }
        this.AO = a.eU();
    }
    
    private void b(final View view, final boolean b) {
        ViewGroup$LayoutParams viewGroup$LayoutParams = view.getLayoutParams();
        if (viewGroup$LayoutParams == null) {
            viewGroup$LayoutParams = this.generateDefaultLayoutParams();
        }
        if (b) {
            this.addViewInLayout(view, 0, viewGroup$LayoutParams);
        }
        view.setSelected(this.hasFocus());
        if (this.AN) {
            view.setEnabled(this.isEnabled());
        }
        view.measure(ViewGroup.getChildMeasureSpec(this.yy, this.yD.left + this.yD.right, viewGroup$LayoutParams.width), ViewGroup.getChildMeasureSpec(this.yx, this.yD.top + this.yD.bottom, viewGroup$LayoutParams.height));
        final int n = this.yD.top + (this.getMeasuredHeight() - this.yD.bottom - this.yD.top - view.getMeasuredHeight()) / 2;
        view.layout(0, n, 0 + view.getMeasuredWidth(), n + view.getMeasuredHeight());
    }
    
    private View e(final int n, final boolean b) {
        if (!this.zS) {
            final View ah = this.yE.ah(n);
            if (ah != null) {
                this.b(ah, b);
                return ah;
            }
        }
        final View view = this.yw.getView(n, (View)null, (ViewGroup)this);
        this.b(view, b);
        return view;
    }
    
    public final void a(final p p) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }
    
    final void b(final p p) {
        super.a(p);
    }
    
    public final int getBaseline() {
        int n = -1;
        View view;
        if (this.getChildCount() > 0) {
            view = this.getChildAt(0);
        }
        else {
            final SpinnerAdapter yw = this.yw;
            view = null;
            if (yw != null) {
                final int count = this.yw.getCount();
                view = null;
                if (count > 0) {
                    view = this.e(0, false);
                    this.yE.b(0, view);
                }
            }
        }
        if (view != null) {
            final int baseline = view.getBaseline();
            if (baseline >= 0) {
                n = baseline + view.getTop();
            }
        }
        return n;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int selection) {
        this.setSelection(selection);
        dialogInterface.dismiss();
    }
    
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.AK != null && this.AK.isShowing()) {
            this.AK.dismiss();
        }
    }
    
    protected final void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.aC = true;
        int left = this.yD.left;
        final int n5 = this.getRight() - this.getLeft() - this.yD.left - this.yD.right;
        if (this.zS) {
            this.handleDataChanged();
        }
        if (this.zY == 0) {
            this.et();
        }
        else {
            if (this.zT >= 0) {
                this.ak(this.zT);
            }
            final int childCount = this.getChildCount();
            final c ye = super.yE;
            final int zi = super.zI;
            for (int i = 0; i < childCount; ++i) {
                ye.b(zi + i, this.getChildAt(i));
            }
            this.removeAllViewsInLayout();
            this.zI = this.zV;
            if (this.yw != null) {
                final View e = this.e(this.zV, true);
                final int measuredWidth = e.getMeasuredWidth();
                switch (0x7 & v.getAbsoluteGravity(this.dV, ad.m((View)this))) {
                    case 1: {
                        left = left + n5 / 2 - measuredWidth / 2;
                        break;
                    }
                    case 5: {
                        left = left + n5 - measuredWidth;
                        break;
                    }
                }
                e.offsetLeftAndRight(left);
            }
            this.yE.clear();
            this.invalidate();
            this.eJ();
            this.zS = false;
            this.zN = false;
            this.al(this.zV);
        }
        this.aC = false;
    }
    
    @Override
    protected final void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        if (this.AK != null && View$MeasureSpec.getMode(n) == Integer.MIN_VALUE) {
            final int measuredWidth = this.getMeasuredWidth();
            final SpinnerAdapter yw = super.yw;
            final Drawable background = this.getBackground();
            int n3 = 0;
            if (yw != null) {
                final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(0, 0);
                final int max = Math.max(0, super.zT);
                final int min = Math.min(yw.getCount(), max + 15);
                int i = Math.max(0, max - (15 - (min - max)));
                View view = null;
                int max2 = 0;
                int n4 = 0;
                while (i < min) {
                    int itemViewType = yw.getItemViewType(i);
                    View view2;
                    if (itemViewType != n4) {
                        view2 = null;
                    }
                    else {
                        itemViewType = n4;
                        view2 = view;
                    }
                    view = yw.getView(i, view2, (ViewGroup)this);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup$LayoutParams(-2, -2));
                    }
                    view.measure(measureSpec, measureSpec2);
                    max2 = Math.max(max2, view.getMeasuredWidth());
                    ++i;
                    n4 = itemViewType;
                }
                if (background != null) {
                    background.getPadding(this.is);
                    n3 = max2 + (this.is.left + this.is.right);
                }
                else {
                    n3 = max2;
                }
            }
            this.setMeasuredDimension(Math.min(Math.max(measuredWidth, n3), View$MeasureSpec.getSize(n)), this.getMeasuredHeight());
        }
    }
    
    @Override
    public final void onRestoreInstanceState(final Parcelable parcelable) {
        final SpinnerCompat$SavedState spinnerCompat$SavedState = (SpinnerCompat$SavedState)parcelable;
        super.onRestoreInstanceState(spinnerCompat$SavedState.getSuperState());
        if (spinnerCompat$SavedState.AY) {
            final ViewTreeObserver viewTreeObserver = this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)new J(this));
            }
        }
    }
    
    @Override
    public final Parcelable onSaveInstanceState() {
        final SpinnerCompat$SavedState spinnerCompat$SavedState = new SpinnerCompat$SavedState(super.onSaveInstanceState());
        spinnerCompat$SavedState.AY = (this.AK != null && this.AK.isShowing());
        return (Parcelable)spinnerCompat$SavedState;
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        return (this.ws != null && this.ws.onTouch((View)this, motionEvent)) || super.onTouchEvent(motionEvent);
    }
    
    public final boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.AK.isShowing()) {
                this.AK.show();
            }
        }
        return performClick;
    }
    
    @Override
    public final void setAdapter(final SpinnerAdapter adapter) {
        super.setAdapter(adapter);
        this.yE.clear();
        if (this.getContext().getApplicationInfo().targetSdkVersion >= 21 && adapter != null && adapter.getViewTypeCount() != 1) {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        }
        if (this.AK != null) {
            this.AK.setAdapter((ListAdapter)new L(adapter));
            return;
        }
        this.AL = new L(adapter);
    }
    
    public final void setEnabled(final boolean b) {
        super.setEnabled(b);
        if (this.AN) {
            for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
                this.getChildAt(i).setEnabled(b);
            }
        }
    }
}
