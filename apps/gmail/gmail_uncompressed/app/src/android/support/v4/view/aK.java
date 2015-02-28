package android.support.v4.view;

import android.view.*;
import android.os.*;

class ak extends aj
{
    @Override
    public final void a(final View view, final int n, final int n2, final int n3, final int n4) {
        view.postInvalidate(n, n2, n3, n4);
    }
    
    @Override
    public final void a(final View view, final Runnable runnable) {
        view.postOnAnimation(runnable);
    }
    
    @Override
    public final void a(final View view, final Runnable runnable, final long n) {
        view.postOnAnimationDelayed(runnable, n);
    }
    
    @Override
    public void c(final View view, int importantForAccessibility) {
        if (importantForAccessibility == 4) {
            importantForAccessibility = 2;
        }
        view.setImportantForAccessibility(importantForAccessibility);
    }
    
    @Override
    public final void i(final View view) {
        view.postInvalidateOnAnimation();
    }
    
    @Override
    public final int j(final View view) {
        return view.getImportantForAccessibility();
    }
    
    @Override
    public final ViewParent n(final View view) {
        return view.getParentForAccessibility();
    }
    
    @Override
    public final boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return view.performAccessibilityAction(n, bundle);
    }
    
    @Override
    public final int r(final View view) {
        return view.getMinimumHeight();
    }
    
    @Override
    public void v(final View view) {
        view.requestFitSystemWindows();
    }
    
    @Override
    public final boolean w(final View view) {
        return view.getFitsSystemWindows();
    }
}
