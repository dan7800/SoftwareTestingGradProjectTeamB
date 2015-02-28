package com.android.email;

import android.graphics.*;
import android.content.res.*;
import android.content.*;

public final class u
{
    private static u LX;
    private final int[] LY;
    private final Paint[] LZ;
    private final TypedArray Ma;
    private final Resources lR;
    private final Context mContext;
    
    private u(final Context context) {
        this.mContext = context.getApplicationContext();
        this.lR = this.mContext.getResources();
        this.Ma = this.lR.obtainTypedArray(2131689495);
        this.LY = this.lR.getIntArray(2131689495);
        this.LZ = new Paint[this.LY.length];
        for (int i = 0; i < this.LY.length; ++i) {
            final Paint paint = new Paint();
            paint.setColor(this.LY[i]);
            this.LZ[i] = paint;
        }
    }
    
    public static u v(final Context context) {
        synchronized (u.class) {
            if (u.LX == null) {
                u.LX = new u(context);
            }
            return u.LX;
        }
    }
    
    public final int j(final long n) {
        return this.LY[Math.abs((int)((n - 1L) % this.LY.length))];
    }
}
