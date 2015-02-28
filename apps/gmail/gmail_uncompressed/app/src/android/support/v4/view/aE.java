package android.support.v4.view;

import android.view.*;

final class ae extends am
{
    @Override
    public final void a(final View view, final T t) {
        view.setOnApplyWindowInsetsListener((View$OnApplyWindowInsetsListener)new ap(t));
    }
    
    @Override
    public final void f(final View view, final float elevation) {
        view.setElevation(elevation);
    }
    
    @Override
    public final void v(final View view) {
        view.requestApplyInsets();
    }
}
