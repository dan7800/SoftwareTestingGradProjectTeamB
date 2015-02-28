package com.android.ex.photo.views;

import android.content.*;
import android.util.*;
import com.android.ex.photo.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.view.*;

final class d implements Runnable
{
    private boolean Lz;
    private float ajG;
    private float ajH;
    private float ajI;
    private float ajJ;
    private long ajK;
    private final PhotoView ajs;
    private boolean ajx;
    
    public d(final PhotoView ajs) {
        this.ajK = -1L;
        this.ajs = ajs;
    }
    
    public final boolean k(final float ajG, final float ajH) {
        if (this.ajx) {
            return false;
        }
        this.ajK = -1L;
        this.ajG = ajG;
        this.ajH = ajH;
        final float n = (float)Math.atan2(this.ajH, this.ajG);
        this.ajI = (float)(1000.0 * Math.cos(n));
        this.ajJ = (float)(1000.0 * Math.sin(n));
        this.Lz = false;
        this.ajx = true;
        this.ajs.post((Runnable)this);
        return true;
    }
    
    @Override
    public final void run() {
        float ajJ = 1000.0f;
        if (!this.Lz) {
            final long currentTimeMillis = System.currentTimeMillis();
            float n;
            if (this.ajK != -1L) {
                n = (currentTimeMillis - this.ajK) / ajJ;
            }
            else {
                n = 0.0f;
            }
            final int a = this.ajs.j(n * this.ajG, n * this.ajH);
            this.ajK = currentTimeMillis;
            final float n2 = n * this.ajI;
            if (Math.abs(this.ajG) > Math.abs(n2)) {
                this.ajG -= n2;
            }
            else {
                this.ajG = 0.0f;
            }
            final float n3 = n * this.ajJ;
            if (Math.abs(this.ajH) > Math.abs(n3)) {
                this.ajH -= n3;
            }
            else {
                this.ajH = 0.0f;
            }
            if ((this.ajG == 0.0f && this.ajH == 0.0f) || a == 0) {
                this.stop();
                this.ajs.on();
            }
            else if (a == 1) {
                float ajI;
                if (this.ajG > 0.0f) {
                    ajI = ajJ;
                }
                else {
                    ajI = -1000.0f;
                }
                this.ajI = ajI;
                this.ajJ = 0.0f;
                this.ajH = 0.0f;
            }
            else if (a == 2) {
                this.ajI = 0.0f;
                if (this.ajH <= 0.0f) {
                    ajJ = -1000.0f;
                }
                this.ajJ = ajJ;
                this.ajG = 0.0f;
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
