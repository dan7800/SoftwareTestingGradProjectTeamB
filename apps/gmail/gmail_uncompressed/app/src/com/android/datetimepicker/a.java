package com.android.datetimepicker;

import android.database.*;
import android.content.*;
import android.provider.*;
import android.os.*;

public final class a
{
    private final ContentObserver Hc;
    private Vibrator Hd;
    private boolean He;
    private long Hf;
    private final Context mContext;
    
    public a(final Context mContext) {
        this.mContext = mContext;
        this.Hc = new b(this);
    }
    
    private static boolean i(final Context context) {
        return Settings$System.getInt(context.getContentResolver(), "haptic_feedback_enabled", 0) == 1;
    }
    
    public final void ge() {
        if (this.Hd != null && this.He) {
            final long uptimeMillis = SystemClock.uptimeMillis();
            if (uptimeMillis - this.Hf >= 125L) {
                this.Hd.vibrate(5L);
                this.Hf = uptimeMillis;
            }
        }
    }
    
    public final void start() {
        this.Hd = (Vibrator)this.mContext.getSystemService("vibrator");
        this.He = i(this.mContext);
        this.mContext.getContentResolver().registerContentObserver(Settings$System.getUriFor("haptic_feedback_enabled"), false, this.Hc);
    }
    
    public final void stop() {
        this.Hd = null;
        this.mContext.getContentResolver().unregisterContentObserver(this.Hc);
    }
}
