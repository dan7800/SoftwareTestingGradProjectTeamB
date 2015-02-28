package android.support.v4.view;

import android.view.*;
import android.graphics.*;
import android.animation.*;

class ai extends ah
{
    @Override
    public final void a(final View view, final float translationX) {
        view.setTranslationX(translationX);
    }
    
    @Override
    public final void a(final View view, final int n, final Paint paint) {
        view.setLayerType(n, paint);
    }
    
    @Override
    public void a(final View view, final Paint paint) {
        this.a(view, view.getLayerType(), paint);
        view.invalidate();
    }
    
    @Override
    final long aZ() {
        return ValueAnimator.getFrameDelay();
    }
    
    @Override
    public final void b(final View view, final float translationY) {
        view.setTranslationY(translationY);
    }
    
    @Override
    public final void c(final View view, final float alpha) {
        view.setAlpha(alpha);
    }
    
    @Override
    public final void d(final View view, final float scaleX) {
        view.setScaleX(scaleX);
    }
    
    @Override
    public final void e(final View view, final float scaleY) {
        view.setScaleY(scaleY);
    }
    
    @Override
    public final float k(final View view) {
        return view.getAlpha();
    }
    
    @Override
    public final int l(final View view) {
        return view.getLayerType();
    }
    
    @Override
    public final int p(final View view) {
        return view.getMeasuredState();
    }
    
    @Override
    public final float q(final View view) {
        return view.getTranslationY();
    }
    
    @Override
    public final int resolveSizeAndState(final int n, final int n2, final int n3) {
        return View.resolveSizeAndState(n, n2, n3);
    }
    
    @Override
    public final float t(final View view) {
        return view.getScaleX();
    }
    
    @Override
    public final void x(final View view) {
        view.jumpDrawablesToCurrentState();
    }
}
