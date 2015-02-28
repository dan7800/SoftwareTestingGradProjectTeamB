package android.support.v4.view;

import android.view.*;

final class ap implements View$OnApplyWindowInsetsListener
{
    final /* synthetic */ T ii;
    
    ap(final T ii) {
        this.ii = ii;
    }
    
    public final WindowInsets onApplyWindowInsets(final View view, final WindowInsets windowInsets) {
        return ((bo)this.ii.a(new bo(windowInsets))).bq();
    }
}
