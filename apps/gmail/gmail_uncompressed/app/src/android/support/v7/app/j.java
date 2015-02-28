package android.support.v7.app;

import android.graphics.drawable.*;
import android.content.*;
import android.content.res.*;

final class j implements u
{
    final /* synthetic */ h oh;
    
    private j(final h oh) {
        this.oh = oh;
    }
    
    @Override
    public final void Z(final int homeActionContentDescription) {
        final a cf = this.oh.cF();
        if (cf != null) {
            cf.setHomeActionContentDescription(homeActionContentDescription);
        }
    }
    
    @Override
    public final void b(final Drawable homeAsUpIndicator, final int homeActionContentDescription) {
        final a cf = this.oh.cF();
        if (cf != null) {
            cf.setHomeAsUpIndicator(homeAsUpIndicator);
            cf.setHomeActionContentDescription(homeActionContentDescription);
        }
    }
    
    @Override
    public final Context cO() {
        return this.oh.cO();
    }
    
    @Override
    public final Drawable cQ() {
        final TypedArray obtainStyledAttributes = this.oh.cO().obtainStyledAttributes(new int[] { this.oh.cN() });
        final Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }
}
