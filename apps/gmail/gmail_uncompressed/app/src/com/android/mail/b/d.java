package com.android.mail.b;

import android.graphics.drawable.*;
import android.content.res.*;
import android.graphics.*;

final class d extends Drawable
{
    private static Bitmap aku;
    private static int akv;
    private static final Matrix aky;
    private float akw;
    private float akx;
    private final Paint mb;
    
    static {
        aky = new Matrix();
    }
    
    public d(final Resources resources) {
        if (d.aku == null) {
            d.aku = BitmapFactory.decodeResource(resources, 2130837640);
            d.akv = resources.getColor(2131361970);
        }
        (this.mb = new Paint()).setAntiAlias(true);
        this.mb.setFilterBitmap(true);
        this.mb.setColor(d.akv);
    }
    
    public final void draw(final Canvas canvas) {
        final Rect bounds = this.getBounds();
        if (!this.isVisible() || bounds.isEmpty()) {
            return;
        }
        canvas.drawCircle((float)bounds.centerX(), (float)bounds.centerY(), (float)(bounds.width() / 2), this.mb);
        d.aky.reset();
        d.aky.setScale(this.akw, this.akw, (float)(d.aku.getWidth() / 2), (float)(d.aku.getHeight() / 2));
        d.aky.postTranslate((float)(bounds.centerX() - d.aku.getWidth() / 2), (float)(bounds.centerY() - d.aku.getHeight() / 2));
        final int alpha = this.mb.getAlpha();
        this.mb.setAlpha((int)(alpha * this.akx));
        canvas.drawBitmap(d.aku, d.aky, this.mb);
        this.mb.setAlpha(alpha);
    }
    
    public final int getOpacity() {
        return -1;
    }
    
    public final void setAlpha(final int alpha) {
        this.mb.setAlpha(alpha);
    }
    
    public final void setColorFilter(final ColorFilter colorFilter) {
        this.mb.setColorFilter(colorFilter);
    }
    
    public final void u(final float akw) {
        final float akw2 = this.akw;
        this.akw = akw;
        if (akw2 != this.akw) {
            this.invalidateSelf();
        }
    }
    
    public final void v(final float akx) {
        final float akx2 = this.akx;
        this.akx = akx;
        if (akx2 != this.akx) {
            this.invalidateSelf();
        }
    }
}
