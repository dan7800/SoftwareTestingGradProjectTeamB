package android.support.v7.app;

import android.graphics.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.content.*;
import android.support.v7.a.*;
import android.os.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.util.*;
import android.support.v4.view.*;
import android.support.v7.widget.*;
import android.view.*;
import android.support.v7.internal.widget.*;
import android.content.res.*;
import android.support.v4.app.*;
import android.app.*;

class ActionBarActivityDelegateBase extends h implements j
{
    private int oA;
    private final Runnable oB;
    private boolean oC;
    private g oD;
    private Rect oE;
    private Rect oF;
    private u oi;
    private o oj;
    private r ok;
    a ol;
    ActionBarContextView om;
    PopupWindow on;
    Runnable oo;
    private boolean op;
    private ViewGroup oq;
    private ViewGroup or;
    private View os;
    private CharSequence ot;
    private boolean ou;
    private boolean ov;
    private boolean ow;
    private ActionBarActivityDelegateBase$PanelFeatureState[] ox;
    private ActionBarActivityDelegateBase$PanelFeatureState oy;
    private boolean oz;
    
    ActionBarActivityDelegateBase(final android.support.v7.app.g g) {
        super(g);
        this.oB = new k(this);
    }
    
    private void a(final int n, ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState, Menu ol) {
        if (ol == null) {
            if (actionBarActivityDelegateBase$PanelFeatureState == null && n >= 0 && n < this.ox.length) {
                actionBarActivityDelegateBase$PanelFeatureState = this.ox[n];
            }
            if (actionBarActivityDelegateBase$PanelFeatureState != null) {
                ol = (Menu)actionBarActivityDelegateBase$PanelFeatureState.oL;
            }
        }
        if (actionBarActivityDelegateBase$PanelFeatureState != null && !actionBarActivityDelegateBase$PanelFeatureState.mT) {
            return;
        }
        this.cP().onPanelClosed(n, ol);
    }
    
    private void a(final ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState) {
        if (!actionBarActivityDelegateBase$PanelFeatureState.mT && !this.isDestroyed()) {
            if (actionBarActivityDelegateBase$PanelFeatureState.oI == 0) {
                final android.support.v7.app.g nx = this.nX;
                boolean b;
                if ((0xF & ((Context)nx).getResources().getConfiguration().screenLayout) == 0x4) {
                    b = true;
                }
                else {
                    b = false;
                }
                boolean b2;
                if (((Context)nx).getApplicationInfo().targetSdkVersion >= 11) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
                if (b && b2) {
                    return;
                }
            }
            final android.support.v7.internal.a.i cp = this.cP();
            if (cp != null && !cp.onMenuOpened(actionBarActivityDelegateBase$PanelFeatureState.oI, (Menu)actionBarActivityDelegateBase$PanelFeatureState.oL)) {
                this.a(actionBarActivityDelegateBase$PanelFeatureState, true);
                return;
            }
            if (this.a(actionBarActivityDelegateBase$PanelFeatureState, null)) {
                if (actionBarActivityDelegateBase$PanelFeatureState.oJ == null || actionBarActivityDelegateBase$PanelFeatureState.oR) {
                    actionBarActivityDelegateBase$PanelFeatureState.oJ = this.oq;
                    final Context co = this.cO();
                    final TypedValue typedValue = new TypedValue();
                    final Resources$Theme theme = co.getResources().newTheme();
                    theme.setTo(co.getTheme());
                    theme.resolveAttribute(b.actionBarPopupTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        theme.applyStyle(typedValue.resourceId, true);
                    }
                    theme.resolveAttribute(b.px, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        theme.applyStyle(typedValue.resourceId, true);
                    }
                    else {
                        theme.applyStyle(android.support.v7.a.k.qO, true);
                    }
                    final ContextThemeWrapper on = new ContextThemeWrapper(co, 0);
                    ((Context)on).getTheme().setTo(theme);
                    actionBarActivityDelegateBase$PanelFeatureState.oN = (Context)on;
                }
                while (true) {
                    Label_0453: {
                        if (actionBarActivityDelegateBase$PanelFeatureState.oL == null) {
                            break Label_0453;
                        }
                        if (this.ok == null) {
                            this.ok = new r(this, (byte)0);
                        }
                        final r ok = this.ok;
                        Object d;
                        if (actionBarActivityDelegateBase$PanelFeatureState.oL == null) {
                            d = null;
                        }
                        else {
                            if (actionBarActivityDelegateBase$PanelFeatureState.oM == null) {
                                (actionBarActivityDelegateBase$PanelFeatureState.oM = new g(actionBarActivityDelegateBase$PanelFeatureState.oN, i.qG)).a(ok);
                                actionBarActivityDelegateBase$PanelFeatureState.oL.a(actionBarActivityDelegateBase$PanelFeatureState.oM);
                            }
                            d = actionBarActivityDelegateBase$PanelFeatureState.oM.d(actionBarActivityDelegateBase$PanelFeatureState.oJ);
                        }
                        actionBarActivityDelegateBase$PanelFeatureState.oK = (View)d;
                        if (actionBarActivityDelegateBase$PanelFeatureState.oK == null) {
                            break Label_0453;
                        }
                        final int n = 1;
                        if (n == 0) {
                            return;
                        }
                        int n2;
                        if (actionBarActivityDelegateBase$PanelFeatureState.oK != null && actionBarActivityDelegateBase$PanelFeatureState.oM.getAdapter().getCount() > 0) {
                            n2 = 1;
                        }
                        else {
                            n2 = 0;
                        }
                        if (n2 != 0) {
                            actionBarActivityDelegateBase$PanelFeatureState.oP = false;
                            actionBarActivityDelegateBase$PanelFeatureState.mT = true;
                            return;
                        }
                        return;
                    }
                    final int n = 0;
                    continue;
                }
            }
        }
    }
    
    private void a(final ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState, final boolean b) {
        if (b && actionBarActivityDelegateBase$PanelFeatureState.oI == 0 && this.oi != null && this.oi.isOverflowMenuShowing()) {
            this.b(actionBarActivityDelegateBase$PanelFeatureState.oL);
        }
        else {
            if (actionBarActivityDelegateBase$PanelFeatureState.mT && b) {
                this.a(actionBarActivityDelegateBase$PanelFeatureState.oI, actionBarActivityDelegateBase$PanelFeatureState, null);
            }
            actionBarActivityDelegateBase$PanelFeatureState.oO = false;
            actionBarActivityDelegateBase$PanelFeatureState.oP = false;
            actionBarActivityDelegateBase$PanelFeatureState.mT = false;
            actionBarActivityDelegateBase$PanelFeatureState.oK = null;
            actionBarActivityDelegateBase$PanelFeatureState.oR = true;
            if (this.oy == actionBarActivityDelegateBase$PanelFeatureState) {
                this.oy = null;
            }
        }
    }
    
    private boolean a(final ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState, final int n, final KeyEvent keyEvent) {
        return !keyEvent.isSystem() && (actionBarActivityDelegateBase$PanelFeatureState.oO || this.a(actionBarActivityDelegateBase$PanelFeatureState, keyEvent)) && actionBarActivityDelegateBase$PanelFeatureState.oL != null && actionBarActivityDelegateBase$PanelFeatureState.oL.performShortcut(n, keyEvent, 1);
    }
    
    private boolean a(final ActionBarActivityDelegateBase$PanelFeatureState oy, final KeyEvent keyEvent) {
        if (!this.isDestroyed()) {
            if (oy.oO) {
                return true;
            }
            if (this.oy != null && this.oy != oy) {
                this.a(this.oy, false);
            }
            boolean b;
            if (oy.oI == 0 || oy.oI == 8) {
                b = true;
            }
            else {
                b = false;
            }
            if (b && this.oi != null) {
                this.oi.eF();
            }
            if (oy.oL == null || oy.oS) {
                Label_0308: {
                    if (oy.oL == null) {
                        final android.support.v7.app.g nx = this.nX;
                        while (true) {
                            Label_0603: {
                                if ((oy.oI != 0 && oy.oI != 8) || this.oi == null) {
                                    break Label_0603;
                                }
                                final TypedValue typedValue = new TypedValue();
                                final Resources$Theme theme = ((Context)nx).getTheme();
                                theme.resolveAttribute(android.support.v7.a.b.actionBarTheme, typedValue, true);
                                Resources$Theme resources$Theme;
                                if (typedValue.resourceId != 0) {
                                    resources$Theme = ((Context)nx).getResources().newTheme();
                                    resources$Theme.setTo(theme);
                                    resources$Theme.applyStyle(typedValue.resourceId, true);
                                    resources$Theme.resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, typedValue, true);
                                }
                                else {
                                    theme.resolveAttribute(android.support.v7.a.b.actionBarWidgetTheme, typedValue, true);
                                    resources$Theme = null;
                                }
                                if (typedValue.resourceId != 0) {
                                    if (resources$Theme == null) {
                                        resources$Theme = ((Context)nx).getResources().newTheme();
                                        resources$Theme.setTo(theme);
                                    }
                                    resources$Theme.applyStyle(typedValue.resourceId, true);
                                }
                                final Resources$Theme to = resources$Theme;
                                if (to == null) {
                                    break Label_0603;
                                }
                                final Object o = new ContextThemeWrapper((Context)nx, 0);
                                ((Context)o).getTheme().setTo(to);
                                final android.support.v7.internal.view.menu.i i = new android.support.v7.internal.view.menu.i((Context)o);
                                i.a(this);
                                oy.d(i);
                                if (oy.oL != null) {
                                    break Label_0308;
                                }
                                return false;
                            }
                            final Object o = nx;
                            continue;
                        }
                    }
                }
                if (b && this.oi != null) {
                    if (this.oj == null) {
                        this.oj = new o(this, (byte)0);
                    }
                    this.oi.a((Menu)oy.oL, this.oj);
                }
                oy.oL.dO();
                if (!this.cP().onCreatePanelMenu(oy.oI, (Menu)oy.oL)) {
                    oy.d(null);
                    if (b && this.oi != null) {
                        this.oi.a(null, this.oj);
                        return false;
                    }
                    return false;
                }
                else {
                    oy.oS = false;
                }
            }
            oy.oL.dO();
            if (oy.oT != null) {
                oy.oL.f(oy.oT);
                oy.oT = null;
            }
            if (!this.cP().onPreparePanel(0, null, (Menu)oy.oL)) {
                if (b && this.oi != null) {
                    this.oi.a(null, this.oj);
                }
                oy.oL.dP();
                return false;
            }
            int deviceId;
            if (keyEvent != null) {
                deviceId = keyEvent.getDeviceId();
            }
            else {
                deviceId = -1;
            }
            oy.oQ = (KeyCharacterMap.load(deviceId).getKeyboardType() != 1);
            oy.oL.setQwertyMode(oy.oQ);
            oy.oL.dP();
            oy.oO = true;
            oy.oP = false;
            this.oy = oy;
            return true;
        }
        return false;
    }
    
    private ActionBarActivityDelegateBase$PanelFeatureState aa(final int n) {
        ActionBarActivityDelegateBase$PanelFeatureState[] ox = this.ox;
        if (ox == null || ox.length <= n) {
            final ActionBarActivityDelegateBase$PanelFeatureState[] ox2 = new ActionBarActivityDelegateBase$PanelFeatureState[n + 1];
            if (ox != null) {
                System.arraycopy(ox, 0, ox2, 0, ox.length);
            }
            this.ox = ox2;
            ox = ox2;
        }
        final ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState = ox[n];
        if (actionBarActivityDelegateBase$PanelFeatureState == null) {
            return ox[n] = new ActionBarActivityDelegateBase$PanelFeatureState(n);
        }
        return actionBarActivityDelegateBase$PanelFeatureState;
    }
    
    private void b(final android.support.v7.internal.view.menu.i i) {
        if (this.ow) {
            return;
        }
        this.ow = true;
        this.oi.eG();
        final android.support.v7.internal.a.i cp = this.cP();
        if (cp != null && !this.isDestroyed()) {
            cp.onPanelClosed(8, (Menu)i);
        }
        this.ow = false;
    }
    
    private void cR() {
        if (!this.op) {
            if (this.oa) {
                final TypedValue typedValue = new TypedValue();
                this.nX.getTheme().resolveAttribute(b.actionBarTheme, typedValue, true);
                Object nx;
                if (typedValue.resourceId != 0) {
                    nx = new ContextThemeWrapper((Context)this.nX, typedValue.resourceId);
                }
                else {
                    nx = this.nX;
                }
                this.or = (ViewGroup)LayoutInflater.from((Context)nx).inflate(i.qL, (ViewGroup)null);
                (this.oi = (u)this.or.findViewById(android.support.v7.a.g.qv)).a(this.cP());
                if (this.ob) {
                    this.oi.aj(9);
                }
                if (this.ou) {
                    this.oi.aj(2);
                }
                if (this.ov) {
                    this.oi.aj(5);
                }
            }
            else {
                if (this.oc) {
                    this.or = (ViewGroup)LayoutInflater.from((Context)this.nX).inflate(i.qK, (ViewGroup)null);
                }
                else {
                    this.or = (ViewGroup)LayoutInflater.from((Context)this.nX).inflate(i.qJ, (ViewGroup)null);
                }
                if (Build$VERSION.SDK_INT >= 21) {
                    ad.a((View)this.or, new l(this));
                }
                else {
                    ((android.support.v7.internal.widget.x)this.or).a(new m(this));
                }
            }
            af.ag((View)this.or);
            this.nX.Y((View)this.or);
            final View viewById = this.nX.findViewById(16908290);
            viewById.setId(-1);
            this.nX.findViewById(android.support.v7.a.g.qn).setId(16908290);
            if (viewById instanceof FrameLayout) {
                ((FrameLayout)viewById).setForeground((Drawable)null);
            }
            if (this.ot != null && this.oi != null) {
                this.oi.j(this.ot);
                this.ot = null;
            }
            final TypedArray obtainStyledAttributes = this.nX.obtainStyledAttributes(android.support.v7.a.l.tg);
            TypedValue typedValue2;
            if (obtainStyledAttributes.hasValue(android.support.v7.a.l.tn)) {
                typedValue2 = new TypedValue();
                obtainStyledAttributes.getValue(android.support.v7.a.l.tn, typedValue2);
            }
            else {
                typedValue2 = null;
            }
            TypedValue typedValue3;
            if (obtainStyledAttributes.hasValue(android.support.v7.a.l.to)) {
                typedValue3 = new TypedValue();
                obtainStyledAttributes.getValue(android.support.v7.a.l.to, typedValue3);
            }
            else {
                typedValue3 = null;
            }
            TypedValue typedValue4;
            if (obtainStyledAttributes.hasValue(android.support.v7.a.l.tl)) {
                typedValue4 = new TypedValue();
                obtainStyledAttributes.getValue(android.support.v7.a.l.tl, typedValue4);
            }
            else {
                typedValue4 = null;
            }
            final boolean hasValue = obtainStyledAttributes.hasValue(android.support.v7.a.l.tm);
            TypedValue typedValue5 = null;
            if (hasValue) {
                typedValue5 = new TypedValue();
                obtainStyledAttributes.getValue(android.support.v7.a.l.tm, typedValue5);
            }
            final DisplayMetrics displayMetrics = this.nX.getResources().getDisplayMetrics();
            boolean b;
            if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
                b = true;
            }
            else {
                b = false;
            }
            if (!b) {
                typedValue3 = typedValue2;
            }
            while (true) {
                Label_0782: {
                    if (typedValue3 == null || typedValue3.type == 0) {
                        break Label_0782;
                    }
                    int n;
                    if (typedValue3.type == 5) {
                        n = (int)typedValue3.getDimension(displayMetrics);
                    }
                    else {
                        if (typedValue3.type != 6) {
                            break Label_0782;
                        }
                        n = (int)typedValue3.getFraction((float)displayMetrics.widthPixels, (float)displayMetrics.widthPixels);
                    }
                    if (!b) {
                        typedValue4 = typedValue5;
                    }
                    while (true) {
                        Label_0776: {
                            if (typedValue4 == null || typedValue4.type == 0) {
                                break Label_0776;
                            }
                            int n2;
                            if (typedValue4.type == 5) {
                                n2 = (int)typedValue4.getDimension(displayMetrics);
                            }
                            else {
                                if (typedValue4.type != 6) {
                                    break Label_0776;
                                }
                                n2 = (int)typedValue4.getFraction((float)displayMetrics.heightPixels, (float)displayMetrics.heightPixels);
                            }
                            if (n != -1 || n2 != -1) {
                                this.nX.getWindow().setLayout(n, n2);
                            }
                            obtainStyledAttributes.recycle();
                            this.cS();
                            this.op = true;
                            final ActionBarActivityDelegateBase$PanelFeatureState aa = this.aa(0);
                            if (!this.isDestroyed() && (aa == null || aa.oL == null)) {
                                this.invalidatePanelMenu(8);
                                return;
                            }
                            return;
                        }
                        int n2 = -1;
                        continue;
                    }
                }
                int n = -1;
                continue;
            }
        }
    }
    
    private ActionBarActivityDelegateBase$PanelFeatureState e(final Menu menu) {
        final ActionBarActivityDelegateBase$PanelFeatureState[] ox = this.ox;
        if (ox != null) {
            final int length = ox.length;
        }
        else {
            final int length = 0;
        }
        for (final ActionBarActivityDelegateBase$PanelFeatureState actionBarActivityDelegateBase$PanelFeatureState : ox) {
            if (actionBarActivityDelegateBase$PanelFeatureState != null && actionBarActivityDelegateBase$PanelFeatureState.oL == menu) {
                return actionBarActivityDelegateBase$PanelFeatureState;
            }
        }
        return null;
    }
    
    private void invalidatePanelMenu(final int n) {
        this.oA |= 1 << n;
        if (!this.oz && this.oq != null) {
            ad.a((View)this.oq, this.oB);
            this.oz = true;
        }
    }
    
    public final void D() {
        final android.support.v7.app.a cf = this.cF();
        if (cf != null && cf.cE()) {
            return;
        }
        this.invalidatePanelMenu(0);
    }
    
    @Override
    final View a(final String s, final Context context, final AttributeSet set) {
        if (Build$VERSION.SDK_INT < 21) {
            switch (s) {
                case "EditText": {
                    return (View)new android.support.v7.internal.widget.T(context, set);
                }
                case "Spinner": {
                    return (View)new Y(context, set);
                }
                case "CheckBox": {
                    return (View)new Q(context, set);
                }
                case "RadioButton": {
                    return (View)new W(context, set);
                }
                case "CheckedTextView": {
                    return (View)new R(context, set);
                }
            }
        }
        return null;
    }
    
    @Override
    public final void a(final android.support.v7.internal.view.menu.i i) {
        if (this.oi != null && this.oi.eD() && (!ar.b(ViewConfiguration.get((Context)this.nX)) || this.oi.eE())) {
            final android.support.v7.internal.a.i cp = this.cP();
            if (!this.oi.isOverflowMenuShowing()) {
                if (cp != null && !this.isDestroyed()) {
                    if (this.oz && (0x1 & this.oA) != 0x0) {
                        this.oq.removeCallbacks(this.oB);
                        this.oB.run();
                    }
                    final ActionBarActivityDelegateBase$PanelFeatureState aa = this.aa(0);
                    if (aa.oL != null && !aa.oS && cp.onPreparePanel(0, null, (Menu)aa.oL)) {
                        cp.onMenuOpened(8, (Menu)aa.oL);
                        this.oi.showOverflowMenu();
                    }
                }
            }
            else {
                this.oi.hideOverflowMenu();
                if (!this.isDestroyed()) {
                    this.nX.onPanelClosed(8, (Menu)this.aa(0).oL);
                }
            }
            return;
        }
        final ActionBarActivityDelegateBase$PanelFeatureState aa2 = this.aa(0);
        aa2.oR = true;
        this.a(aa2, false);
        this.a(aa2);
    }
    
    @Override
    final void a(final Toolbar toolbar) {
        final android.support.v7.app.a cf = this.cF();
        if (cf instanceof android.support.v7.internal.a.j) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        if (cf instanceof android.support.v7.internal.a.b) {
            ((android.support.v7.internal.a.b)cf).a((g)null);
        }
        final android.support.v7.internal.a.b b = new android.support.v7.internal.a.b(toolbar, this.nX.getTitle(), this.nX.getWindow(), this.oe);
        if (this.oD == null) {
            final TypedValue typedValue = new TypedValue();
            this.nX.getTheme().resolveAttribute(android.support.v7.a.b.px, typedValue, true);
            final android.support.v7.app.g nx = this.nX;
            int n;
            if (typedValue.resourceId != 0) {
                n = typedValue.resourceId;
            }
            else {
                n = android.support.v7.a.k.qO;
            }
            this.oD = new g((Context)new ContextThemeWrapper((Context)nx, n), i.qG);
        }
        b.a(this.oD);
        this.a(b);
        this.a(b.cZ());
        b.cE();
    }
    
    @Override
    public final boolean a(final android.support.v7.internal.view.menu.i i, final MenuItem menuItem) {
        final android.support.v7.internal.a.i cp = this.cP();
        if (cp != null && !this.isDestroyed()) {
            final ActionBarActivityDelegateBase$PanelFeatureState e = this.e((Menu)i.dZ());
            if (e != null) {
                return cp.onMenuItemSelected(e.oI, menuItem);
            }
        }
        return false;
    }
    
    public final void addContentView(final View view, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        this.cR();
        ((ViewGroup)this.nX.findViewById(16908290)).addView(view, viewGroup$LayoutParams);
        final android.support.v7.app.g nx = this.nX;
        android.support.v7.app.g.cI();
    }
    
    public final a b(final android.support.v7.c.b b) {
        if (b == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.ol != null) {
            this.ol.finish();
        }
        final p p = new p(this, b);
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            this.ol = cf.a(p);
            if (this.ol != null) {
                this.nX.a(this.ol);
            }
        }
        if (this.ol == null) {
            this.ol = this.c(p);
        }
        return this.ol;
    }
    
    @Override
    final a c(final android.support.v7.c.b b) {
        if (this.ol != null) {
            this.ol.finish();
        }
        final p p = new p(this, b);
        final Context co = this.cO();
        if (this.om == null) {
            if (this.od) {
                this.om = new ActionBarContextView(co);
                (this.on = new PopupWindow(co, (AttributeSet)null, b.pu)).setContentView((View)this.om);
                this.on.setWidth(-1);
                final TypedValue typedValue = new TypedValue();
                this.nX.getTheme().resolveAttribute(b.actionBarSize, typedValue, true);
                this.om.af(TypedValue.complexToDimensionPixelSize(typedValue.data, this.nX.getResources().getDisplayMetrics()));
                this.on.setHeight(-2);
                this.oo = new n(this);
            }
            else {
                final ViewStubCompat viewStubCompat = (ViewStubCompat)this.nX.findViewById(android.support.v7.a.g.qt);
                if (viewStubCompat != null) {
                    viewStubCompat.setLayoutInflater(LayoutInflater.from(co));
                    this.om = (ActionBarContextView)viewStubCompat.inflate();
                }
            }
        }
        if (this.om != null) {
            this.om.ey();
            final android.support.v7.internal.view.b ol = new android.support.v7.internal.view.b(co, this.om, p, this.on == null);
            if (b.a(ol, ol.getMenu())) {
                ol.invalidate();
                this.om.e(ol);
                this.om.setVisibility(0);
                this.ol = ol;
                if (this.on != null) {
                    this.nX.getWindow().getDecorView().post(this.oo);
                }
                this.om.sendAccessibilityEvent(32);
                if (this.om.getParent() != null) {
                    ad.v((View)this.om.getParent());
                }
            }
            else {
                this.ol = null;
            }
        }
        if (this.ol != null && this.nX != null) {
            this.nX.a(this.ol);
        }
        return this.ol;
    }
    
    public final android.support.v7.app.a cK() {
        this.cR();
        final android.support.v7.internal.a.j j = new android.support.v7.internal.a.j(this.nX, this.ob);
        j.j(this.oC);
        return j;
    }
    
    public final boolean cM() {
        if (this.ol != null) {
            this.ol.finish();
        }
        else {
            final android.support.v7.app.a cf = this.cF();
            if (cf == null || !cf.collapseActionView()) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    final int cN() {
        return b.homeAsUpIndicator;
    }
    
    void cS() {
    }
    
    @Override
    boolean d(final KeyEvent keyEvent) {
        return this.e(keyEvent);
    }
    
    @Override
    final boolean e(final KeyEvent keyEvent) {
        if (this.oy == null || !this.a(this.oy, keyEvent.getKeyCode(), keyEvent)) {
            if (this.oy == null) {
                final ActionBarActivityDelegateBase$PanelFeatureState aa = this.aa(0);
                this.a(aa, keyEvent);
                final boolean a = this.a(aa, keyEvent.getKeyCode(), keyEvent);
                aa.oO = false;
                if (a) {
                    return true;
                }
            }
            return false;
        }
        if (this.oy != null) {
            this.oy.oP = true;
        }
        return true;
    }
    
    public final void k(final CharSequence ot) {
        if (this.oi != null) {
            this.oi.j(ot);
            return;
        }
        if (this.cF() != null) {
            this.cF().j(ot);
            return;
        }
        this.ot = ot;
    }
    
    public final void onConfigurationChanged(final Configuration configuration) {
        if (this.oa && this.op) {
            final android.support.v7.app.a cf = this.cF();
            if (cf != null) {
                cf.onConfigurationChanged(configuration);
            }
        }
    }
    
    @Override
    final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.oq = (ViewGroup)this.nX.getWindow().getDecorView();
        if (O.b(this.nX) != null) {
            final android.support.v7.app.a cl = this.cL();
            if (cl != null) {
                cl.j(true);
                return;
            }
            this.oC = true;
        }
    }
    
    public final boolean onCreatePanelMenu(final int n, final Menu menu) {
        return n != 0 && this.cP().onCreatePanelMenu(n, menu);
    }
    
    public final View onCreatePanelView(final int n) {
        final a ol = this.ol;
        View view = null;
        if (ol == null) {
            final android.support.v7.internal.a.i cp = this.cP();
            view = null;
            if (cp != null) {
                view = cp.onCreatePanelView(n);
            }
            if (view == null && this.oD == null) {
                final ActionBarActivityDelegateBase$PanelFeatureState aa = this.aa(n);
                this.a(aa);
                if (aa.mT) {
                    view = aa.oK;
                }
            }
        }
        return view;
    }
    
    @Override
    final boolean onMenuOpened(final int n, final Menu menu) {
        if (n == 8) {
            final android.support.v7.app.a cf = this.cF();
            if (cf != null) {
                cf.l(true);
            }
            return true;
        }
        return this.nX.c(n, menu);
    }
    
    public final void onPanelClosed(final int n, final Menu menu) {
        final ActionBarActivityDelegateBase$PanelFeatureState aa = this.aa(n);
        if (aa != null) {
            this.a(aa, false);
        }
        if (n == 8) {
            final android.support.v7.app.a cf = this.cF();
            if (cf != null) {
                cf.l(false);
            }
        }
        else if (!this.isDestroyed()) {
            this.nX.b(n, menu);
        }
    }
    
    public final void onPostResume() {
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            cf.k(true);
        }
    }
    
    public final boolean onPreparePanel(final int n, final View view, final Menu menu) {
        return n != 0 && this.cP().onPreparePanel(n, view, menu);
    }
    
    public final void onStop() {
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            cf.k(false);
        }
    }
    
    public final void setContentView(final int n) {
        this.cR();
        final ViewGroup viewGroup = (ViewGroup)this.nX.findViewById(16908290);
        viewGroup.removeAllViews();
        this.nX.getLayoutInflater().inflate(n, viewGroup);
        final android.support.v7.app.g nx = this.nX;
        android.support.v7.app.g.cI();
    }
    
    public final void setContentView(final View view) {
        this.cR();
        final ViewGroup viewGroup = (ViewGroup)this.nX.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        final android.support.v7.app.g nx = this.nX;
        android.support.v7.app.g.cI();
    }
    
    public final void setContentView(final View view, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        this.cR();
        final ViewGroup viewGroup = (ViewGroup)this.nX.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, viewGroup$LayoutParams);
        final android.support.v7.app.g nx = this.nX;
        android.support.v7.app.g.cI();
    }
}
