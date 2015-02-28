package android.support.v7.internal.widget;

import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v7.internal.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.widget.*;
import android.os.*;
import android.view.*;

public class ActionBarContainer extends FrameLayout
{
    Drawable wQ;
    private boolean yK;
    private View yL;
    private View yM;
    private View yN;
    Drawable yO;
    Drawable yP;
    boolean yQ;
    boolean yR;
    private int yS;
    
    public ActionBarContainer(final Context context) {
        this(context, null);
    }
    
    public ActionBarContainer(final Context context, final AttributeSet set) {
        super(context, set);
        e backgroundDrawable;
        if (a.cY()) {
            backgroundDrawable = new f(this);
        }
        else {
            backgroundDrawable = new e(this);
        }
        this.setBackgroundDrawable((Drawable)backgroundDrawable);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.qP);
        this.wQ = obtainStyledAttributes.getDrawable(l.qQ);
        this.yO = obtainStyledAttributes.getDrawable(l.qS);
        this.yS = obtainStyledAttributes.getDimensionPixelSize(l.qY, -1);
        if (this.getId() == g.qx) {
            this.yQ = true;
            this.yP = obtainStyledAttributes.getDrawable(l.qR);
        }
        obtainStyledAttributes.recycle();
        boolean willNotDraw;
        if (this.yQ) {
            willNotDraw = (this.yP == null);
        }
        else {
            willNotDraw = (this.wQ == null && this.yO == null);
        }
        this.setWillNotDraw(willNotDraw);
    }
    
    private static boolean ab(final View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }
    
    private static int ac(final View view) {
        final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)view.getLayoutParams();
        return view.getMeasuredHeight() + frameLayout$LayoutParams.topMargin + frameLayout$LayoutParams.bottomMargin;
    }
    
    public final void A(final boolean yk) {
        this.yK = yk;
        int descendantFocusability;
        if (yk) {
            descendantFocusability = 393216;
        }
        else {
            descendantFocusability = 262144;
        }
        this.setDescendantFocusability(descendantFocusability);
    }
    
    public final void a(final D yl) {
        if (this.yL != null) {
            this.removeView(this.yL);
        }
        if ((this.yL = (View)yl) != null) {
            this.addView((View)yl);
            final ViewGroup$LayoutParams layoutParams = yl.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            yl.F(false);
        }
    }
    
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.wQ != null && this.wQ.isStateful()) {
            this.wQ.setState(this.getDrawableState());
        }
        if (this.yO != null && this.yO.isStateful()) {
            this.yO.setState(this.getDrawableState());
        }
        if (this.yP != null && this.yP.isStateful()) {
            this.yP.setState(this.getDrawableState());
        }
    }
    
    public final View eu() {
        return this.yL;
    }
    
    public void jumpDrawablesToCurrentState() {
        if (Build$VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.wQ != null) {
                this.wQ.jumpToCurrentState();
            }
            if (this.yO != null) {
                this.yO.jumpToCurrentState();
            }
            if (this.yP != null) {
                this.yP.jumpToCurrentState();
            }
        }
    }
    
    public void onFinishInflate() {
        super.onFinishInflate();
        this.yM = this.findViewById(g.qm);
        this.yN = this.findViewById(g.qr);
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        return this.yK || super.onInterceptTouchEvent(motionEvent);
    }
    
    public void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        boolean b2 = true;
        super.onLayout(b, n, n2, n3, n4);
        final View yl = this.yL;
        final boolean yr = yl != null && yl.getVisibility() != 8 && b2;
        if (yl != null && yl.getVisibility() != 8) {
            final int measuredHeight = this.getMeasuredHeight();
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)yl.getLayoutParams();
            yl.layout(n, measuredHeight - yl.getMeasuredHeight() - frameLayout$LayoutParams.bottomMargin, n3, measuredHeight - frameLayout$LayoutParams.bottomMargin);
        }
        if (this.yQ) {
            if (this.yP != null) {
                this.yP.setBounds(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
            }
            else {
                b2 = false;
            }
        }
        else {
            boolean b3;
            if (this.wQ != null) {
                if (this.yM.getVisibility() == 0) {
                    this.wQ.setBounds(this.yM.getLeft(), this.yM.getTop(), this.yM.getRight(), this.yM.getBottom());
                }
                else if (this.yN != null && this.yN.getVisibility() == 0) {
                    this.wQ.setBounds(this.yN.getLeft(), this.yN.getTop(), this.yN.getRight(), this.yN.getBottom());
                }
                else {
                    this.wQ.setBounds(0, 0, 0, 0);
                }
                b3 = b2;
            }
            else {
                b3 = false;
            }
            this.yR = yr;
            if (yr && this.yO != null) {
                this.yO.setBounds(yl.getLeft(), yl.getTop(), yl.getRight(), yl.getBottom());
            }
            else {
                b2 = b3;
            }
        }
        if (b2) {
            this.invalidate();
        }
    }
    
    public void onMeasure(final int n, int measureSpec) {
        if (this.yM == null && View$MeasureSpec.getMode(measureSpec) == Integer.MIN_VALUE && this.yS >= 0) {
            measureSpec = View$MeasureSpec.makeMeasureSpec(Math.min(this.yS, View$MeasureSpec.getSize(measureSpec)), Integer.MIN_VALUE);
        }
        super.onMeasure(n, measureSpec);
        if (this.yM != null) {
            final int mode = View$MeasureSpec.getMode(measureSpec);
            if (this.yL != null && this.yL.getVisibility() != 8 && mode != 1073741824) {
                int n2;
                if (!ab(this.yM)) {
                    n2 = ac(this.yM);
                }
                else if (!ab(this.yN)) {
                    n2 = ac(this.yN);
                }
                else {
                    n2 = 0;
                }
                int size;
                if (mode == Integer.MIN_VALUE) {
                    size = View$MeasureSpec.getSize(measureSpec);
                }
                else {
                    size = Integer.MAX_VALUE;
                }
                this.setMeasuredDimension(this.getMeasuredWidth(), Math.min(n2 + ac(this.yL), size));
            }
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }
    
    public void setVisibility(final int visibility) {
        super.setVisibility(visibility);
        final boolean b = visibility == 0;
        if (this.wQ != null) {
            this.wQ.setVisible(b, false);
        }
        if (this.yO != null) {
            this.yO.setVisible(b, false);
        }
        if (this.yP != null) {
            this.yP.setVisible(b, false);
        }
    }
    
    public ActionMode startActionModeForChild(final View view, final ActionMode$Callback actionMode$Callback) {
        return null;
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        return (drawable == this.wQ && !this.yQ) || (drawable == this.yO && this.yR) || (drawable == this.yP && this.yQ) || super.verifyDrawable(drawable);
    }
}
