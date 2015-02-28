package android.support.v7.internal.a;

import java.util.*;
import android.content.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.*;
import android.os.*;
import android.support.v4.view.*;
import android.support.v4.app.*;
import android.support.v7.app.*;
import android.graphics.drawable.*;
import android.util.*;
import android.content.res.*;
import android.widget.*;
import android.support.v7.a.*;
import android.text.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.widget.*;
import android.view.animation.*;
import android.view.accessibility.*;
import android.support.v7.internal.widget.*;
import android.view.*;

public class j extends a implements l
{
    private static final boolean uz;
    private k aG;
    private ArrayList<o> b;
    private Context mContext;
    private Context uA;
    private ActionBarOverlayLayout uB;
    private ActionBarContainer uC;
    private ActionBarContextView uD;
    private ActionBarContainer uE;
    private View uF;
    private D uG;
    private o uH;
    private int uI;
    private boolean uJ;
    n uK;
    android.support.v7.c.a uL;
    b uM;
    private int uN;
    private boolean uO;
    private int uP;
    private boolean uQ;
    private boolean uR;
    private boolean uS;
    private boolean uT;
    private boolean uU;
    private h uV;
    private boolean uW;
    boolean uX;
    final bk uY;
    final bk uZ;
    private v up;
    private boolean us;
    private ArrayList<c> ut;
    final bm va;
    
    static {
        boolean uz2 = true;
        vb = (!j.class.desiredAssertionStatus() && uz2);
        if (Build$VERSION.SDK_INT < 14) {
            uz2 = false;
        }
        uz = uz2;
    }
    
    public j(final g ag, final boolean b) {
        this.b = new ArrayList<o>();
        this.uI = -1;
        this.ut = new ArrayList<c>();
        this.uP = 0;
        this.uQ = true;
        this.uU = true;
        this.uY = new android.support.v7.internal.a.k(this);
        this.uZ = new android.support.v7.internal.a.l(this);
        this.va = new m(this);
        this.aG = ag;
        final View decorView = ag.getWindow().getDecorView();
        this.uB = (ActionBarOverlayLayout)decorView.findViewById(android.support.v7.a.g.qv);
        if (this.uB != null) {
            this.uB.a(this);
        }
        final View viewById = decorView.findViewById(android.support.v7.a.g.qm);
        v fs;
        if (viewById instanceof v) {
            fs = (v)viewById;
        }
        else {
            if (!(viewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of " + ((Toolbar)viewById).getClass().getSimpleName());
            }
            fs = ((Toolbar)viewById).fS();
        }
        this.up = fs;
        this.uD = (ActionBarContextView)decorView.findViewById(android.support.v7.a.g.qr);
        this.uC = (ActionBarContainer)decorView.findViewById(android.support.v7.a.g.qo);
        this.uE = (ActionBarContainer)decorView.findViewById(android.support.v7.a.g.qx);
        if (this.up == null || this.uD == null || this.uC == null) {
            throw new IllegalStateException(this.getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.mContext = this.up.getContext();
        final v up = this.up;
        this.uN = 0;
        int n;
        if ((0x4 & this.up.getDisplayOptions()) != 0x0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            this.uJ = true;
        }
        final android.support.v7.internal.view.a f = android.support.v7.internal.view.a.f(this.mContext);
        f.dm();
        final v up2 = this.up;
        this.n(f.dk());
        final TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes((AttributeSet)null, android.support.v7.a.l.qP, android.support.v7.a.b.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(android.support.v7.a.l.qZ, false)) {
            if (!this.uB.ez()) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.uX = true;
            this.uB.setHideOnContentScrollEnabled(true);
        }
        final int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.a.l.qX, 0);
        if (dimensionPixelSize != 0) {
            final float n2 = dimensionPixelSize;
            ad.f((View)this.uC, n2);
            if (this.uE != null) {
                ad.f((View)this.uE, n2);
            }
        }
        obtainStyledAttributes.recycle();
        if (!b) {
            this.uF = decorView.findViewById(16908290);
        }
    }
    
    private static boolean a(final boolean b, final boolean b2, final boolean b3) {
        return b3 || (!b && !b2);
    }
    
    private void n(final boolean uo) {
        boolean b = true;
        if (!(this.uO = uo)) {
            this.up.b(null);
            this.uC.a(this.uG);
        }
        else {
            this.uC.a(null);
            this.up.b(this.uG);
        }
        final boolean b2 = this.getNavigationMode() == 2 && b;
        if (this.uG != null) {
            if (b2) {
                this.uG.setVisibility(0);
                if (this.uB != null) {
                    ad.v((View)this.uB);
                }
            }
            else {
                this.uG.setVisibility(8);
            }
        }
        this.up.D(!this.uO && b2 && b);
        final ActionBarOverlayLayout ub = this.uB;
        if (this.uO || !b2) {
            b = false;
        }
        ub.C(b);
    }
    
    private void p(final boolean b) {
        if (a(this.uR, this.uS, this.uT)) {
            if (!this.uU) {
                this.uU = true;
                if (this.uV != null) {
                    this.uV.cancel();
                }
                this.uC.setVisibility(0);
                if (this.uP == 0 && j.uz && (this.uW || b)) {
                    ad.b((View)this.uC, 0.0f);
                    float n = -this.uC.getHeight();
                    if (b) {
                        final int[] array = { 0, 0 };
                        this.uC.getLocationInWindow(array);
                        n -= array[1];
                    }
                    ad.b((View)this.uC, n);
                    final h uv = new h();
                    final aV d = ad.s((View)this.uC).d(0.0f);
                    d.a(this.va);
                    uv.e(d);
                    if (this.uQ && this.uF != null) {
                        ad.b(this.uF, n);
                        uv.e(ad.s(this.uF).d(0.0f));
                    }
                    if (this.uE != null && this.uN == 1) {
                        ad.b((View)this.uE, (float)this.uE.getHeight());
                        this.uE.setVisibility(0);
                        uv.e(ad.s((View)this.uE).d(0.0f));
                    }
                    uv.b(AnimationUtils.loadInterpolator(this.mContext, 17432582));
                    uv.du();
                    uv.b(this.uZ);
                    (this.uV = uv).start();
                }
                else {
                    ad.c((View)this.uC, 1.0f);
                    ad.b((View)this.uC, 0.0f);
                    if (this.uQ && this.uF != null) {
                        ad.b(this.uF, 0.0f);
                    }
                    if (this.uE != null && this.uN == 1) {
                        ad.c((View)this.uE, 1.0f);
                        ad.b((View)this.uE, 0.0f);
                        this.uE.setVisibility(0);
                    }
                    this.uZ.B(null);
                }
                if (this.uB != null) {
                    ad.v((View)this.uB);
                }
            }
        }
        else if (this.uU) {
            this.uU = false;
            if (this.uV != null) {
                this.uV.cancel();
            }
            if (this.uP == 0 && j.uz && (this.uW || b)) {
                ad.c((View)this.uC, 1.0f);
                this.uC.A(true);
                final h uv2 = new h();
                float n2 = -this.uC.getHeight();
                if (b) {
                    final int[] array2 = { 0, 0 };
                    this.uC.getLocationInWindow(array2);
                    n2 -= array2[1];
                }
                final aV d2 = ad.s((View)this.uC).d(n2);
                d2.a(this.va);
                uv2.e(d2);
                if (this.uQ && this.uF != null) {
                    uv2.e(ad.s(this.uF).d(n2));
                }
                if (this.uE != null && this.uE.getVisibility() == 0) {
                    ad.c((View)this.uE, 1.0f);
                    uv2.e(ad.s((View)this.uE).d(this.uE.getHeight()));
                }
                uv2.b(AnimationUtils.loadInterpolator(this.mContext, 17432581));
                uv2.du();
                uv2.b(this.uY);
                (this.uV = uv2).start();
                return;
            }
            this.uY.B(null);
        }
    }
    
    @Override
    public final android.support.v7.c.a a(final b b) {
        if (this.uK != null) {
            this.uK.finish();
        }
        this.uB.setHideOnContentScrollEnabled(false);
        this.uD.ey();
        final n uk = new n(this, b);
        if (uk.df()) {
            uk.invalidate();
            this.uD.e(uk);
            this.q(true);
            if (this.uE != null && this.uN == 1 && this.uE.getVisibility() != 0) {
                this.uE.setVisibility(0);
                if (this.uB != null) {
                    ad.v((View)this.uB);
                }
            }
            this.uD.sendAccessibilityEvent(32);
            return this.uK = uk;
        }
        return null;
    }
    
    @Override
    public final void a(final c c) {
        this.ut.add(c);
    }
    
    public final void a(final e e) {
        int ui = -1;
        if (this.getNavigationMode() != 2) {
            if (e != null) {
                ui = e.getPosition();
            }
            this.uI = ui;
        }
        else {
            z a;
            if (this.up.eL().isInEditMode()) {
                a = null;
            }
            else {
                a = this.aG.F().H().a();
            }
            if (this.uH == e) {
                if (this.uH != null) {
                    this.uH.dg();
                    final o uh = this.uH;
                    this.uG.ao(e.getPosition());
                }
            }
            else {
                final D ug = this.uG;
                if (e != null) {
                    ui = e.getPosition();
                }
                ug.an(ui);
                if (this.uH != null) {
                    this.uH.dg();
                    final o uh2 = this.uH;
                }
                this.uH = (o)e;
                if (this.uH != null) {
                    this.uH.dg();
                    final o uh3 = this.uH;
                }
            }
            if (a != null && !a.isEmpty()) {
                a.commit();
            }
        }
    }
    
    @Override
    public final void a(final View customView, final android.support.v7.app.b layoutParams) {
        customView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.up.setCustomView(customView);
    }
    
    @Override
    public final void a(final SpinnerAdapter spinnerAdapter, final d d) {
        this.up.a(spinnerAdapter, new android.support.v7.internal.a.a(d));
    }
    
    @Override
    public final void cA() {
        this.setDisplayOptions(0, 2);
    }
    
    @Override
    public final void cB() {
        this.setDisplayOptions(0, 8);
    }
    
    @Override
    public final void cC() {
        this.setDisplayOptions(16, 16);
    }
    
    @Override
    public final void cD() {
        final v up = this.up;
    }
    
    @Override
    public final boolean collapseActionView() {
        if (this.up != null && this.up.hasExpandedActionView()) {
            this.up.collapseActionView();
            return true;
        }
        return false;
    }
    
    @Override
    public final void cx() {
        this.up.setIcon(17170445);
    }
    
    @Override
    public final void cy() {
        this.up.setIcon(null);
    }
    
    @Override
    public final void cz() {
        this.setDisplayOptions(0, 1);
    }
    
    final void db() {
        if (this.uM != null) {
            this.uM.c(this.uL);
            this.uL = null;
            this.uM = null;
        }
    }
    
    @Override
    public final void dc() {
        if (this.uS) {
            this.uS = false;
            this.p(true);
        }
    }
    
    @Override
    public final void dd() {
        if (!this.uS) {
            this.p(this.uS = true);
        }
    }
    
    @Override
    public final void de() {
        if (this.uV != null) {
            this.uV.cancel();
            this.uV = null;
        }
    }
    
    @Override
    public final int getDisplayOptions() {
        return this.up.getDisplayOptions();
    }
    
    @Override
    public final int getHeight() {
        return this.uC.getHeight();
    }
    
    @Override
    public final int getNavigationMode() {
        return this.up.getNavigationMode();
    }
    
    @Override
    public final int getSelectedNavigationIndex() {
        switch (this.up.getNavigationMode()) {
            case 2: {
                if (this.uH != null) {
                    return this.uH.getPosition();
                }
                break;
            }
            case 1: {
                return this.up.eO();
            }
        }
        return -1;
    }
    
    @Override
    public final Context getThemedContext() {
        if (this.uA == null) {
            final TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, typedValue, true);
            final int resourceId = typedValue.resourceId;
            if (resourceId != 0) {
                this.uA = (Context)new ContextThemeWrapper(this.mContext, resourceId);
            }
            else {
                this.uA = this.mContext;
            }
        }
        return this.uA;
    }
    
    @Override
    public final CharSequence getTitle() {
        return this.up.getTitle();
    }
    
    @Override
    public final void hide() {
        if (!this.uR) {
            this.uR = true;
            this.p(false);
        }
    }
    
    @Override
    public final void j(final CharSequence charSequence) {
        this.up.j(charSequence);
    }
    
    @Override
    public final void j(final boolean displayHomeAsUpEnabled) {
        if (!this.uJ) {
            this.setDisplayHomeAsUpEnabled(displayHomeAsUpEnabled);
        }
    }
    
    @Override
    public final void k(final boolean uw) {
        this.uW = uw;
        if (!uw && this.uV != null) {
            this.uV.cancel();
        }
    }
    
    @Override
    public final void l(final boolean us) {
        if (us != this.us) {
            this.us = us;
            for (int size = this.ut.size(), i = 0; i < size; ++i) {
                this.ut.get(i).onMenuVisibilityChanged(us);
            }
        }
    }
    
    @Override
    public final void o(final boolean uq) {
        this.uQ = uq;
    }
    
    @Override
    public final void onConfigurationChanged(final Configuration configuration) {
        this.n(android.support.v7.internal.view.a.f(this.mContext).dk());
    }
    
    @Override
    public final void onWindowVisibilityChanged(final int up) {
        this.uP = up;
    }
    
    public final void q(final boolean b) {
        if (b) {
            if (!this.uT) {
                this.uT = true;
                if (this.uB != null) {
                    final ActionBarOverlayLayout ub = this.uB;
                    ActionBarOverlayLayout.eA();
                }
                this.p(false);
            }
        }
        else if (this.uT) {
            this.uT = false;
            if (this.uB != null) {
                final ActionBarOverlayLayout ub2 = this.uB;
                ActionBarOverlayLayout.eA();
            }
            this.p(false);
        }
        final v up = this.up;
        int n;
        if (b) {
            n = 8;
        }
        else {
            n = 0;
        }
        up.ag(n);
        final ActionBarContextView ud = this.uD;
        int n2 = 0;
        if (!b) {
            n2 = 8;
        }
        ud.ag(n2);
    }
    
    @Override
    public final void setDisplayHomeAsUpEnabled(final boolean b) {
        int n;
        if (b) {
            n = 4;
        }
        else {
            n = 0;
        }
        this.setDisplayOptions(n, 4);
    }
    
    @Override
    public final void setDisplayOptions(final int n, final int n2) {
        final int displayOptions = this.up.getDisplayOptions();
        if ((n2 & 0x4) != 0x0) {
            this.uJ = true;
        }
        this.up.setDisplayOptions((n & n2) | (displayOptions & ~n2));
    }
    
    @Override
    public final void setHomeActionContentDescription(final int navigationContentDescription) {
        this.up.setNavigationContentDescription(navigationContentDescription);
    }
    
    @Override
    public final void setHomeAsUpIndicator(final int navigationIcon) {
        this.up.setNavigationIcon(navigationIcon);
    }
    
    @Override
    public final void setHomeAsUpIndicator(final Drawable navigationIcon) {
        this.up.setNavigationIcon(navigationIcon);
    }
    
    @Override
    public final void setLogo(final Drawable logo) {
        this.up.setLogo(logo);
    }
    
    @Override
    public final void setNavigationMode(final int navigationMode) {
        boolean b = true;
        final int navigationMode2 = this.up.getNavigationMode();
        switch (navigationMode2) {
            case 2: {
                this.uI = this.getSelectedNavigationIndex();
                this.a((e)null);
                this.uG.setVisibility(8);
                break;
            }
        }
        if (navigationMode2 != navigationMode && !this.uO && this.uB != null) {
            ad.v((View)this.uB);
        }
        this.up.setNavigationMode(navigationMode);
        switch (navigationMode) {
            case 2: {
                if (this.uG == null) {
                    final D ug = new D(this.mContext);
                    if (this.uO) {
                        ug.setVisibility(0);
                        this.up.b(ug);
                    }
                    else {
                        if (this.getNavigationMode() == 2) {
                            ug.setVisibility(0);
                            if (this.uB != null) {
                                ad.v((View)this.uB);
                            }
                        }
                        else {
                            ug.setVisibility(8);
                        }
                        this.uC.a(ug);
                    }
                    this.uG = ug;
                }
                this.uG.setVisibility(0);
                if (this.uI != -1) {
                    this.setSelectedNavigationItem(this.uI);
                    this.uI = -1;
                    break;
                }
                break;
            }
        }
        this.up.D(navigationMode == 2 && !this.uO && b);
        final ActionBarOverlayLayout ub = this.uB;
        if (navigationMode != 2 || this.uO) {
            b = false;
        }
        ub.C(b);
    }
    
    @Override
    public final void setSelectedNavigationItem(final int n) {
        switch (this.up.getNavigationMode()) {
            default: {
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
            }
            case 2: {
                this.a(this.b.get(n));
            }
            case 1: {
                this.up.am(n);
            }
        }
    }
    
    @Override
    public final void setSubtitle(final CharSequence subtitle) {
        this.up.setSubtitle(subtitle);
    }
    
    @Override
    public final void setTitle(final int n) {
        this.setTitle(this.mContext.getString(n));
    }
    
    @Override
    public final void setTitle(final CharSequence title) {
        this.up.setTitle(title);
    }
    
    @Override
    public final void show() {
        if (this.uR) {
            this.p(this.uR = false);
        }
    }
}
