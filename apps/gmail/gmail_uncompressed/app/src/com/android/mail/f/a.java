package com.android.mail.f;

import android.os.*;
import android.text.*;
import com.android.mail.utils.*;

public final class a
{
    private long axh;
    private String axi;
    private final boolean kr;
    private long ky;
    
    public a() {
        this((byte)0);
    }
    
    public a(final byte b) {
        this.kr = false;
    }
    
    public final a bA(final String axi) {
        this.axi = axi;
        return this;
    }
    
    public final void start() {
        final long uptimeMillis = SystemClock.uptimeMillis();
        this.axh = uptimeMillis;
        this.ky = uptimeMillis;
        String axi;
        if (TextUtils.isEmpty((CharSequence)this.axi)) {
            axi = "SimpleTimer";
        }
        else {
            axi = this.axi;
        }
        E.c(axi, "timer START", new Object[0]);
    }
}
