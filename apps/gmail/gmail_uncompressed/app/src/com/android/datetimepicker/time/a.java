package com.android.datetimepicker.time;

import android.view.*;
import android.content.*;
import android.graphics.*;

public final class a extends View
{
    private int JL;
    private int JM;
    private int JN;
    private int JO;
    private float JP;
    private float JQ;
    private String JR;
    private String JS;
    private boolean JT;
    private boolean JU;
    private int JV;
    private int JW;
    private int JX;
    private int JY;
    private int JZ;
    private int Ka;
    private final Paint mb;
    
    public a(final Context context) {
        super(context);
        this.mb = new Paint();
        this.JT = false;
    }
    
    public final void aL(final int jz) {
        this.JZ = jz;
    }
    
    public final void aM(final int ka) {
        this.Ka = ka;
    }
    
    public final int g(final float n, final float n2) {
        if (this.JU) {
            final int n3 = (int)((n2 - this.JY) * (n2 - this.JY));
            if ((int)Math.sqrt((n - this.JW) * (n - this.JW) + n3) <= this.JV) {
                return 0;
            }
            if ((int)Math.sqrt((n - this.JX) * (n - this.JX) + n3) <= this.JV) {
                return 1;
            }
        }
        return -1;
    }
    
    public final void onDraw(final Canvas canvas) {
        int jl = 255;
        if (this.getWidth() == 0 || !this.JT) {
            return;
        }
        if (!this.JU) {
            final int n = this.getWidth() / 2;
            final int n2 = this.getHeight() / 2;
            final int n3 = (int)(Math.min(n, n2) * this.JP);
            this.JV = (int)(n3 * this.JQ);
            this.mb.setTextSize((float)(3 * this.JV / 4));
            this.JY = n3 + (n2 - this.JV / 2);
            this.JW = n - n3 + this.JV;
            this.JX = n + n3 - this.JV;
            this.JU = true;
        }
        int color = this.JM;
        int color2 = this.JM;
        int alpha;
        if (this.JZ == 0) {
            color = this.JO;
            alpha = this.JL;
        }
        else if (this.JZ == 1) {
            final int jo = this.JO;
            final int jl2 = this.JL;
            color2 = jo;
            alpha = jl;
            jl = jl2;
        }
        else {
            alpha = jl;
        }
        if (this.Ka == 0) {
            color = this.JO;
            alpha = this.JL;
        }
        else if (this.Ka == 1) {
            color2 = this.JO;
            jl = this.JL;
        }
        this.mb.setColor(color);
        this.mb.setAlpha(alpha);
        canvas.drawCircle((float)this.JW, (float)this.JY, (float)this.JV, this.mb);
        this.mb.setColor(color2);
        this.mb.setAlpha(jl);
        canvas.drawCircle((float)this.JX, (float)this.JY, (float)this.JV, this.mb);
        this.mb.setColor(this.JN);
        final int n4 = this.JY - (int)(this.mb.descent() + this.mb.ascent()) / 2;
        canvas.drawText(this.JR, (float)this.JW, (float)n4, this.mb);
        canvas.drawText(this.JS, (float)this.JX, (float)n4, this.mb);
    }
}
