package android.support.v4.widget;

import java.util.*;
import android.content.res.*;
import android.view.*;
import android.graphics.drawable.*;
import android.content.*;
import android.view.animation.*;
import android.graphics.*;

final class z extends Drawable implements Animatable
{
    private static final Interpolator lJ;
    private static final Interpolator lK;
    private static final Interpolator lL;
    private static final Interpolator lM;
    private final int[] lN;
    private final ArrayList<Animation> lO;
    private final E lP;
    private float lQ;
    private Resources lR;
    private View lS;
    private float lT;
    private double lU;
    private double lV;
    boolean lW;
    private final Drawable$Callback lX;
    private Animation mAnimation;
    
    static {
        lJ = (Interpolator)new LinearInterpolator();
        lK = (Interpolator)new D((byte)0);
        lL = (Interpolator)new F((byte)0);
        lM = (Interpolator)new AccelerateDecelerateInterpolator();
    }
    
    public z(final Context context, final View ls) {
        this.lN = new int[] { -16777216 };
        this.lO = new ArrayList<Animation>();
        this.lX = (Drawable$Callback)new C(this);
        this.lS = ls;
        this.lR = context.getResources();
        (this.lP = new E(this.lX)).setColors(this.lN);
        final E lp = this.lP;
        final float density = this.lR.getDisplayMetrics().density;
        this.lU = 40.0 * density;
        this.lV = 40.0 * density;
        lp.setStrokeWidth(2.5f * density);
        lp.a(8.75 * density);
        lp.cb();
        lp.e(10.0f * density, density * 5.0f);
        lp.j((int)this.lU, (int)this.lV);
        final E lp2 = this.lP;
        final A mAnimation = new A(this, lp2);
        mAnimation.setRepeatCount(-1);
        mAnimation.setRepeatMode(1);
        mAnimation.setInterpolator(z.lJ);
        mAnimation.setAnimationListener((Animation$AnimationListener)new B(this, lp2));
        this.mAnimation = mAnimation;
    }
    
    public final void a(final int... colors) {
        this.lP.setColors(colors);
        this.lP.cb();
    }
    
    public final void bY() {
        this.lP.setBackgroundColor(-328966);
    }
    
    public final void draw(final Canvas canvas) {
        final Rect bounds = this.getBounds();
        final int save = canvas.save();
        canvas.rotate(this.lQ, bounds.exactCenterX(), bounds.exactCenterY());
        this.lP.draw(canvas, bounds);
        canvas.restoreToCount(save);
    }
    
    public final void g(final float n) {
        this.lP.g(n);
    }
    
    public final void g(final boolean b) {
        this.lP.h(b);
    }
    
    public final int getAlpha() {
        return this.lP.getAlpha();
    }
    
    public final int getIntrinsicHeight() {
        return (int)this.lV;
    }
    
    public final int getIntrinsicWidth() {
        return (int)this.lU;
    }
    
    public final int getOpacity() {
        return -3;
    }
    
    public final void h(final float n) {
        this.lP.j(0.0f);
        this.lP.k(n);
    }
    
    public final void i(final float rotation) {
        this.lP.setRotation(rotation);
    }
    
    public final boolean isRunning() {
        final ArrayList<Animation> lo = this.lO;
        for (int size = lo.size(), i = 0; i < size; ++i) {
            final Animation animation = lo.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }
    
    public final void setAlpha(final int alpha) {
        this.lP.setAlpha(alpha);
    }
    
    public final void setColorFilter(final ColorFilter colorFilter) {
        this.lP.setColorFilter(colorFilter);
    }
    
    final void setRotation(final float lq) {
        this.lQ = lq;
        this.invalidateSelf();
    }
    
    public final void start() {
        this.mAnimation.reset();
        this.lP.cj();
        if (this.lP.cg() != this.lP.cd()) {
            this.lW = true;
            this.mAnimation.setDuration(666L);
            this.lS.startAnimation(this.mAnimation);
            return;
        }
        this.lP.cb();
        this.lP.ck();
        this.mAnimation.setDuration(1333L);
        this.lS.startAnimation(this.mAnimation);
    }
    
    public final void stop() {
        this.lS.clearAnimation();
        this.setRotation(0.0f);
        this.lP.h(false);
        this.lP.cb();
        this.lP.ck();
    }
}
