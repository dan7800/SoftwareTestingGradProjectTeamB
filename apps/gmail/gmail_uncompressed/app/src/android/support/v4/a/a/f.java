package android.support.v4.a.a;

import android.graphics.drawable.*;
import android.content.res.*;
import android.graphics.*;

final class f extends e
{
    @Override
    public final void a(final Drawable drawable, final float n, final float n2) {
        drawable.setHotspot(n, n2);
    }
    
    @Override
    public final void a(final Drawable drawable, final int tint) {
        drawable.setTint(tint);
    }
    
    @Override
    public final void a(final Drawable drawable, final int n, final int n2, final int n3, final int n4) {
        drawable.setHotspotBounds(n, n2, n3, n4);
    }
    
    @Override
    public final void a(final Drawable drawable, final ColorStateList tintList) {
        drawable.setTintList(tintList);
    }
    
    @Override
    public final void a(final Drawable drawable, final PorterDuff$Mode tintMode) {
        drawable.setTintMode(tintMode);
    }
}
