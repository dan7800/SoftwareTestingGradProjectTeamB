package android.support.v4.view.a;

import android.os.*;
import android.view.*;
import android.graphics.*;

public final class i
{
    private static final l jR;
    private final Object jS;
    
    static {
        if (Build$VERSION.SDK_INT >= 21) {
            jR = new j();
            return;
        }
        if (Build$VERSION.SDK_INT >= 19) {
            jR = new o();
            return;
        }
        if (Build$VERSION.SDK_INT >= 18) {
            jR = new n();
            return;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            jR = new m();
            return;
        }
        if (Build$VERSION.SDK_INT >= 14) {
            jR = new k();
            return;
        }
        jR = new p();
    }
    
    public i(final Object js) {
        this.jS = js;
    }
    
    public static i D(final View view) {
        return h(i.jR.E(view));
    }
    
    public static i a(final i i) {
        return h(i.jR.i(i.jS));
    }
    
    public static i bs() {
        return h(i.jR.bt());
    }
    
    private static i h(final Object o) {
        if (o != null) {
            return new i(o);
        }
        return null;
    }
    
    public final void addAction(final int n) {
        i.jR.a(this.jS, n);
    }
    
    public final void addChild(final View view) {
        i.jR.c(this.jS, view);
    }
    
    public final void addChild(final View view, final int n) {
        i.jR.c(this.jS, view, n);
    }
    
    public final Object br() {
        return this.jS;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null) {
                return false;
            }
            if (this.getClass() != o.getClass()) {
                return false;
            }
            final i i = (i)o;
            if (this.jS == null) {
                if (i.jS != null) {
                    return false;
                }
            }
            else if (!this.jS.equals(i.jS)) {
                return false;
            }
        }
        return true;
    }
    
    public final int getActions() {
        return i.jR.j(this.jS);
    }
    
    public final void getBoundsInParent(final Rect rect) {
        i.jR.a(this.jS, rect);
    }
    
    public final void getBoundsInScreen(final Rect rect) {
        i.jR.b(this.jS, rect);
    }
    
    public final CharSequence getClassName() {
        return i.jR.k(this.jS);
    }
    
    public final CharSequence getContentDescription() {
        return i.jR.l(this.jS);
    }
    
    public final CharSequence getPackageName() {
        return i.jR.m(this.jS);
    }
    
    public final CharSequence getText() {
        return i.jR.n(this.jS);
    }
    
    @Override
    public final int hashCode() {
        if (this.jS == null) {
            return 0;
        }
        return this.jS.hashCode();
    }
    
    public final boolean isAccessibilityFocused() {
        return i.jR.A(this.jS);
    }
    
    public final boolean isClickable() {
        return i.jR.q(this.jS);
    }
    
    public final boolean isEnabled() {
        return i.jR.r(this.jS);
    }
    
    public final boolean isFocusable() {
        return i.jR.s(this.jS);
    }
    
    public final boolean isFocused() {
        return i.jR.t(this.jS);
    }
    
    public final boolean isLongClickable() {
        return i.jR.u(this.jS);
    }
    
    public final boolean isSelected() {
        return i.jR.x(this.jS);
    }
    
    public final boolean isVisibleToUser() {
        return i.jR.z(this.jS);
    }
    
    public final void recycle() {
        i.jR.y(this.jS);
    }
    
    public final void setAccessibilityFocused(final boolean b) {
        i.jR.i(this.jS, b);
    }
    
    public final void setBoundsInParent(final Rect rect) {
        i.jR.c(this.jS, rect);
    }
    
    public final void setBoundsInScreen(final Rect rect) {
        i.jR.d(this.jS, rect);
    }
    
    public final void setClassName(final CharSequence charSequence) {
        i.jR.a(this.jS, charSequence);
    }
    
    public final void setClickable(final boolean b) {
        i.jR.a(this.jS, b);
    }
    
    public final void setContentDescription(final CharSequence charSequence) {
        i.jR.b(this.jS, charSequence);
    }
    
    public final void setEnabled(final boolean b) {
        i.jR.b(this.jS, b);
    }
    
    public final void setFocusable(final boolean b) {
        i.jR.c(this.jS, b);
    }
    
    public final void setFocused(final boolean b) {
        i.jR.d(this.jS, b);
    }
    
    public final void setLongClickable(final boolean b) {
        i.jR.e(this.jS, b);
    }
    
    public final void setPackageName(final CharSequence charSequence) {
        i.jR.c(this.jS, charSequence);
    }
    
    public final void setParent(final View view) {
        i.jR.d(this.jS, view);
    }
    
    public final void setScrollable(final boolean b) {
        i.jR.f(this.jS, b);
    }
    
    public final void setSelected(final boolean b) {
        i.jR.g(this.jS, b);
    }
    
    public final void setSource(final View view) {
        i.jR.e(this.jS, view);
    }
    
    public final void setSource(final View view, final int n) {
        i.jR.b(this.jS, view, n);
    }
    
    public final void setVisibleToUser(final boolean b) {
        i.jR.h(this.jS, b);
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        final Rect rect = new Rect();
        this.getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        this.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(this.getPackageName());
        sb.append("; className: ").append(this.getClassName());
        sb.append("; text: ").append(this.getText());
        sb.append("; contentDescription: ").append(this.getContentDescription());
        sb.append("; viewId: ").append(i.jR.B(this.jS));
        sb.append("; checkable: ").append(i.jR.o(this.jS));
        sb.append("; checked: ").append(i.jR.p(this.jS));
        sb.append("; focusable: ").append(this.isFocusable());
        sb.append("; focused: ").append(this.isFocused());
        sb.append("; selected: ").append(this.isSelected());
        sb.append("; clickable: ").append(this.isClickable());
        sb.append("; longClickable: ").append(this.isLongClickable());
        sb.append("; enabled: ").append(this.isEnabled());
        sb.append("; password: ").append(i.jR.v(this.jS));
        sb.append("; scrollable: " + i.jR.w(this.jS));
        sb.append("; [");
        int n2;
        for (int i = this.getActions(); i != 0; i = n2) {
            final int n = 1 << Integer.numberOfTrailingZeros(i);
            n2 = (i & ~n);
            String s = null;
            switch (n) {
                default: {
                    s = "ACTION_UNKNOWN";
                    break;
                }
                case 1: {
                    s = "ACTION_FOCUS";
                    break;
                }
                case 2: {
                    s = "ACTION_CLEAR_FOCUS";
                    break;
                }
                case 4: {
                    s = "ACTION_SELECT";
                    break;
                }
                case 8: {
                    s = "ACTION_CLEAR_SELECTION";
                    break;
                }
                case 16: {
                    s = "ACTION_CLICK";
                    break;
                }
                case 32: {
                    s = "ACTION_LONG_CLICK";
                    break;
                }
                case 64: {
                    s = "ACTION_ACCESSIBILITY_FOCUS";
                    break;
                }
                case 128: {
                    s = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    break;
                }
                case 256: {
                    s = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    break;
                }
                case 512: {
                    s = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    break;
                }
                case 1024: {
                    s = "ACTION_NEXT_HTML_ELEMENT";
                    break;
                }
                case 2048: {
                    s = "ACTION_PREVIOUS_HTML_ELEMENT";
                    break;
                }
                case 4096: {
                    s = "ACTION_SCROLL_FORWARD";
                    break;
                }
                case 8192: {
                    s = "ACTION_SCROLL_BACKWARD";
                    break;
                }
                case 65536: {
                    s = "ACTION_CUT";
                    break;
                }
                case 16384: {
                    s = "ACTION_COPY";
                    break;
                }
                case 32768: {
                    s = "ACTION_PASTE";
                    break;
                }
                case 131072: {
                    s = "ACTION_SET_SELECTION";
                    break;
                }
            }
            sb.append(s);
            if (n2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
