package android.support.v4.widget;

import android.view.*;

final class i implements h
{
    @Override
    public final int C(final Object o) {
        if (o != null) {
            return ((WindowInsets)o).getSystemWindowInsetTop();
        }
        return 0;
    }
    
    @Override
    public final void P(final View view) {
        if (view instanceof r) {
            view.setOnApplyWindowInsetsListener((View$OnApplyWindowInsetsListener)new q());
            view.setSystemUiVisibility(1280);
        }
    }
    
    @Override
    public final void a(final View view, final Object o, final int n) {
        WindowInsets windowInsets = (WindowInsets)o;
        if (n == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        }
        else if (n == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        view.dispatchApplyWindowInsets(windowInsets);
    }
    
    @Override
    public final void a(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, final Object o, final int n) {
        WindowInsets windowInsets = (WindowInsets)o;
        if (n == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        }
        else if (n == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        viewGroup$MarginLayoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft();
        viewGroup$MarginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop();
        viewGroup$MarginLayoutParams.rightMargin = windowInsets.getSystemWindowInsetRight();
        viewGroup$MarginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom();
    }
}
