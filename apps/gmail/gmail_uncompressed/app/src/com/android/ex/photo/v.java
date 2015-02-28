package com.android.ex.photo;

import android.support.v4.view.*;
import android.view.*;

final class v implements aN
{
    final /* synthetic */ PhotoViewPager ahv;
    
    v(final PhotoViewPager ahv) {
        this.ahv = ahv;
    }
    
    @Override
    public final void g(final View view, final float n) {
        if (n < 0.0f || n >= 1.0f) {
            view.setTranslationX(0.0f);
            view.setAlpha(1.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            return;
        }
        view.setTranslationX(-n * view.getWidth());
        view.setAlpha(Math.max(0.0f, 1.0f - n));
        final float max = Math.max(0.0f, 1.0f - 0.3f * n);
        view.setScaleX(max);
        view.setScaleY(max);
    }
}
