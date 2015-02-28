package android.support.v4.widget;

import android.widget.*;
import android.graphics.*;
import android.content.*;

final class u implements v
{
    @Override
    public final boolean D(final Object o) {
        return ((EdgeEffect)o).isFinished();
    }
    
    @Override
    public final void E(final Object o) {
        ((EdgeEffect)o).finish();
    }
    
    @Override
    public final boolean F(final Object o) {
        final EdgeEffect edgeEffect = (EdgeEffect)o;
        edgeEffect.onRelease();
        return edgeEffect.isFinished();
    }
    
    @Override
    public final void a(final Object o, final int n, final int n2) {
        ((EdgeEffect)o).setSize(n, n2);
    }
    
    @Override
    public final boolean a(final Object o, final float n) {
        ((EdgeEffect)o).onPull(n);
        return true;
    }
    
    @Override
    public final boolean a(final Object o, final Canvas canvas) {
        return ((EdgeEffect)o).draw(canvas);
    }
    
    @Override
    public final Object d(final Context context) {
        return new EdgeEffect(context);
    }
}
