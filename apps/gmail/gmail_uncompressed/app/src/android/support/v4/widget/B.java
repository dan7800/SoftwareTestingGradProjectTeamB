package android.support.v4.widget;

import android.view.animation.*;
import android.content.res.*;
import android.util.*;
import android.os.*;
import android.view.*;
import android.support.v4.view.*;

final class b
{
    private int kA;
    private int kB;
    private long kC;
    private float kD;
    private int kE;
    private int ku;
    private int kv;
    private float kw;
    private float kx;
    private long ky;
    private long kz;
    
    public b() {
        this.ky = Long.MIN_VALUE;
        this.kC = -1L;
        this.kz = 0L;
        this.kA = 0;
        this.kB = 0;
    }
    
    private float c(final long n) {
        if (n < this.ky) {
            return 0.0f;
        }
        if (this.kC < 0L || n < this.kC) {
            return 0.5f * a.e((n - this.ky) / this.ku);
        }
        return 1.0f - this.kD + this.kD * a.e((n - this.kC) / this.kE);
    }
    
    public final void J(final int n) {
        this.ku = 500;
    }
    
    public final void K(final int n) {
        this.kv = 500;
    }
    
    public final void bA() {
        final long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.kE = a.e((int)(currentAnimationTimeMillis - this.ky), this.kv);
        this.kD = this.c(currentAnimationTimeMillis);
        this.kC = currentAnimationTimeMillis;
    }
    
    public final void bB() {
        if (this.kz == 0L) {
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }
        final long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        final float c = this.c(currentAnimationTimeMillis);
        final float n = c * (-4.0f * c) + c * 4.0f;
        final long n2 = currentAnimationTimeMillis - this.kz;
        this.kz = currentAnimationTimeMillis;
        this.kA = (int)(n * n2 * this.kw);
        this.kB = (int)(n * n2 * this.kx);
    }
    
    public final int bC() {
        return (int)(this.kw / Math.abs(this.kw));
    }
    
    public final int bD() {
        return (int)(this.kx / Math.abs(this.kx));
    }
    
    public final int bE() {
        return this.kA;
    }
    
    public final int bF() {
        return this.kB;
    }
    
    public final void c(final float kw, final float kx) {
        this.kw = kw;
        this.kx = kx;
    }
    
    public final boolean isFinished() {
        return this.kC > 0L && AnimationUtils.currentAnimationTimeMillis() > this.kC + this.kE;
    }
    
    public final void start() {
        this.ky = AnimationUtils.currentAnimationTimeMillis();
        this.kC = -1L;
        this.kz = this.ky;
        this.kD = 0.5f;
        this.kA = 0;
        this.kB = 0;
    }
}
