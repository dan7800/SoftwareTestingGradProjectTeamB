package android.support.v7.internal.widget;

import java.lang.reflect.*;
import android.content.*;
import android.util.*;
import android.support.v4.a.a.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.widget.*;
import android.view.*;

public class z extends ListView
{
    private static final int[] Al;
    final Rect Am;
    private Field An;
    private A Ao;
    int yA;
    int yB;
    int yC;
    int yz;
    
    static {
        Al = new int[] { 0 };
    }
    
    public z(final Context context, final int n) {
        super(context, (AttributeSet)null, n);
        this.Am = new Rect();
        this.yz = 0;
        this.yA = 0;
        this.yB = 0;
        this.yC = 0;
        try {
            (this.An = AbsListView.class.getDeclaredField("mIsChildViewEnabled")).setAccessible(true);
        }
        catch (NoSuchFieldException ex) {
            ex.printStackTrace();
        }
    }
    
    protected final void a(final int n, final View view, final float n2, final float n3) {
        boolean b = true;
        final Drawable selector = this.getSelector();
        while (true) {
            int n4 = 0;
            Label_0023: {
                if (selector != null && n != -1) {
                    n4 = (b ? 1 : 0);
                    break Label_0023;
                }
                Label_0252: {
                    break Label_0252;
                Label_0209_Outer:
                    while (true) {
                        final Rect am = this.Am;
                        am.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        am.left -= this.yz;
                        am.top -= this.yA;
                        am.right += this.yB;
                        am.bottom += this.yC;
                        while (true) {
                        Label_0274:
                            while (true) {
                                try {
                                    final boolean boolean1 = this.An.getBoolean(this);
                                    if (view.isEnabled() != boolean1) {
                                        this.An.set(this, !boolean1 && b);
                                        if (n != -1) {
                                            this.refreshDrawableState();
                                        }
                                    }
                                    if (n4 != 0) {
                                        final Rect am2 = this.Am;
                                        final float exactCenterX = am2.exactCenterX();
                                        final float exactCenterY = am2.exactCenterY();
                                        if (this.getVisibility() != 0) {
                                            break Label_0274;
                                        }
                                        selector.setVisible(b, false);
                                        a.a(selector, exactCenterX, exactCenterY);
                                    }
                                    final Drawable selector2 = this.getSelector();
                                    if (selector2 != null && n != -1) {
                                        a.a(selector2, n2, n3);
                                    }
                                    return;
                                    n4 = 0;
                                    break;
                                }
                                catch (IllegalAccessException ex) {
                                    ex.printStackTrace();
                                    continue Label_0209_Outer;
                                }
                                break;
                            }
                            b = false;
                            continue;
                        }
                    }
                }
            }
            if (n4 != 0) {
                selector.setVisible(false, false);
            }
            continue;
        }
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        if (!this.Am.isEmpty()) {
            final Drawable selector = this.getSelector();
            selector.setBounds(this.Am);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }
    
    protected void drawableStateChanged() {
        boolean enabled = true;
        super.drawableStateChanged();
        this.Ao.setEnabled(enabled);
        final Drawable selector = this.getSelector();
        if (selector != null) {
            if (!this.eP() || !this.isPressed()) {
                enabled = false;
            }
            if (enabled) {
                selector.setState(this.getDrawableState());
            }
        }
    }
    
    protected boolean eP() {
        return false;
    }
    
    protected final void eQ() {
        this.Ao.setEnabled(false);
    }
    
    public final int n(final int n, int n2) {
        final int listPaddingTop = this.getListPaddingTop();
        final int listPaddingBottom = this.getListPaddingBottom();
        this.getListPaddingLeft();
        this.getListPaddingRight();
        int dividerHeight = this.getDividerHeight();
        final Drawable divider = this.getDivider();
        final ListAdapter adapter = this.getAdapter();
        if (adapter != null) {
            int n3 = listPaddingBottom + listPaddingTop;
            if (dividerHeight <= 0 || divider == null) {
                dividerHeight = 0;
            }
            final int count = adapter.getCount();
            int i = 0;
            int n4 = 0;
            View view = null;
            while (i < count) {
                final int itemViewType = adapter.getItemViewType(i);
                View view2;
                if (itemViewType != n4) {
                    n4 = itemViewType;
                    view2 = null;
                }
                else {
                    view2 = view;
                }
                view = adapter.getView(i, view2, (ViewGroup)this);
                final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
                int n5;
                if (layoutParams != null && layoutParams.height > 0) {
                    n5 = View$MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                else {
                    n5 = View$MeasureSpec.makeMeasureSpec(0, 0);
                }
                view.measure(n, n5);
                int n6;
                if (i > 0) {
                    n6 = n3 + dividerHeight;
                }
                else {
                    n6 = n3;
                }
                n3 = n6 + view.getMeasuredHeight();
                if (n3 >= n2) {
                    return n2;
                }
                ++i;
            }
            return n3;
        }
        n2 = listPaddingTop + listPaddingBottom;
        return n2;
    }
    
    public void setSelector(final Drawable drawable) {
        super.setSelector((Drawable)(this.Ao = new A(drawable)));
        final Rect rect = new Rect();
        drawable.getPadding(rect);
        this.yz = rect.left;
        this.yA = rect.top;
        this.yB = rect.right;
        this.yC = rect.bottom;
    }
}
