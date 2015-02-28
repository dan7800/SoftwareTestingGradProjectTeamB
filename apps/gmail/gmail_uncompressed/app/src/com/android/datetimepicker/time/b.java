package com.android.datetimepicker.time;

import android.view.*;
import android.content.*;
import com.android.datetimepicker.*;
import android.content.res.*;
import android.graphics.*;

public final class b extends View
{
    private int JC;
    private float JP;
    private float JQ;
    private boolean JT;
    private boolean JU;
    private boolean Kb;
    private int Kc;
    private int Kd;
    private int Ke;
    private int Kf;
    private final Paint mb;
    
    public b(final Context context) {
        super(context);
        this.mb = new Paint();
        final Resources resources = context.getResources();
        this.JC = resources.getColor(d.white);
        this.Kc = resources.getColor(d.Hl);
        this.mb.setAntiAlias(true);
        this.JT = false;
    }
    
    public final void onDraw(final Canvas canvas) {
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
            this.JU = true;
        }
        this.mb.setColor(this.JC);
        canvas.drawCircle((float)this.Kd, (float)this.Ke, (float)this.Kf, this.mb);
        this.mb.setColor(this.Kc);
        canvas.drawCircle((float)this.Kd, (float)this.Ke, 2.0f, this.mb);
    }
}
