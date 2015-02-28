package com.android.mail.b;

import android.graphics.drawable.*;
import android.animation.*;
import android.graphics.*;

public class o extends Drawable implements Drawable$Callback
{
    protected final Drawable akU;
    protected final Drawable akV;
    protected final int akW;
    protected final int akX;
    protected final int akY;
    private final ValueAnimator akZ;
    private float ala;
    private boolean alb;
    
    public o(final Drawable akU, final Drawable akV, final int akW) {
        this.ala = 0.0f;
        this.alb = true;
        if (akU == null || akV == null) {
            throw new IllegalArgumentException("Front and back drawables must not be null.");
        }
        this.akU = akU;
        this.akV = akV;
        this.akU.setCallback((Drawable$Callback)this);
        this.akV.setCallback((Drawable$Callback)this);
        this.akW = akW;
        this.akX = 0;
        this.akY = 150;
        (this.akZ = ValueAnimator.ofFloat(new float[] { 0.0f, 2.0f }).setDuration((long)(this.akX + this.akW + this.akY))).addUpdateListener((ValueAnimator$AnimatorUpdateListener)new p(this));
        this.ap(true);
    }
    
    public void ap(final boolean alb) {
        final float ala = this.ala;
        this.akZ.cancel();
        float ala2;
        if (alb) {
            ala2 = 0.0f;
        }
        else {
            ala2 = 2.0f;
        }
        this.ala = ala2;
        this.alb = alb;
        if (this.ala != ala) {
            this.invalidateSelf();
        }
    }
    
    public final void aq(final boolean b) {
        if (this.alb != b) {
            this.ow();
        }
    }
    
    public void draw(final Canvas canvas) {
        final Rect bounds = this.getBounds();
        if (!this.isVisible() || bounds.isEmpty()) {
            return;
        }
        final float n = this.akX + this.akW + this.akY;
        int n2;
        if (this.ala / 2.0f < (this.akX / n + (n - this.akY) / n) / 2.0f) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        Drawable drawable;
        if (n2 != 0) {
            drawable = this.akU;
        }
        else {
            drawable = this.akV;
        }
        final float n3 = this.akX + this.akW + this.akY;
        float n4;
        if (this.ala / 2.0f <= this.akX / n3) {
            n4 = 1.0f;
        }
        else if (this.ala / 2.0f >= (n3 - this.akY) / n3) {
            n4 = 1.0f;
        }
        else {
            final float n5 = this.ala / 2.0f;
            final float n6 = (this.akX / n3 + (n3 - this.akY) / n3) / 2.0f;
            n4 = Math.abs(n5 - n6) * (1.0f / (n6 - this.akX / n3));
        }
        canvas.save();
        canvas.scale(n4, 1.0f, bounds.exactCenterX(), bounds.exactCenterY());
        drawable.draw(canvas);
        canvas.restore();
    }
    
    public int getOpacity() {
        return resolveOpacity(this.akU.getOpacity(), this.akV.getOpacity());
    }
    
    public void invalidateDrawable(final Drawable drawable) {
        this.invalidateSelf();
    }
    
    public final boolean isFlipping() {
        return this.akZ.isStarted();
    }
    
    public final boolean oB() {
        return this.alb;
    }
    
    protected void onBoundsChange(final Rect rect) {
        super.onBoundsChange(rect);
        if (rect.isEmpty()) {
            this.akU.setBounds(0, 0, 0, 0);
            this.akV.setBounds(0, 0, 0, 0);
            return;
        }
        this.akU.setBounds(rect);
        this.akV.setBounds(rect);
    }
    
    protected boolean onLevelChange(final int n) {
        return this.akU.setLevel(n) || this.akV.setLevel(n);
    }
    
    public void ow() {
        this.alb = !this.alb;
        if (!this.akZ.isStarted() && !this.alb) {
            this.akZ.start();
            return;
        }
        this.akZ.reverse();
    }
    
    public void scheduleDrawable(final Drawable drawable, final Runnable runnable, final long n) {
        this.scheduleSelf(runnable, n);
    }
    
    public void setAlpha(final int n) {
        this.akU.setAlpha(n);
        this.akV.setAlpha(n);
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
        this.akU.setColorFilter(colorFilter);
        this.akV.setColorFilter(colorFilter);
    }
    
    public void unscheduleDrawable(final Drawable drawable, final Runnable runnable) {
        this.unscheduleSelf(runnable);
    }
}
