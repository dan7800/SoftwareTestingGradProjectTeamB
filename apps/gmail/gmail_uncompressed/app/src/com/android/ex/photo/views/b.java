package com.android.ex.photo.views;

import android.content.*;
import android.util.*;
import com.android.ex.photo.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.view.*;

final class b implements Runnable
{
    private boolean Lz;
    private boolean ajA;
    private float ajB;
    private float ajC;
    private final PhotoView ajs;
    private float ajv;
    private boolean ajx;
    private float ajy;
    private float ajz;
    private long ky;
    
    public b(final PhotoView ajs) {
        this.ajs = ajs;
    }
    
    public final boolean b(final float ajC, final float ajB, final float ajy, final float ajz) {
        if (this.ajx) {
            return false;
        }
        this.ajy = ajy;
        this.ajz = ajz;
        this.ajB = ajB;
        this.ky = System.currentTimeMillis();
        this.ajC = ajC;
        this.ajA = (this.ajB > this.ajC);
        this.ajv = (this.ajB - this.ajC) / 200.0f;
        this.ajx = true;
        this.Lz = false;
        this.ajs.post((Runnable)this);
        return true;
    }
    
    @Override
    public final void run() {
        if (!this.Lz) {
            final float n = this.ajC + this.ajv * (System.currentTimeMillis() - this.ky);
            this.ajs.scale(n, this.ajy, this.ajz);
            if (n == this.ajB || this.ajA == n > this.ajB) {
                this.ajs.scale(this.ajB, this.ajy, this.ajz);
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
