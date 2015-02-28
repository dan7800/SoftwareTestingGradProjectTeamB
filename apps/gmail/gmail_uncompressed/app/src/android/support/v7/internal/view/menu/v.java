package android.support.v7.internal.view.menu;

import android.content.*;
import android.support.v7.widget.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import java.util.*;

public class v implements x, View$OnKeyListener, ViewTreeObserver$OnGlobalLayoutListener, AdapterView$OnItemClickListener, PopupWindow$OnDismissListener
{
    static final int xT;
    private final Context mContext;
    private final i ve;
    private final LayoutInflater wC;
    boolean wV;
    private final w xU;
    private final boolean xV;
    private final int xW;
    private final int xX;
    private final int xY;
    private View xZ;
    private y xz;
    private H ya;
    private ViewTreeObserver yb;
    private ViewGroup yc;
    private boolean yd;
    private int ye;
    private int yf;
    
    static {
        xT = android.support.v7.a.i.qI;
    }
    
    private v(final Context context, final i i, final View view) {
        this(context, i, view, false, b.popupMenuStyle);
    }
    
    public v(final Context context, final i i, final View view, final boolean b, final int n) {
        this(context, i, view, b, n, (byte)0);
    }
    
    private v(final Context mContext, final i ve, final View xz, final boolean xv, final int xx, final byte b) {
        this.yf = 0;
        this.mContext = mContext;
        this.wC = LayoutInflater.from(mContext);
        this.ve = ve;
        this.xU = new w(this, this.ve);
        this.xV = xv;
        this.xX = xx;
        this.xY = 0;
        final Resources resources = mContext.getResources();
        this.xW = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(e.pG));
        this.xZ = xz;
        ve.a(this, mContext);
    }
    
    @Override
    public final void a(final Context context, final i i) {
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        if (i == this.ve) {
            this.dismiss();
            if (this.xz != null) {
                this.xz.a(i, b);
            }
        }
    }
    
    public final void a(final y xz) {
        this.xz = xz;
    }
    
    @Override
    public final boolean a(final D d) {
        if (d.hasVisibleItems()) {
            final v v = new v(this.mContext, d, this.xZ);
            v.xz = this.xz;
            final int size = d.size();
            int i = 0;
            while (true) {
                while (i < size) {
                    final MenuItem item = d.getItem(i);
                    if (item.isVisible() && item.getIcon() != null) {
                        final boolean wv = true;
                        v.wV = wv;
                        if (v.er()) {
                            if (this.xz != null) {
                                this.xz.c(d);
                            }
                            return true;
                        }
                        return false;
                    }
                    else {
                        ++i;
                    }
                }
                final boolean wv = false;
                continue;
            }
        }
        return false;
    }
    
    @Override
    public final boolean c(final m m) {
        return false;
    }
    
    @Override
    public final boolean d(final m m) {
        return false;
    }
    
    public final H dA() {
        return this.ya;
    }
    
    @Override
    public final boolean dE() {
        return false;
    }
    
    public final void dismiss() {
        if (this.isShowing()) {
            this.ya.dismiss();
        }
    }
    
    public final void eq() {
        this.yf = 8388613;
    }
    
    public final boolean er() {
        int xw = 0;
        (this.ya = new H(this.mContext, null, this.xX, this.xY)).setOnDismissListener((PopupWindow$OnDismissListener)this);
        this.ya.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        this.ya.setAdapter((ListAdapter)this.xU);
        this.ya.fI();
        final View xz = this.xZ;
        if (xz != null) {
            int n;
            if (this.yb == null) {
                n = 1;
            }
            else {
                n = 0;
            }
            this.yb = xz.getViewTreeObserver();
            if (n != 0) {
                this.yb.addOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
            }
            this.ya.setAnchorView(xz);
            this.ya.setDropDownGravity(this.yf);
            if (!this.yd) {
                final w xu = this.xU;
                final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(0, 0);
                final int count = ((ListAdapter)xu).getCount();
                int i = 0;
                int n2 = 0;
                View view = null;
                while (i < count) {
                    final int itemViewType = ((ListAdapter)xu).getItemViewType(i);
                    View view2;
                    if (itemViewType != n2) {
                        n2 = itemViewType;
                        view2 = null;
                    }
                    else {
                        view2 = view;
                    }
                    if (this.yc == null) {
                        this.yc = (ViewGroup)new FrameLayout(this.mContext);
                    }
                    view = ((ListAdapter)xu).getView(i, view2, this.yc);
                    view.measure(measureSpec, measureSpec2);
                    int measuredWidth = view.getMeasuredWidth();
                    if (measuredWidth >= this.xW) {
                        xw = this.xW;
                        break;
                    }
                    if (measuredWidth <= xw) {
                        measuredWidth = xw;
                    }
                    ++i;
                    xw = measuredWidth;
                }
                this.ye = xw;
                this.yd = true;
            }
            this.ya.setContentWidth(this.ye);
            this.ya.fJ();
            this.ya.show();
            this.ya.getListView().setOnKeyListener((View$OnKeyListener)this);
            return true;
        }
        return false;
    }
    
    public final boolean isShowing() {
        return this.ya != null && this.ya.isShowing();
    }
    
    public void onDismiss() {
        this.ya = null;
        this.ve.close();
        if (this.yb != null) {
            if (!this.yb.isAlive()) {
                this.yb = this.xZ.getViewTreeObserver();
            }
            this.yb.removeGlobalOnLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
            this.yb = null;
        }
    }
    
    public void onGlobalLayout() {
        if (this.isShowing()) {
            final View xz = this.xZ;
            if (xz == null || !xz.isShown()) {
                this.dismiss();
            }
            else if (this.isShowing()) {
                this.ya.show();
            }
        }
    }
    
    public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        final w xu = this.xU;
        xu.yg.c((MenuItem)xu.ae(n), 0);
    }
    
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && n == 82) {
            this.dismiss();
            return true;
        }
        return false;
    }
    
    @Override
    public final void r(final boolean b) {
        this.yd = false;
        if (this.xU != null) {
            this.xU.notifyDataSetChanged();
        }
    }
    
    public final void setAnchorView(final View xz) {
        this.xZ = xz;
    }
    
    public final void show() {
        if (!this.er()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }
    
    public final void z(final boolean wv) {
        this.wV = wv;
    }
}
