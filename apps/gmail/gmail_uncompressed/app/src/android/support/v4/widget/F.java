package android.support.v4.widget;

import android.support.v4.view.a.*;
import android.view.accessibility.*;
import java.util.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v4.content.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.view.*;
import android.os.*;

final class f extends a
{
    private final Rect lk;
    final /* synthetic */ DrawerLayout ll;
    
    f(final DrawerLayout ll) {
        this.ll = ll;
        this.lk = new Rect();
    }
    
    @Override
    public final void a(final View source, final i i) {
        if (DrawerLayout.kM) {
            super.a(source, i);
        }
        else {
            final i a = i.a(i);
            super.a(source, a);
            i.setSource(source);
            final ViewParent n = ad.n(source);
            if (n instanceof View) {
                i.setParent((View)n);
            }
            final Rect lk = this.lk;
            a.getBoundsInParent(lk);
            i.setBoundsInParent(lk);
            a.getBoundsInScreen(lk);
            i.setBoundsInScreen(lk);
            i.setVisibleToUser(a.isVisibleToUser());
            i.setPackageName(a.getPackageName());
            i.setClassName(a.getClassName());
            i.setContentDescription(a.getContentDescription());
            i.setEnabled(a.isEnabled());
            i.setClickable(a.isClickable());
            i.setFocusable(a.isFocusable());
            i.setFocused(a.isFocused());
            i.setAccessibilityFocused(a.isAccessibilityFocused());
            i.setSelected(a.isSelected());
            i.setLongClickable(a.isLongClickable());
            i.addAction(a.getActions());
            a.recycle();
            final ViewGroup viewGroup = (ViewGroup)source;
            for (int childCount = viewGroup.getChildCount(), j = 0; j < childCount; ++j) {
                final View child = viewGroup.getChildAt(j);
                if (DrawerLayout.O(child)) {
                    i.addChild(child);
                }
            }
        }
        i.setClassName(DrawerLayout.class.getName());
    }
    
    @Override
    public final boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            final List text = accessibilityEvent.getText();
            final View a = this.ll.bO();
            if (a != null) {
                final CharSequence m = this.ll.M(this.ll.H(a));
                if (m != null) {
                    text.add(m);
                }
            }
            return true;
        }
        return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName((CharSequence)DrawerLayout.class.getName());
    }
    
    @Override
    public final boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return (DrawerLayout.kM || DrawerLayout.O(view)) && super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
}
