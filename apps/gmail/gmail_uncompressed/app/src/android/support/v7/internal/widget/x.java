package android.support.v7.internal.widget;

import android.content.res.*;
import android.graphics.drawable.*;

final class X extends Resources
{
    private final U AO;
    
    public X(final Resources resources, final U ao) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.AO = ao;
    }
    
    public final Drawable getDrawable(final int n) {
        final Drawable drawable = super.getDrawable(n);
        if (drawable != null) {
            this.AO.a(n, drawable);
        }
        return drawable;
    }
}
