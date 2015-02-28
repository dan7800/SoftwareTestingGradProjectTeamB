package com.android.mail.b;

import android.graphics.drawable.*;
import android.content.res.*;
import android.graphics.*;
import com.android.a.*;

public abstract class a extends Drawable implements k
{
    private com.android.a.a GD;
    private j akh;
    protected h aki;
    protected i akj;
    protected final float akk;
    protected final Paint akl;
    protected final Paint akm;
    private int akn;
    private int ako;
    protected final Resources lR;
    protected final Matrix mMatrix;
    
    public a(final Resources lr) {
        this.lR = lr;
        (this.akl = new Paint()).setAntiAlias(true);
        this.akl.setFilterBitmap(true);
        this.akl.setDither(true);
        this.akk = lr.getDimensionPixelSize(2131493130);
        (this.akm = new Paint()).setColor(0);
        this.akm.setStyle(Paint$Style.STROKE);
        this.akm.setStrokeWidth(this.akk);
        this.akm.setAntiAlias(true);
        this.mMatrix = new Matrix();
    }
    
    protected static void a(final Canvas canvas, final Rect rect, final Paint paint) {
        canvas.drawCircle((float)rect.centerX(), (float)rect.centerY(), (float)(rect.width() / 2), paint);
    }
    
    private void a(final h aki) {
        if (this.aki == null || !this.aki.equals(aki)) {
            if (this.akj != null) {
                this.akj.releaseReference();
                this.akj = null;
            }
            if (this.akh != null) {
                this.akh.b(this.aki, this);
            }
            if ((this.aki = aki) == null) {
                this.invalidateSelf();
                return;
            }
            final com.android.a.a gd = this.GD;
            i i = null;
            if (gd != null) {
                i = ((f<h, i>)this.GD).M(aki);
            }
            if (i != null) {
                this.b(i);
                return;
            }
            if (this.aki != null) {
                this.akh.a(this.aki, this);
            }
        }
    }
    
    private void b(final i akj) {
        if (this.akj != null && this.akj != akj) {
            this.akj.releaseReference();
        }
        this.akj = akj;
        this.invalidateSelf();
    }
    
    public final void L(final int akn, final int ako) {
        this.akn = akn;
        this.ako = ako;
    }
    
    protected final void a(final Bitmap bitmap, final int n, final int n2, final Canvas canvas) {
        final Rect bounds = this.getBounds();
        final BitmapShader shader = new BitmapShader(bitmap, Shader$TileMode.CLAMP, Shader$TileMode.CLAMP);
        this.mMatrix.reset();
        final float max = Math.max(bounds.width() / n, bounds.height() / n2);
        this.mMatrix.postScale(max, max);
        this.mMatrix.postTranslate((float)bounds.left, (float)bounds.top);
        shader.setLocalMatrix(this.mMatrix);
        this.akl.setShader((Shader)shader);
        a(canvas, bounds, this.akl);
        canvas.drawCircle((float)bounds.centerX(), (float)bounds.centerY(), bounds.width() / 2.0f - this.akk / 2.0f, this.akm);
    }
    
    protected abstract void a(final Canvas p0);
    
    public final void a(final com.android.a.a gd) {
        this.GD = gd;
    }
    
    public final void a(final j akh) {
        this.akh = akh;
    }
    
    public final void b(final g g, final i i) {
        final h h = (h)g;
        this.akh.b(h, this);
        if (h.equals(this.aki)) {
            this.b(i);
        }
        else if (i != null) {
            i.releaseReference();
        }
    }
    
    public void draw(final Canvas canvas) {
        final Rect bounds = this.getBounds();
        if (!this.isVisible() || bounds.isEmpty()) {
            return;
        }
        if (this.akj != null && this.akj.GM != null) {
            this.a(this.akj.GM, this.akj.fY(), this.akj.fZ(), canvas);
            return;
        }
        this.a(canvas);
    }
    
    public int getOpacity() {
        return 0;
    }
    
    public final int ot() {
        return this.akn;
    }
    
    public final int ou() {
        return this.ako;
    }
    
    public final void ov() {
        this.a((h)null);
    }
    
    public void setAlpha(final int alpha) {
        this.akl.setAlpha(alpha);
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
        this.akl.setColorFilter(colorFilter);
    }
    
    public final void x(final String s, final String s2) {
        this.a(new h(s, s2));
    }
}
