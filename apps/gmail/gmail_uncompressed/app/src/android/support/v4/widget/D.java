package android.support.v4.widget;

import android.widget.*;
import android.view.animation.*;
import android.content.*;
import android.graphics.drawable.shapes.*;
import android.support.v4.view.*;
import android.view.*;
import android.graphics.drawable.*;
import android.os.*;

final class d extends ImageView
{
    private Animation$AnimationListener kG;
    private int kH;
    
    public d(final Context context) {
        super(context);
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        final int n = (int)(2.0f * (20.0f * density));
        final int n2 = (int)(1.75f * density);
        final int n3 = (int)(0.0f * density);
        this.kH = (int)(3.5f * density);
        ShapeDrawable backgroundDrawable;
        if (bG()) {
            backgroundDrawable = new ShapeDrawable((Shape)new OvalShape());
            ad.f((View)this, density * 4.0f);
        }
        else {
            backgroundDrawable = new ShapeDrawable((Shape)new e(this, this.kH, n));
            ad.a((View)this, 1, backgroundDrawable.getPaint());
            backgroundDrawable.getPaint().setShadowLayer((float)this.kH, (float)n3, (float)n2, 503316480);
            final int kh = this.kH;
            this.setPadding(kh, kh, kh, kh);
        }
        backgroundDrawable.getPaint().setColor(-328966);
        this.setBackgroundDrawable((Drawable)backgroundDrawable);
    }
    
    private static boolean bG() {
        return Build$VERSION.SDK_INT >= 21;
    }
    
    public final void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.kG != null) {
            this.kG.onAnimationEnd(this.getAnimation());
        }
    }
    
    public final void onAnimationStart() {
        super.onAnimationStart();
        if (this.kG != null) {
            this.kG.onAnimationStart(this.getAnimation());
        }
    }
    
    protected final void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        if (!bG()) {
            this.setMeasuredDimension(this.getMeasuredWidth() + 2 * this.kH, this.getMeasuredHeight() + 2 * this.kH);
        }
    }
    
    public final void setAnimationListener(final Animation$AnimationListener kg) {
        this.kG = kg;
    }
    
    public final void setBackgroundColor(final int n) {
        if (this.getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable)this.getBackground()).getPaint().setColor(this.getResources().getColor(n));
        }
    }
}
