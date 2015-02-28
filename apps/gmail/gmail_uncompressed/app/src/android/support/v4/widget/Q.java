package android.support.v4.widget;

import android.view.*;

final class q implements View$OnApplyWindowInsetsListener
{
    public final WindowInsets onApplyWindowInsets(final View view, final WindowInsets windowInsets) {
        ((r)view).j(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
        return windowInsets.consumeSystemWindowInsets();
    }
}
