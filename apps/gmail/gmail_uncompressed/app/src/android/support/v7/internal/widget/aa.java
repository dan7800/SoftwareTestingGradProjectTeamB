package android.support.v7.internal.widget;

import android.graphics.drawable.*;
import android.support.v7.internal.a.*;
import android.support.v7.widget.*;
import android.text.*;
import android.view.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.a.*;
import android.widget.*;
import android.support.v4.view.*;
import android.util.*;
import android.content.*;

public final class aa implements v
{
    private final U AO;
    private int Bo;
    private View Bp;
    private SpinnerCompat Bq;
    private Drawable Br;
    private Drawable Bs;
    private boolean Bt;
    private CharSequence Bu;
    private boolean Bv;
    private int Bw;
    private int Bx;
    private Drawable By;
    private CharSequence cZ;
    private i of;
    private Toolbar uo;
    private Drawable vh;
    private View vl;
    private CharSequence yT;
    private ActionMenuPresenter yo;
    
    public aa(final Toolbar toolbar, final boolean b) {
        this(toolbar, b, j.qM, f.pO);
    }
    
    private aa(final Toolbar uo, final boolean b, final int bx, final int n) {
        this.Bw = 0;
        this.Bx = 0;
        this.uo = uo;
        this.cZ = uo.getTitle();
        this.yT = uo.getSubtitle();
        this.Bt = (this.cZ != null);
        if (b) {
            final Z a = Z.a(uo.getContext(), null, l.qP, b.actionBarStyle);
            final CharSequence text = a.getText(l.rg);
            if (!TextUtils.isEmpty(text)) {
                this.setTitle(text);
            }
            final CharSequence text2 = a.getText(l.re);
            if (!TextUtils.isEmpty(text2)) {
                this.setSubtitle(text2);
            }
            final Drawable drawable = a.getDrawable(l.rc);
            if (drawable != null) {
                this.setLogo(drawable);
            }
            final Drawable drawable2 = a.getDrawable(l.rb);
            if (drawable2 != null) {
                this.setIcon(drawable2);
            }
            final Drawable drawable3 = a.getDrawable(l.ra);
            if (drawable3 != null) {
                this.setNavigationIcon(drawable3);
            }
            this.setDisplayOptions(a.getInt(l.qW, 0));
            final int resourceId = a.getResourceId(l.qV, 0);
            if (resourceId != 0) {
                this.setCustomView(LayoutInflater.from(this.uo.getContext()).inflate(resourceId, (ViewGroup)this.uo, false));
                this.setDisplayOptions(0x10 | this.Bo);
            }
            final int layoutDimension = a.getLayoutDimension(l.qY, 0);
            if (layoutDimension > 0) {
                final ViewGroup$LayoutParams layoutParams = this.uo.getLayoutParams();
                layoutParams.height = layoutDimension;
                this.uo.setLayoutParams(layoutParams);
            }
            final int dimensionPixelOffset = a.getDimensionPixelOffset(l.qU, -1);
            final int dimensionPixelOffset2 = a.getDimensionPixelOffset(l.qT, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                this.uo.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            final int resourceId2 = a.getResourceId(l.rh, 0);
            if (resourceId2 != 0) {
                this.uo.setTitleTextAppearance(this.uo.getContext(), resourceId2);
            }
            final int resourceId3 = a.getResourceId(l.rf, 0);
            if (resourceId3 != 0) {
                this.uo.setSubtitleTextAppearance(this.uo.getContext(), resourceId3);
            }
            final int resourceId4 = a.getResourceId(l.rd, 0);
            if (resourceId4 != 0) {
                this.uo.setPopupTheme(resourceId4);
            }
            a.recycle();
            this.AO = a.eU();
        }
        else {
            int bo = 11;
            if (this.uo.getNavigationIcon() != null) {
                bo = 15;
            }
            this.Bo = bo;
            this.AO = new U(uo.getContext());
        }
        if (bx != this.Bx) {
            this.Bx = bx;
            if (TextUtils.isEmpty(this.uo.getNavigationContentDescription())) {
                this.setNavigationContentDescription(this.Bx);
            }
        }
        this.Bu = this.uo.getNavigationContentDescription();
        final Drawable drawable4 = this.AO.getDrawable(n);
        if (this.By != drawable4) {
            this.By = drawable4;
            this.eY();
        }
        this.uo.setNavigationOnClickListener((View$OnClickListener)new ab(this));
    }
    
    private void eV() {
        final int n = 0x2 & this.Bo;
        Drawable logo = null;
        if (n != 0) {
            if ((0x1 & this.Bo) != 0x0) {
                if (this.Br != null) {
                    logo = this.Br;
                }
                else {
                    logo = this.vh;
                }
            }
            else {
                logo = this.vh;
            }
        }
        this.uo.setLogo(logo);
    }
    
    private void eW() {
        if (this.Bq == null) {
            (this.Bq = new SpinnerCompat(this.uo.getContext(), b.actionDropDownStyle)).setLayoutParams((ViewGroup$LayoutParams)new android.support.v7.widget.Z((byte)0));
        }
    }
    
    private void eX() {
        if ((0x4 & this.Bo) != 0x0) {
            if (!TextUtils.isEmpty(this.Bu)) {
                this.uo.setNavigationContentDescription(this.Bu);
                return;
            }
            this.uo.setNavigationContentDescription(this.Bx);
        }
    }
    
    private void eY() {
        if ((0x4 & this.Bo) != 0x0) {
            final Toolbar uo = this.uo;
            Drawable navigationIcon;
            if (this.Bs != null) {
                navigationIcon = this.Bs;
            }
            else {
                navigationIcon = this.By;
            }
            uo.setNavigationIcon(navigationIcon);
        }
    }
    
    private void n(final CharSequence charSequence) {
        this.cZ = charSequence;
        if ((0x8 & this.Bo) != 0x0) {
            this.uo.setTitle(charSequence);
        }
    }
    
    @Override
    public final void D(final boolean b) {
        this.uo.D(b);
    }
    
    @Override
    public final void a(final i of) {
        this.of = of;
    }
    
    @Override
    public final void a(final Menu menu, final y y) {
        if (this.yo == null) {
            (this.yo = new ActionMenuPresenter(this.uo.getContext())).setId(g.qs);
        }
        this.yo.a(y);
        this.uo.a((android.support.v7.internal.view.menu.i)menu, this.yo);
    }
    
    @Override
    public final void a(final SpinnerAdapter adapter, final q q) {
        this.eW();
        this.Bq.setAdapter(adapter);
        this.Bq.a(q);
    }
    
    @Override
    public final void ag(final int n) {
        if (n == 8) {
            ad.s((View)this.uo).b(0.0f).a(new ac(this));
        }
        else if (n == 0) {
            ad.s((View)this.uo).b(1.0f).a(new android.support.v7.internal.widget.ad(this));
        }
    }
    
    @Override
    public final void am(final int selection) {
        if (this.Bq == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        this.Bq.setSelection(selection);
    }
    
    @Override
    public final void b(final D bp) {
        if (this.Bp != null && this.Bp.getParent() == this.uo) {
            this.uo.removeView(this.Bp);
        }
        if ((this.Bp = (View)bp) != null && this.Bw == 2) {
            this.uo.addView(this.Bp, 0);
            final android.support.v7.widget.Z z = (android.support.v7.widget.Z)this.Bp.getLayoutParams();
            z.width = -2;
            z.height = -2;
            z.gravity = 8388691;
            bp.F(true);
        }
    }
    
    @Override
    public final void collapseActionView() {
        this.uo.collapseActionView();
    }
    
    @Override
    public final void dismissPopupMenus() {
        this.uo.dismissPopupMenus();
    }
    
    @Override
    public final boolean eD() {
        return this.uo.eD();
    }
    
    @Override
    public final boolean eE() {
        return this.uo.eE();
    }
    
    @Override
    public final void eF() {
        this.Bv = true;
    }
    
    @Override
    public final ViewGroup eL() {
        return this.uo;
    }
    
    @Override
    public final void eM() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }
    
    @Override
    public final void eN() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }
    
    @Override
    public final int eO() {
        if (this.Bq != null) {
            return this.Bq.getSelectedItemPosition();
        }
        return 0;
    }
    
    @Override
    public final Context getContext() {
        return this.uo.getContext();
    }
    
    @Override
    public final int getDisplayOptions() {
        return this.Bo;
    }
    
    @Override
    public final int getNavigationMode() {
        return this.Bw;
    }
    
    @Override
    public final CharSequence getTitle() {
        return this.uo.getTitle();
    }
    
    @Override
    public final boolean hasExpandedActionView() {
        return this.uo.hasExpandedActionView();
    }
    
    @Override
    public final boolean hideOverflowMenu() {
        return this.uo.hideOverflowMenu();
    }
    
    @Override
    public final boolean isOverflowMenuShowing() {
        return this.uo.isOverflowMenuShowing();
    }
    
    @Override
    public final void j(final CharSequence charSequence) {
        if (!this.Bt) {
            this.n(charSequence);
        }
    }
    
    @Override
    public final void setCustomView(final View vl) {
        if (this.vl != null && (0x10 & this.Bo) != 0x0) {
            this.uo.removeView(this.vl);
        }
        if ((this.vl = vl) != null && (0x10 & this.Bo) != 0x0) {
            this.uo.addView(this.vl);
        }
    }
    
    @Override
    public final void setDisplayOptions(final int bo) {
        final int n = bo ^ this.Bo;
        this.Bo = bo;
        if (n != 0) {
            if ((n & 0x4) != 0x0) {
                if ((bo & 0x4) != 0x0) {
                    this.eY();
                    this.eX();
                }
                else {
                    this.uo.setNavigationIcon(null);
                }
            }
            if ((n & 0x3) != 0x0) {
                this.eV();
            }
            if ((n & 0x8) != 0x0) {
                if ((bo & 0x8) != 0x0) {
                    this.uo.setTitle(this.cZ);
                    this.uo.setSubtitle(this.yT);
                }
                else {
                    this.uo.setTitle(null);
                    this.uo.setSubtitle(null);
                }
            }
            if ((n & 0x10) != 0x0 && this.vl != null) {
                if ((bo & 0x10) == 0x0) {
                    this.uo.removeView(this.vl);
                    return;
                }
                this.uo.addView(this.vl);
            }
        }
    }
    
    @Override
    public final void setIcon(final int n) {
        this.setIcon(this.AO.getDrawable(17170445));
    }
    
    @Override
    public final void setIcon(final Drawable vh) {
        this.vh = vh;
        this.eV();
    }
    
    @Override
    public final void setLogo(final Drawable br) {
        this.Br = br;
        this.eV();
    }
    
    @Override
    public final void setNavigationContentDescription(final int n) {
        CharSequence string;
        if (n == 0) {
            string = null;
        }
        else {
            string = this.uo.getContext().getString(n);
        }
        this.Bu = string;
        this.eX();
    }
    
    @Override
    public final void setNavigationIcon(final int n) {
        Drawable drawable;
        if (n != 0) {
            drawable = this.AO.getDrawable(n);
        }
        else {
            drawable = null;
        }
        this.setNavigationIcon(drawable);
    }
    
    @Override
    public final void setNavigationIcon(final Drawable bs) {
        this.Bs = bs;
        this.eY();
    }
    
    @Override
    public final void setNavigationMode(final int bw) {
        final int bw2 = this.Bw;
        if (bw != bw2) {
            switch (bw2) {
                case 1: {
                    if (this.Bq != null && this.Bq.getParent() == this.uo) {
                        this.uo.removeView((View)this.Bq);
                        break;
                    }
                    break;
                }
                case 2: {
                    if (this.Bp != null && this.Bp.getParent() == this.uo) {
                        this.uo.removeView(this.Bp);
                        break;
                    }
                    break;
                }
            }
            switch (this.Bw = bw) {
                default: {
                    throw new IllegalArgumentException("Invalid navigation mode " + bw);
                }
                case 1: {
                    this.eW();
                    this.uo.addView((View)this.Bq, 0);
                }
                case 0: {
                    break;
                }
                case 2: {
                    if (this.Bp != null) {
                        this.uo.addView(this.Bp, 0);
                        final android.support.v7.widget.Z z = (android.support.v7.widget.Z)this.Bp.getLayoutParams();
                        z.width = -2;
                        z.height = -2;
                        z.gravity = 8388691;
                        return;
                    }
                    break;
                }
            }
        }
    }
    
    @Override
    public final void setSubtitle(final CharSequence charSequence) {
        this.yT = charSequence;
        if ((0x8 & this.Bo) != 0x0) {
            this.uo.setSubtitle(charSequence);
        }
    }
    
    @Override
    public final void setTitle(final CharSequence charSequence) {
        this.Bt = true;
        this.n(charSequence);
    }
    
    @Override
    public final boolean showOverflowMenu() {
        return this.uo.showOverflowMenu();
    }
}
