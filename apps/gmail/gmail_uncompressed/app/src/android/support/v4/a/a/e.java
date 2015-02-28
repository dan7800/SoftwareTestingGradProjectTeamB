package android.support.v4.a.a;

import android.graphics.drawable.*;

class e extends d
{
    @Override
    public final void a(final Drawable drawable, final boolean autoMirrored) {
        drawable.setAutoMirrored(autoMirrored);
    }
    
    @Override
    public final boolean b(final Drawable drawable) {
        return drawable.isAutoMirrored();
    }
}
