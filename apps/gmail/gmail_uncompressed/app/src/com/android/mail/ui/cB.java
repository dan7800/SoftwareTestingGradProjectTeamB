package com.android.mail.ui;

import android.content.*;
import android.view.*;

public final class cb
{
    private final ViewConfiguration aIs;
    private final cc aKA;
    private boolean aKB;
    private float aKC;
    private float aKD;
    private float aKE;
    private VelocityTracker hT;
    
    public cb(final Context context, final cc aka) {
        this.aKA = aka;
        this.aIs = ViewConfiguration.get(context);
    }
    
    private void a(final boolean akb, final float ake) {
        this.aKB = akb;
        if (this.aKB) {
            this.aKE = ake;
            this.aKA.zA();
            return;
        }
        this.hT.computeCurrentVelocity(1000);
        final float xVelocity = this.hT.getXVelocity();
        final boolean b = Math.abs(xVelocity) > this.aIs.getScaledMinimumFlingVelocity();
        this.hT.clear();
        this.aKA.a(ake - this.aKE, xVelocity, b);
    }
    
    public final boolean a(final MotionEvent motionEvent, final int n, final Float n2) {
        if (this.hT == null) {
            this.hT = VelocityTracker.obtain();
        }
        this.hT.addMovement(motionEvent);
        switch (motionEvent.getAction()) {
            case 0: {
                this.aKC = motionEvent.getX();
                this.aKD = motionEvent.getY();
                break;
            }
            case 2: {
                if (this.aKB) {
                    this.aKA.y(motionEvent.getX() - this.aKE);
                    break;
                }
                final float x = motionEvent.getX();
                if ((n == 0 && x <= this.aKC) || (n == 1 && x >= this.aKC)) {
                    break;
                }
                boolean b;
                if (n2 != null) {
                    if (n == 0) {
                        final float n3 = fcmpl(x, (float)n2);
                        b = false;
                        if (n3 > 0) {
                            b = true;
                        }
                    }
                    else {
                        final float n4 = fcmpg(x, (float)n2);
                        b = false;
                        if (n4 < 0) {
                            b = true;
                        }
                    }
                }
                else {
                    b = true;
                }
                final float abs = Math.abs(x - this.aKC);
                final float abs2 = Math.abs(motionEvent.getY() - this.aKD);
                if (abs >= this.aIs.getScaledTouchSlop() && abs >= abs2 && b) {
                    this.a(true, x);
                    break;
                }
                break;
            }
            case 1: {
                if (this.aKB) {
                    this.a(false, motionEvent.getX());
                    break;
                }
                break;
            }
        }
        return this.aKB;
    }
}
