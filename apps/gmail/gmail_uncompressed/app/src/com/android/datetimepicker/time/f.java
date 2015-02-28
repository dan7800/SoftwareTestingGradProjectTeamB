package com.android.datetimepicker.time;

import android.view.*;
import android.content.*;
import android.graphics.*;

public final class f extends View
{
    private float JP;
    private float JQ;
    private boolean JT;
    private boolean JU;
    private float KG;
    private float KH;
    private float KI;
    private float KJ;
    private float KK;
    private boolean KL;
    private int KM;
    private int KN;
    private int KO;
    private int KP;
    private double KQ;
    private boolean KR;
    private boolean Kb;
    private int Kd;
    private int Ke;
    private int Kf;
    private final Paint mb;
    
    public f(final Context context) {
        super(context);
        this.mb = new Paint();
        this.JT = false;
    }
    
    public final int a(final float n, final float n2, final boolean b, final Boolean[] array) {
        boolean b2 = true;
        if (this.JU) {
            final double sqrt = Math.sqrt((n2 - this.Ke) * (n2 - this.Ke) + (n - this.Kd) * (n - this.Kd));
            if (this.KL) {
                if (b) {
                    array[0] = ((int)Math.abs(sqrt - (int)(this.Kf * this.KG)) <= (int)Math.abs(sqrt - (int)(this.Kf * this.KH)) && b2);
                }
                else {
                    final int n3 = (int)(this.Kf * this.KG) - this.KO;
                    final int n4 = (int)(this.Kf * this.KH) + this.KO;
                    final int n5 = (int)(this.Kf * ((this.KH + this.KG) / 2.0f));
                    if (sqrt >= n3 && sqrt <= n5) {
                        array[0] = b2;
                    }
                    else {
                        if (sqrt > n4 || sqrt < n5) {
                            return -1;
                        }
                        array[0] = false;
                    }
                }
            }
            else if (!b && (int)Math.abs(sqrt - this.KN) > (int)(this.Kf * (1.0f - this.KI))) {
                return -1;
            }
            final int n6 = (int)(180.0 * Math.asin(Math.abs(n2 - this.Ke) / sqrt) / 3.141592653589793);
            final boolean b3 = n > this.Kd && b2;
            if (n2 >= this.Ke) {
                b2 = false;
            }
            if (b3 && b2) {
                return 90 - n6;
            }
            if (b3) {
                return n6 + 90;
            }
            if (!b2) {
                return 270 - n6;
            }
            return n6 + 270;
        }
        return -1;
    }
    
    public final void b(final int kp, final boolean b, final boolean kr) {
        this.KP = kp;
        this.KQ = 3.141592653589793 * kp / 180.0;
        this.KR = kr;
        if (this.KL) {
            if (!b) {
                this.KI = this.KH;
                return;
            }
            this.KI = this.KG;
        }
    }
    
    public final boolean hasOverlappingRendering() {
        return false;
    }
    
    public final void onDraw(final Canvas canvas) {
        boolean ju = true;
        if (this.getWidth() == 0 || !this.JT) {
            return;
        }
        if (!this.JU) {
            this.Kd = this.getWidth() / 2;
            this.Ke = this.getHeight() / 2;
            this.Kf = (int)(Math.min(this.Kd, this.Ke) * this.JP);
            if (!this.Kb) {
                this.Ke -= (int)(this.Kf * this.JQ) / 2;
            }
            this.KO = (int)(this.Kf * this.KJ);
            this.JU = ju;
        }
        this.KN = (int)(this.Kf * this.KI * this.KK);
        final int n = this.Kd + (int)(this.KN * Math.sin(this.KQ));
        int n2 = this.Ke - (int)(this.KN * Math.cos(this.KQ));
        this.mb.setAlpha(this.KM);
        canvas.drawCircle((float)n, (float)n2, (float)this.KO, this.mb);
        final boolean kr = this.KR;
        if (this.KP % 30 == 0) {
            ju = false;
        }
        int n3;
        if (ju | kr) {
            this.mb.setAlpha(255);
            canvas.drawCircle((float)n, (float)n2, (float)(2 * this.KO / 7), this.mb);
            n3 = n;
        }
        else {
            final int n4 = this.KN - this.KO;
            final int n5 = this.Kd + (int)(n4 * Math.sin(this.KQ));
            n2 = this.Ke - (int)(n4 * Math.cos(this.KQ));
            n3 = n5;
        }
        this.mb.setAlpha(255);
        this.mb.setStrokeWidth(1.0f);
        canvas.drawLine((float)this.Kd, (float)this.Ke, (float)n3, (float)n2, this.mb);
    }
}
