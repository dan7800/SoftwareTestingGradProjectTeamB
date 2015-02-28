package android.support.v7.internal.widget;

import android.graphics.*;
import android.database.*;
import android.content.*;
import android.util.*;
import android.widget.*;
import android.view.*;
import android.support.v4.view.*;
import android.os.*;

abstract class AbsSpinnerCompat extends n<SpinnerAdapter>
{
    int yA;
    int yB;
    int yC;
    final Rect yD;
    final c yE;
    private DataSetObserver yF;
    SpinnerAdapter yw;
    int yx;
    int yy;
    int yz;
    
    AbsSpinnerCompat(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.yz = 0;
        this.yA = 0;
        this.yB = 0;
        this.yC = 0;
        this.yD = new Rect();
        this.yE = new c(this);
        this.setFocusable(true);
        this.setWillNotDraw(false);
    }
    
    final void et() {
        this.zS = false;
        this.zN = false;
        this.removeAllViewsInLayout();
        this.Aa = -1;
        this.Ab = Long.MIN_VALUE;
        this.ak(-1);
        this.al(-1);
        this.invalidate();
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup$LayoutParams(-1, -2);
    }
    
    @Override
    public final View getSelectedView() {
        if (this.zY > 0 && this.zV >= 0) {
            return this.getChildAt(this.zV - this.zI);
        }
        return null;
    }
    
    protected void onMeasure(final int yy, final int yx) {
        final int mode = View$MeasureSpec.getMode(yy);
        int left = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        final int paddingRight = this.getPaddingRight();
        final int paddingBottom = this.getPaddingBottom();
        final Rect yd = this.yD;
        if (left <= this.yz) {
            left = this.yz;
        }
        yd.left = left;
        final Rect yd2 = this.yD;
        int ya;
        if (paddingTop > this.yA) {
            ya = paddingTop;
        }
        else {
            ya = this.yA;
        }
        yd2.top = ya;
        final Rect yd3 = this.yD;
        int yb;
        if (paddingRight > this.yB) {
            yb = paddingRight;
        }
        else {
            yb = this.yB;
        }
        yd3.right = yb;
        final Rect yd4 = this.yD;
        int yc;
        if (paddingBottom > this.yC) {
            yc = paddingBottom;
        }
        else {
            yc = this.yC;
        }
        yd4.bottom = yc;
        if (this.zS) {
            this.handleDataChanged();
        }
        final int zt = super.zT;
        while (true) {
            Label_0437: {
                if (zt < 0 || this.yw == null || zt >= this.yw.getCount()) {
                    break Label_0437;
                }
                View view = this.yE.ah(zt);
                if (view == null) {
                    view = this.yw.getView(zt, (View)null, (ViewGroup)this);
                }
                if (view == null) {
                    break Label_0437;
                }
                this.yE.b(zt, view);
                if (view.getLayoutParams() == null) {
                    this.Af = true;
                    view.setLayoutParams(this.generateDefaultLayoutParams());
                    this.Af = false;
                }
                this.measureChild(view, yy, yx);
                int n = view.getMeasuredHeight() + this.yD.top + this.yD.bottom;
                int n2 = view.getMeasuredWidth() + this.yD.left + this.yD.right;
                final int n3 = 0;
                if (n3 != 0) {
                    n = this.yD.top + this.yD.bottom;
                    if (mode == 0) {
                        n2 = this.yD.left + this.yD.right;
                    }
                }
                this.setMeasuredDimension(ad.resolveSizeAndState(Math.max(n2, this.getSuggestedMinimumWidth()), yy, 0), ad.resolveSizeAndState(Math.max(n, this.getSuggestedMinimumHeight()), yx, 0));
                this.yx = yx;
                this.yy = yy;
                return;
            }
            final int n3 = 1;
            int n2 = 0;
            int n = 0;
            continue;
        }
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        final AbsSpinnerCompat$SavedState absSpinnerCompat$SavedState = (AbsSpinnerCompat$SavedState)parcelable;
        super.onRestoreInstanceState(absSpinnerCompat$SavedState.getSuperState());
        if (absSpinnerCompat$SavedState.yI >= 0L) {
            this.zS = true;
            this.zN = true;
            this.zL = absSpinnerCompat$SavedState.yI;
            this.zK = absSpinnerCompat$SavedState.position;
            this.zO = 0;
            this.requestLayout();
        }
    }
    
    public Parcelable onSaveInstanceState() {
        final AbsSpinnerCompat$SavedState absSpinnerCompat$SavedState = new AbsSpinnerCompat$SavedState(super.onSaveInstanceState());
        absSpinnerCompat$SavedState.yI = super.zU;
        if (absSpinnerCompat$SavedState.yI >= 0L) {
            absSpinnerCompat$SavedState.position = super.zT;
            return (Parcelable)absSpinnerCompat$SavedState;
        }
        absSpinnerCompat$SavedState.position = -1;
        return (Parcelable)absSpinnerCompat$SavedState;
    }
    
    public void requestLayout() {
        if (!this.Af) {
            super.requestLayout();
        }
    }
    
    public void setAdapter(final SpinnerAdapter yw) {
        int aa = -1;
        if (this.yw != null) {
            this.yw.unregisterDataSetObserver(this.yF);
            this.et();
        }
        this.yw = yw;
        this.Aa = aa;
        this.Ab = Long.MIN_VALUE;
        if (this.yw != null) {
            this.zZ = this.zY;
            this.zY = this.yw.getCount();
            this.eH();
            this.yF = new o(this);
            this.yw.registerDataSetObserver(this.yF);
            if (this.zY > 0) {
                aa = 0;
            }
            this.ak(aa);
            this.al(aa);
            if (this.zY == 0) {
                this.eJ();
            }
        }
        else {
            this.eH();
            this.et();
            this.eJ();
        }
        this.requestLayout();
    }
    
    public final void setSelection(final int n) {
        this.al(n);
        this.requestLayout();
        this.invalidate();
    }
}
