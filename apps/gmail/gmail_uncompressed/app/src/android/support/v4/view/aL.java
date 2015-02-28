package android.support.v4.view;

import android.view.*;
import android.graphics.*;

class al extends ak
{
    @Override
    public final void a(final View view, final Paint layerPaint) {
        view.setLayerPaint(layerPaint);
    }
    
    @Override
    public final void d(final View view, final int layoutDirection) {
        view.setLayoutDirection(layoutDirection);
    }
    
    @Override
    public final int m(final View view) {
        return view.getLayoutDirection();
    }
    
    @Override
    public final int u(final View view) {
        return view.getWindowSystemUiVisibility();
    }
}
