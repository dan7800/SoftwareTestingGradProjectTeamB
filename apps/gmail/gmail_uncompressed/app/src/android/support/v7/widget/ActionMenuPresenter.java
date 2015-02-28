package android.support.v7.widget;

import android.util.*;
import android.content.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

public final class ActionMenuPresenter extends d implements o
{
    private View BI;
    private boolean BJ;
    private boolean BK;
    private int BL;
    private int BM;
    private int BN;
    private boolean BO;
    private boolean BP;
    private boolean BQ;
    private boolean BR;
    private int BS;
    private final SparseBooleanArray BT;
    private View BU;
    private f BV;
    private a BW;
    private c BX;
    private b BY;
    final g BZ;
    int Ca;
    
    public ActionMenuPresenter(final Context context) {
        super(context, i.qB, i.qA);
        this.BT = new SparseBooleanArray();
        this.BZ = new g(this, (byte)0);
    }
    
    public final void G(final boolean b) {
        this.BR = true;
    }
    
    @Override
    public final View a(final m m, final View view, final ViewGroup viewGroup) {
        View view2 = m.getActionView();
        if (view2 == null || m.en()) {
            view2 = super.a(m, view, viewGroup);
        }
        int visibility;
        if (m.isActionViewExpanded()) {
            visibility = 8;
        }
        else {
            visibility = 0;
        }
        view2.setVisibility(visibility);
        final ActionMenuView actionMenuView = (ActionMenuView)viewGroup;
        final ViewGroup$LayoutParams layoutParams = view2.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            view2.setLayoutParams((ViewGroup$LayoutParams)ActionMenuView.a(layoutParams));
        }
        return view2;
    }
    
    @Override
    public final void a(final Context context, final android.support.v7.internal.view.menu.i i) {
        super.a(context, i);
        final Resources resources = context.getResources();
        final android.support.v7.internal.view.a f = android.support.v7.internal.view.a.f(context);
        if (!this.BK) {
            this.BJ = f.di();
        }
        if (!this.BQ) {
            this.BL = f.dj();
        }
        if (!this.BO) {
            this.BN = f.dh();
        }
        int bl = this.BL;
        if (this.BJ) {
            if (this.BI == null) {
                this.BI = (View)new android.support.v7.widget.d(this, this.wA);
                final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                this.BI.measure(measureSpec, measureSpec);
            }
            bl -= this.BI.getMeasuredWidth();
        }
        else {
            this.BI = null;
        }
        this.BM = bl;
        this.BS = (int)(56.0f * resources.getDisplayMetrics().density);
        this.BU = null;
    }
    
    @Override
    public final void a(final android.support.v7.internal.view.menu.i i, final boolean b) {
        this.fb();
        super.a(i, b);
    }
    
    @Override
    public final void a(final m m, final A a) {
        a.a(m);
        final ActionMenuView actionMenuView = (ActionMenuView)this.wG;
        final ActionMenuItemView actionMenuItemView = (ActionMenuItemView)a;
        actionMenuItemView.a(actionMenuView);
        if (this.BY == null) {
            this.BY = new b(this, (byte)0);
        }
        actionMenuItemView.a(this.BY);
    }
    
    public final void a(final ActionMenuView wg) {
        ((ActionMenuView)(this.wG = wg)).e(this.ve);
    }
    
    @Override
    public final boolean a(final D d) {
        if (!d.hasVisibleItems()) {
            return false;
        }
        D d2;
        for (d2 = d; d2.es() != this.ve; d2 = (D)d2.es()) {}
        final MenuItem item = d2.getItem();
        final ViewGroup viewGroup = (ViewGroup)this.wG;
    Label_0104:
        while (true) {
            if (viewGroup != null) {
                for (int childCount = viewGroup.getChildCount(), i = 0; i < childCount; ++i) {
                    final View child = viewGroup.getChildAt(i);
                    if (child instanceof A && ((A)child).dv() == item) {
                        final View bi = child;
                        break Label_0104;
                    }
                }
            }
            Label_0124: {
                break Label_0124;
                final View bi;
                if (bi == null) {
                    if (this.BI == null) {
                        return false;
                    }
                    bi = this.BI;
                }
                this.Ca = d.getItem().getItemId();
                (this.BW = new a(this, this.mContext, d)).setAnchorView(bi);
                this.BW.show();
                super.a(d);
                return true;
            }
            View bi = null;
            continue Label_0104;
        }
    }
    
    public final void as(final int bl) {
        this.BL = bl;
        this.BP = true;
        this.BQ = true;
    }
    
    @Override
    public final boolean b(final m m) {
        return m.ej();
    }
    
    public final boolean b(final ViewGroup viewGroup, final int n) {
        return viewGroup.getChildAt(n) != this.BI && super.b(viewGroup, n);
    }
    
    public final void cU() {
        if (!this.BO) {
            this.BN = this.mContext.getResources().getInteger(h.qy);
        }
        if (this.ve != null) {
            this.ve.t(true);
        }
    }
    
    @Override
    public final z d(final ViewGroup viewGroup) {
        final z d = super.d(viewGroup);
        ((ActionMenuView)d).k(this);
        return d;
    }
    
    @Override
    public final boolean dE() {
        final ArrayList<m> ds = this.ve.dS();
        final int size = ds.size();
        int bn = this.BN;
        int bm = this.BM;
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        final ViewGroup viewGroup = (ViewGroup)this.wG;
        int n = 0;
        int n2 = 0;
        boolean b = false;
        int n3;
        for (int i = 0; i < size; ++i, bn = n3) {
            final m m = ds.get(i);
            if (m.el()) {
                ++n;
            }
            else if (m.ek()) {
                ++n2;
            }
            else {
                b = true;
            }
            if (this.BR && m.isActionViewExpanded()) {
                n3 = 0;
            }
            else {
                n3 = bn;
            }
        }
        if (this.BJ && (b || n + n2 > bn)) {
            --bn;
        }
        int n4 = bn - n;
        final SparseBooleanArray bt = this.BT;
        bt.clear();
        int n5;
        int n6;
        if (this.BP) {
            n5 = bm / this.BS;
            n6 = this.BS + bm % this.BS / n5;
        }
        else {
            n5 = 0;
            n6 = 0;
        }
        int j = 0;
        int n7 = 0;
        int n8 = n5;
        while (j < size) {
            final m k = ds.get(j);
            int measuredWidth;
            int n10;
            int n11;
            if (k.el()) {
                final View a = this.a(k, this.BU, viewGroup);
                if (this.BU == null) {
                    this.BU = a;
                }
                if (this.BP) {
                    n8 -= ActionMenuView.b(a, n6, n8, measureSpec, 0);
                }
                else {
                    a.measure(measureSpec, measureSpec);
                }
                measuredWidth = a.getMeasuredWidth();
                final int n9 = bm - measuredWidth;
                if (n7 != 0) {
                    measuredWidth = n7;
                }
                final int groupId = k.getGroupId();
                if (groupId != 0) {
                    bt.put(groupId, true);
                }
                k.x(true);
                n10 = n9;
                n11 = n4;
            }
            else if (k.ek()) {
                final int groupId2 = k.getGroupId();
                final boolean value = bt.get(groupId2);
                final boolean b2 = (n4 > 0 || value) && bm > 0 && (!this.BP || n8 > 0);
                boolean b7;
                int n14;
                int n15;
                if (b2) {
                    final View a2 = this.a(k, this.BU, viewGroup);
                    if (this.BU == null) {
                        this.BU = a2;
                    }
                    boolean b4;
                    int n13;
                    if (this.BP) {
                        final int b3 = ActionMenuView.b(a2, n6, n8, measureSpec, 0);
                        final int n12 = n8 - b3;
                        b4 = (b3 != 0 && b2);
                        n13 = n12;
                    }
                    else {
                        a2.measure(measureSpec, measureSpec);
                        final boolean b5 = b2;
                        n13 = n8;
                        b4 = b5;
                    }
                    final int measuredWidth2 = a2.getMeasuredWidth();
                    bm -= measuredWidth2;
                    if (n7 == 0) {
                        n7 = measuredWidth2;
                    }
                    if (this.BP) {
                        boolean b6;
                        if (bm >= 0) {
                            b6 = true;
                        }
                        else {
                            b6 = false;
                        }
                        b7 = (b4 & b6);
                        n14 = n7;
                        n15 = n13;
                    }
                    else {
                        boolean b8;
                        if (bm + n7 > 0) {
                            b8 = true;
                        }
                        else {
                            b8 = false;
                        }
                        b7 = (b4 & b8);
                        n14 = n7;
                        n15 = n13;
                    }
                }
                else {
                    b7 = b2;
                    n14 = n7;
                    n15 = n8;
                }
                int n16;
                if (b7 && groupId2 != 0) {
                    bt.put(groupId2, true);
                    n16 = n4;
                }
                else if (value) {
                    bt.put(groupId2, false);
                    int n17 = n4;
                    for (int l = 0; l < j; ++l) {
                        final m m2 = ds.get(l);
                        if (m2.getGroupId() == groupId2) {
                            if (m2.ej()) {
                                ++n17;
                            }
                            m2.x(false);
                        }
                    }
                    n16 = n17;
                }
                else {
                    n16 = n4;
                }
                if (b7) {
                    --n16;
                }
                k.x(b7);
                measuredWidth = n14;
                n10 = bm;
                final int n18 = n15;
                n11 = n16;
                n8 = n18;
            }
            else {
                k.x(false);
                measuredWidth = n7;
                n10 = bm;
                n11 = n4;
            }
            ++j;
            bm = n10;
            n4 = n11;
            n7 = measuredWidth;
        }
        return true;
    }
    
    public final boolean eE() {
        return this.BX != null || this.isOverflowMenuShowing();
    }
    
    public final void eZ() {
        this.BJ = true;
        this.BK = true;
    }
    
    public final void fa() {
        this.BN = Integer.MAX_VALUE;
        this.BO = true;
    }
    
    public final boolean fb() {
        return this.hideOverflowMenu() | this.fc();
    }
    
    public final boolean fc() {
        if (this.BW != null) {
            this.BW.dismiss();
            return true;
        }
        return false;
    }
    
    public final boolean hideOverflowMenu() {
        if (this.BX != null && this.wG != null) {
            ((View)this.wG).removeCallbacks((Runnable)this.BX);
            this.BX = null;
            return true;
        }
        final f bv = this.BV;
        if (bv != null) {
            bv.dismiss();
            return true;
        }
        return false;
    }
    
    public final boolean isOverflowMenuShowing() {
        return this.BV != null && this.BV.isShowing();
    }
    
    @Override
    public final void r(final boolean b) {
        int n = 1;
        ((View)this.wG).getParent();
        super.r(b);
        ((View)this.wG).requestLayout();
        if (this.ve != null) {
            final ArrayList<m> du = this.ve.dU();
            for (int size = du.size(), i = 0; i < size; ++i) {
                final n ax = du.get(i).ax();
                if (ax != null) {
                    ax.a(this);
                }
            }
        }
        ArrayList<m> dv;
        if (this.ve != null) {
            dv = this.ve.dV();
        }
        else {
            dv = null;
        }
        final boolean bj = this.BJ;
        int n2 = 0;
        if (bj) {
            n2 = 0;
            if (dv != null) {
                final int size2 = dv.size();
                if (size2 == n) {
                    int n3;
                    if (!dv.get(0).isActionViewExpanded()) {
                        n3 = n;
                    }
                    else {
                        n3 = 0;
                    }
                    n2 = n3;
                }
                else {
                    if (size2 <= 0) {
                        n = 0;
                    }
                    n2 = n;
                }
            }
        }
        if (n2 != 0) {
            if (this.BI == null) {
                this.BI = (View)new android.support.v7.widget.d(this, this.wA);
            }
            final ViewGroup viewGroup = (ViewGroup)this.BI.getParent();
            if (viewGroup != this.wG) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.BI);
                }
                ((ActionMenuView)this.wG).addView(this.BI, (ViewGroup$LayoutParams)ActionMenuView.ff());
            }
        }
        else if (this.BI != null && this.BI.getParent() == this.wG) {
            ((ViewGroup)this.wG).removeView(this.BI);
        }
        ((ActionMenuView)this.wG).H(this.BJ);
    }
    
    public final boolean showOverflowMenu() {
        if (this.BJ && !this.isOverflowMenuShowing() && this.ve != null && this.wG != null && this.BX == null && !this.ve.dV().isEmpty()) {
            this.BX = new c(this, new f(this, this.mContext, this.ve, this.BI));
            ((View)this.wG).post((Runnable)this.BX);
            super.a((D)null);
            return true;
        }
        return false;
    }
}
