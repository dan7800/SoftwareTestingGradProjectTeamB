package com.android.ex.photo.views;

import android.content.*;
import android.util.*;
import com.android.ex.photo.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.view.*;

final class c implements Runnable
{
    private boolean Lz;
    private float ajD;
    private float ajE;
    private long ajF;
    private final PhotoView ajs;
    private boolean ajx;
    
    public c(final PhotoView ajs) {
        this.ajF = -1L;
        this.ajs = ajs;
    }
    
    public final boolean k(final float ajD, final float ajE) {
        if (this.ajx) {
            return false;
        }
        this.ajF = -1L;
        this.ajD = ajD;
        this.ajE = ajE;
        this.Lz = false;
        this.ajx = true;
        this.ajs.postDelayed((Runnable)this, 250L);
        return true;
    }
    
    @Override
    public final void run() {
        if (!this.Lz) {
            final long currentTimeMillis = System.currentTimeMillis();
            float n;
            if (this.ajF != -1L) {
                n = currentTimeMillis - this.ajF;
            }
            else {
                n = 0.0f;
            }
            if (this.ajF == -1L) {
                this.ajF = currentTimeMillis;
            }
            float n5 = 0.0f;
            float n6 = 0.0f;
            Label_0074: {
                float n2;
                if (n >= 100.0f) {
                    n2 = this.ajD;
                }
                else {
                    final float n3 = 10.0f * (this.ajD / (100.0f - n));
                    final float n4 = 10.0f * (this.ajE / (100.0f - n));
                    if (Math.abs(n3) > Math.abs(this.ajD) || Float.isNaN(n3)) {
                        n2 = this.ajD;
                    }
                    else {
                        n2 = n3;
                    }
                    if (Math.abs(n4) <= Math.abs(this.ajE) && !Float.isNaN(n4)) {
                        n5 = n2;
                        n6 = n4;
                        break Label_0074;
                    }
                }
                final float ajE = this.ajE;
                n5 = n2;
                n6 = ajE;
            }
            this.ajs.j(n5, n6);
            this.ajD -= n5;
            this.ajE -= n6;
            if (this.ajD == 0.0f && this.ajE == 0.0f) {
                this.stop();
            }
            if (!this.Lz) {
                this.ajs.post((Runnable)this);
            }
        }
    }
    
    public final void stop() {
        this.ajx = false;
        this.Lz = true;
    }
}
