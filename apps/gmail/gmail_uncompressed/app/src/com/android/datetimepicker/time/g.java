package com.android.datetimepicker.time;

import android.view.*;
import android.content.*;
import android.graphics.*;
import android.animation.*;

public final class g extends View
{
    private float JP;
    private float JQ;
    private boolean JT;
    private boolean JU;
    private float KG;
    private float KI;
    private float KK;
    private boolean KL;
    private Typeface KS;
    private Typeface KT;
    private String[] KU;
    private String[] KV;
    private float KW;
    private float KX;
    private float KY;
    private boolean KZ;
    private boolean Kb;
    private int Kd;
    private int Ke;
    private float La;
    private float Lb;
    private float[] Lc;
    private float[] Ld;
    private float[] Le;
    private float[] Lf;
    private float Lg;
    private float Lh;
    ObjectAnimator Li;
    ObjectAnimator Lj;
    private h Lk;
    private final Paint mb;
    
    public g(final Context context) {
        super(context);
        this.mb = new Paint();
        this.JT = false;
    }
    
    private void a(final float n, final float n2, final float n3, final float textSize, final float[] array, final float[] array2) {
        final float n4 = n * (float)Math.sqrt(3.0) / 2.0f;
        final float n5 = n / 2.0f;
        this.mb.setTextSize(textSize);
        final float n6 = n3 - (this.mb.descent() + this.mb.ascent()) / 2.0f;
        array[0] = n6 - n;
        array2[0] = n2 - n;
        array[1] = n6 - n4;
        array2[1] = n2 - n4;
        array[2] = n6 - n5;
        array2[2] = n2 - n5;
        array[3] = n6;
        array2[3] = n2;
        array[4] = n6 + n5;
        array2[4] = n5 + n2;
        array[5] = n6 + n4;
        array2[5] = n4 + n2;
        array[6] = n6 + n;
        array2[6] = n2 + n;
    }
    
    private void a(final Canvas canvas, final float textSize, final Typeface typeface, final String[] array, final float[] array2, final float[] array3) {
        this.mb.setTextSize(textSize);
        this.mb.setTypeface(typeface);
        canvas.drawText(array[0], array2[3], array3[0], this.mb);
        canvas.drawText(array[1], array2[4], array3[1], this.mb);
        canvas.drawText(array[2], array2[5], array3[2], this.mb);
        canvas.drawText(array[3], array2[6], array3[3], this.mb);
        canvas.drawText(array[4], array2[5], array3[4], this.mb);
        canvas.drawText(array[5], array2[4], array3[5], this.mb);
        canvas.drawText(array[6], array2[3], array3[6], this.mb);
        canvas.drawText(array[7], array2[2], array3[5], this.mb);
        canvas.drawText(array[8], array2[1], array3[4], this.mb);
        canvas.drawText(array[9], array2[0], array3[3], this.mb);
        canvas.drawText(array[10], array2[1], array3[2], this.mb);
        canvas.drawText(array[11], array2[2], array3[1], this.mb);
    }
    
    public final boolean hasOverlappingRendering() {
        return false;
    }
    
    public final void onDraw(final Canvas canvas) {
        if (this.getWidth() != 0 && this.JT) {
            if (!this.JU) {
                this.Kd = this.getWidth() / 2;
                this.Ke = this.getHeight() / 2;
                this.KY = Math.min(this.Kd, this.Ke) * this.JP;
                if (!this.Kb) {
                    this.Ke -= (int)(this.KY * this.JQ / 2.0f);
                }
                this.La = this.KY * this.KW;
                if (this.KL) {
                    this.Lb = this.KY * this.KX;
                }
                (this.Li = ObjectAnimator.ofPropertyValuesHolder((Object)this, new PropertyValuesHolder[] { PropertyValuesHolder.ofKeyframe("animationRadiusMultiplier", new Keyframe[] { Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.2f, this.Lg), Keyframe.ofFloat(1.0f, this.Lh) }), PropertyValuesHolder.ofKeyframe("alpha", new Keyframe[] { Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(1.0f, 0.0f) }) }).setDuration(500L)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)this.Lk);
                (this.Lj = ObjectAnimator.ofPropertyValuesHolder((Object)this, new PropertyValuesHolder[] { PropertyValuesHolder.ofKeyframe("animationRadiusMultiplier", new Keyframe[] { Keyframe.ofFloat(0.0f, this.Lh), Keyframe.ofFloat(0.2f, this.Lh), Keyframe.ofFloat(0.84f, this.Lg), Keyframe.ofFloat(1.0f, 1.0f) }), PropertyValuesHolder.ofKeyframe("alpha", new Keyframe[] { Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.2f, 0.0f), Keyframe.ofFloat(1.0f, 1.0f) }) }).setDuration(625L)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)this.Lk);
                this.KZ = true;
                this.JU = true;
            }
            if (this.KZ) {
                this.a(this.KY * this.KI * this.KK, this.Kd, this.Ke, this.La, this.Lc, this.Ld);
                if (this.KL) {
                    this.a(this.KY * this.KG * this.KK, this.Kd, this.Ke, this.Lb, this.Le, this.Lf);
                }
                this.KZ = false;
            }
            this.a(canvas, this.La, this.KS, this.KU, this.Ld, this.Lc);
            if (this.KL) {
                this.a(canvas, this.Lb, this.KT, this.KV, this.Lf, this.Le);
            }
        }
    }
}
