package com.android.ex.photo.views;

import android.content.*;
import android.util.*;
import com.android.ex.photo.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.view.*;

final class a implements Runnable
{
    private boolean Lz;
    private final PhotoView ajs;
    private float ajt;
    private float aju;
    private float ajv;
    private long ajw;
    private boolean ajx;
    
    public a(final PhotoView ajs) {
        this.ajs = ajs;
    }
    
    @Override
    public final void run() {
        if (!this.Lz) {
            if (this.aju != this.ajt) {
                final long currentTimeMillis = System.currentTimeMillis();
                long n;
                if (this.ajw != -1L) {
                    n = currentTimeMillis - this.ajw;
                }
                else {
                    n = 0L;
                }
                float n2 = this.ajv * n;
                if ((this.aju < this.ajt && n2 + this.aju > this.ajt) || (this.aju > this.ajt && n2 + this.aju < this.ajt)) {
                    n2 = this.ajt - this.aju;
                }
                PhotoView.a(this.ajs, n2);
                this.aju += n2;
                if (this.aju == this.ajt) {
                    this.stop();
                }
                this.ajw = currentTimeMillis;
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
