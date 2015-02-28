package com.android.mail.e;

import android.graphics.drawable.*;
import android.graphics.*;

public final class a extends InsetDrawable
{
    private final Paint mb;
    
    public a(final Drawable drawable, final int n, final int n2, final int color) {
        super(drawable, n, 0, n2, 0);
        (this.mb = new Paint()).setColor(color);
    }
    
    public final void draw(final Canvas canvas) {
        canvas.drawRect(this.getBounds(), this.mb);
        super.draw(canvas);
    }
}
