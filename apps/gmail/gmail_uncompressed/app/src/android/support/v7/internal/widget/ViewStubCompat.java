package android.support.v7.internal.widget;

import java.lang.ref.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;

public final class ViewStubCompat extends View
{
    private int BB;
    private int BC;
    private WeakReference<View> BD;
    private ae BE;
    private LayoutInflater wC;
    
    public ViewStubCompat(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ViewStubCompat(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.BB = 0;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.tN, n, 0);
        this.BC = obtainStyledAttributes.getResourceId(l.tP, -1);
        this.BB = obtainStyledAttributes.getResourceId(l.tQ, 0);
        this.setId(obtainStyledAttributes.getResourceId(l.tO, -1));
        obtainStyledAttributes.recycle();
        this.setVisibility(8);
        this.setWillNotDraw(true);
    }
    
    protected final void dispatchDraw(final Canvas canvas) {
    }
    
    public final void draw(final Canvas canvas) {
    }
    
    public final View inflate() {
        final ViewParent parent = this.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.BB != 0) {
            final ViewGroup viewGroup = (ViewGroup)parent;
            LayoutInflater layoutInflater;
            if (this.wC != null) {
                layoutInflater = this.wC;
            }
            else {
                layoutInflater = LayoutInflater.from(this.getContext());
            }
            final View inflate = layoutInflater.inflate(this.BB, viewGroup, false);
            if (this.BC != -1) {
                inflate.setId(this.BC);
            }
            final int indexOfChild = viewGroup.indexOfChild((View)this);
            viewGroup.removeViewInLayout((View)this);
            final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            }
            else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.BD = new WeakReference<View>(inflate);
            if (this.BE != null) {
                final ae be = this.BE;
            }
            return inflate;
        }
        throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    
    protected final void onMeasure(final int n, final int n2) {
        this.setMeasuredDimension(0, 0);
    }
    
    public final void setLayoutInflater(final LayoutInflater wc) {
        this.wC = wc;
    }
    
    public final void setVisibility(final int n) {
        if (this.BD != null) {
            final View view = this.BD.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(n);
        }
        else {
            super.setVisibility(n);
            if (n == 0 || n == 4) {
                this.inflate();
            }
        }
    }
}
