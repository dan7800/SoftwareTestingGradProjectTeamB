package android.support.v4.widget;

import android.view.animation.*;
import android.content.res.*;
import android.util.*;
import android.os.*;
import android.view.*;
import android.support.v4.view.*;

public abstract class a implements View$OnTouchListener
{
    private static final int kt;
    private final b kc;
    private final Interpolator kd;
    private final View ke;
    private Runnable kf;
    private float[] kg;
    private float[] kh;
    private int ki;
    private int kj;
    private float[] kk;
    private float[] kl;
    private float[] km;
    private boolean kn;
    private boolean ko;
    private boolean kp;
    private boolean kq;
    private boolean kr;
    private boolean ks;
    
    static {
        kt = ViewConfiguration.getTapTimeout();
    }
    
    public a(final View ke) {
        this.kc = new b();
        this.kd = (Interpolator)new AccelerateInterpolator();
        this.kg = new float[] { 0.0f, 0.0f };
        this.kh = new float[] { Float.MAX_VALUE, Float.MAX_VALUE };
        this.kk = new float[] { 0.0f, 0.0f };
        this.kl = new float[] { 0.0f, 0.0f };
        this.km = new float[] { Float.MAX_VALUE, Float.MAX_VALUE };
        this.ke = ke;
        final DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        final int n = (int)(0.5f + 1575.0f * displayMetrics.density);
        final int n2 = (int)(0.5f + 315.0f * displayMetrics.density);
        final float n3 = n;
        this.km[0] = n3 / 1000.0f;
        this.km[1] = n3 / 1000.0f;
        final float n4 = n2;
        this.kl[0] = n4 / 1000.0f;
        this.kl[1] = n4 / 1000.0f;
        this.ki = 1;
        this.kh[0] = Float.MAX_VALUE;
        this.kh[1] = Float.MAX_VALUE;
        this.kg[0] = 0.2f;
        this.kg[1] = 0.2f;
        this.kk[0] = 0.001f;
        this.kk[1] = 0.001f;
        this.kj = a.kt;
        this.kc.J(500);
        this.kc.K(500);
    }
    
    private static float a(final float n, final float n2, final float n3) {
        if (n > n3) {
            return n3;
        }
        if (n < n2) {
            return n2;
        }
        return n;
    }
    
    private float a(final int n, final float n2, final float n3, final float n4) {
        final float a = a(this.kg[n] * n3, 0.0f, this.kh[n]);
        final float n5 = this.b(n3 - n2, a) - this.b(n2, a);
        float a2 = 0.0f;
        Label_0083: {
            float interpolation;
            if (n5 < 0.0f) {
                interpolation = -this.kd.getInterpolation(-n5);
            }
            else {
                if (n5 <= 0.0f) {
                    a2 = 0.0f;
                    break Label_0083;
                }
                interpolation = this.kd.getInterpolation(n5);
            }
            a2 = a(interpolation, -1.0f, 1.0f);
        }
        if (a2 == 0.0f) {
            return 0.0f;
        }
        final float n6 = this.kk[n];
        final float n7 = this.kl[n];
        final float n8 = this.km[n];
        final float n9 = n6 * n4;
        if (a2 > 0.0f) {
            return a(a2 * n9, n7, n8);
        }
        return -a(n9 * -a2, n7, n8);
    }
    
    private float b(final float n, final float n2) {
        if (n2 != 0.0f) {
            switch (this.ki) {
                default: {
                    return 0.0f;
                }
                case 0:
                case 1: {
                    if (n >= n2) {
                        break;
                    }
                    if (n >= 0.0f) {
                        return 1.0f - n / n2;
                    }
                    if (this.kq && this.ki == 1) {
                        return 1.0f;
                    }
                    break;
                }
                case 2: {
                    if (n < 0.0f) {
                        return n / -n2;
                    }
                    break;
                }
            }
        }
        return 0.0f;
    }
    
    private void bA() {
        if (this.ko) {
            this.kq = false;
            return;
        }
        this.kc.bA();
    }
    
    private boolean bz() {
        final b kc = this.kc;
        final int bd = kc.bD();
        final int bc = kc.bC();
        if (bd != 0 && this.I(bd)) {
            return true;
        }
        if (bc != 0) {
            return false;
        }
        return false;
    }
    
    public abstract void H(final int p0);
    
    public abstract boolean I(final int p0);
    
    public final a e(final boolean kr) {
        if (this.kr && !kr) {
            this.bA();
        }
        this.kr = kr;
        return this;
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        if (this.kr) {
            switch (P.a(motionEvent)) {
                case 0: {
                    this.kp = true;
                    this.kn = false;
                }
                case 2: {
                    this.kc.c(this.a(0, motionEvent.getX(), view.getWidth(), this.ke.getWidth()), this.a(1, motionEvent.getY(), view.getHeight(), this.ke.getHeight()));
                    if (!this.kq && this.bz()) {
                        if (this.kf == null) {
                            this.kf = new c(this, (byte)0);
                        }
                        this.kq = true;
                        this.ko = true;
                        if (!this.kn && this.kj > 0) {
                            ad.a(this.ke, this.kf, this.kj);
                        }
                        else {
                            this.kf.run();
                        }
                        this.kn = true;
                        break;
                    }
                    break;
                }
                case 1:
                case 3: {
                    this.bA();
                    break;
                }
            }
            if (this.ks && this.kq) {
                return true;
            }
        }
        return false;
    }
}
