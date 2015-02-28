package com.android.datetimepicker.date;

import android.content.*;
import android.graphics.*;

public final class p extends k
{
    public p(final Context context) {
        super(context);
    }
    
    @Override
    public final void a(final Canvas canvas, final int n, final int n2, final int n3, final int n4, final int n5) {
        if (this.Ji == n3) {
            canvas.drawCircle((float)n4, (float)(n5 - p.IL / 3), (float)p.IP, this.IX);
        }
        if (this.e(n, n2, n3)) {
            this.IU.setColor(this.Jv);
        }
        else if (this.Jh && this.Jj == n3) {
            this.IU.setColor(this.Ju);
        }
        else {
            this.IU.setColor(this.Jt);
        }
        canvas.drawText(String.format("%d", n3), (float)n4, (float)n5, this.IU);
    }
}
