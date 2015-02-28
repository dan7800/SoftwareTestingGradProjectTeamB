package android.support.v4.view.a;

import android.view.*;
import android.view.accessibility.*;
import android.graphics.*;

class k extends p
{
    @Override
    public final Object E(final View view) {
        return AccessibilityNodeInfo.obtain(view);
    }
    
    @Override
    public final void a(final Object o, final int n) {
        ((AccessibilityNodeInfo)o).addAction(n);
    }
    
    @Override
    public final void a(final Object o, final Rect rect) {
        ((AccessibilityNodeInfo)o).getBoundsInParent(rect);
    }
    
    @Override
    public final void a(final Object o, final CharSequence className) {
        ((AccessibilityNodeInfo)o).setClassName(className);
    }
    
    @Override
    public final void a(final Object o, final boolean clickable) {
        ((AccessibilityNodeInfo)o).setClickable(clickable);
    }
    
    @Override
    public final void b(final Object o, final Rect rect) {
        ((AccessibilityNodeInfo)o).getBoundsInScreen(rect);
    }
    
    @Override
    public final void b(final Object o, final CharSequence contentDescription) {
        ((AccessibilityNodeInfo)o).setContentDescription(contentDescription);
    }
    
    @Override
    public final void b(final Object o, final boolean enabled) {
        ((AccessibilityNodeInfo)o).setEnabled(enabled);
    }
    
    @Override
    public final Object bt() {
        return AccessibilityNodeInfo.obtain();
    }
    
    @Override
    public final void c(final Object o, final Rect boundsInParent) {
        ((AccessibilityNodeInfo)o).setBoundsInParent(boundsInParent);
    }
    
    @Override
    public final void c(final Object o, final View view) {
        ((AccessibilityNodeInfo)o).addChild(view);
    }
    
    @Override
    public final void c(final Object o, final CharSequence packageName) {
        ((AccessibilityNodeInfo)o).setPackageName(packageName);
    }
    
    @Override
    public final void c(final Object o, final boolean focusable) {
        ((AccessibilityNodeInfo)o).setFocusable(focusable);
    }
    
    @Override
    public final void d(final Object o, final Rect boundsInScreen) {
        ((AccessibilityNodeInfo)o).setBoundsInScreen(boundsInScreen);
    }
    
    @Override
    public final void d(final Object o, final View parent) {
        ((AccessibilityNodeInfo)o).setParent(parent);
    }
    
    @Override
    public final void d(final Object o, final boolean focused) {
        ((AccessibilityNodeInfo)o).setFocused(focused);
    }
    
    @Override
    public final void e(final Object o, final View source) {
        ((AccessibilityNodeInfo)o).setSource(source);
    }
    
    @Override
    public final void e(final Object o, final boolean longClickable) {
        ((AccessibilityNodeInfo)o).setLongClickable(longClickable);
    }
    
    @Override
    public final void f(final Object o, final boolean scrollable) {
        ((AccessibilityNodeInfo)o).setScrollable(scrollable);
    }
    
    @Override
    public final void g(final Object o, final boolean selected) {
        ((AccessibilityNodeInfo)o).setSelected(selected);
    }
    
    @Override
    public final Object i(final Object o) {
        return AccessibilityNodeInfo.obtain((AccessibilityNodeInfo)o);
    }
    
    @Override
    public final int j(final Object o) {
        return ((AccessibilityNodeInfo)o).getActions();
    }
    
    @Override
    public final CharSequence k(final Object o) {
        return ((AccessibilityNodeInfo)o).getClassName();
    }
    
    @Override
    public final CharSequence l(final Object o) {
        return ((AccessibilityNodeInfo)o).getContentDescription();
    }
    
    @Override
    public final CharSequence m(final Object o) {
        return ((AccessibilityNodeInfo)o).getPackageName();
    }
    
    @Override
    public final CharSequence n(final Object o) {
        return ((AccessibilityNodeInfo)o).getText();
    }
    
    @Override
    public final boolean o(final Object o) {
        return ((AccessibilityNodeInfo)o).isCheckable();
    }
    
    @Override
    public final boolean p(final Object o) {
        return ((AccessibilityNodeInfo)o).isChecked();
    }
    
    @Override
    public final boolean q(final Object o) {
        return ((AccessibilityNodeInfo)o).isClickable();
    }
    
    @Override
    public final boolean r(final Object o) {
        return ((AccessibilityNodeInfo)o).isEnabled();
    }
    
    @Override
    public final boolean s(final Object o) {
        return ((AccessibilityNodeInfo)o).isFocusable();
    }
    
    @Override
    public final boolean t(final Object o) {
        return ((AccessibilityNodeInfo)o).isFocused();
    }
    
    @Override
    public final boolean u(final Object o) {
        return ((AccessibilityNodeInfo)o).isLongClickable();
    }
    
    @Override
    public final boolean v(final Object o) {
        return ((AccessibilityNodeInfo)o).isPassword();
    }
    
    @Override
    public final boolean w(final Object o) {
        return ((AccessibilityNodeInfo)o).isScrollable();
    }
    
    @Override
    public final boolean x(final Object o) {
        return ((AccessibilityNodeInfo)o).isSelected();
    }
    
    @Override
    public final void y(final Object o) {
        ((AccessibilityNodeInfo)o).recycle();
    }
}
