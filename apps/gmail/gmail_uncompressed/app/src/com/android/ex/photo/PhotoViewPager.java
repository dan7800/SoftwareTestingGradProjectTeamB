package com.android.ex.photo;

import android.content.*;
import android.util.*;
import android.view.*;
import android.support.v4.view.*;

public class PhotoViewPager extends ViewPager
{
    private float ahs;
    private float aht;
    private w ahu;
    private float iQ;
    private int iU;
    
    public PhotoViewPager(final Context context) {
        super(context);
        this.nD();
    }
    
    public PhotoViewPager(final Context context, final AttributeSet set) {
        super(context, set);
        this.nD();
    }
    
    private void nD() {
        this.a(new v(this));
    }
    
    public final void a(final w ahu) {
        this.ahu = ahu;
    }
    
    @Override
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        int n = 1;
        PhotoViewPager$InterceptType photoViewPager$InterceptType;
        if (this.ahu != null) {
            photoViewPager$InterceptType = this.ahu.i(this.ahs, this.aht);
        }
        else {
            photoViewPager$InterceptType = PhotoViewPager$InterceptType.ahw;
        }
        int n2;
        if (photoViewPager$InterceptType == PhotoViewPager$InterceptType.ahz || photoViewPager$InterceptType == PhotoViewPager$InterceptType.ahx) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        int n3;
        if (photoViewPager$InterceptType == PhotoViewPager$InterceptType.ahz || photoViewPager$InterceptType == PhotoViewPager$InterceptType.ahy) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        final int n4 = 0xFF & motionEvent.getAction();
        if (n4 == 3 || n4 == n) {
            this.iU = -1;
        }
        switch (n4) {
            case 2: {
                if (n2 == 0 && n3 == 0) {
                    break;
                }
                final int iu = this.iU;
                if (iu == -1) {
                    break;
                }
                final float c = P.c(motionEvent, P.a(motionEvent, iu));
                if (n2 != 0 && n3 != 0) {
                    this.iQ = c;
                    return false;
                }
                if (n2 != 0 && c > this.iQ) {
                    this.iQ = c;
                    return false;
                }
                if (n3 != 0 && c < this.iQ) {
                    this.iQ = c;
                    return false;
                }
                break;
            }
            case 0: {
                this.iQ = motionEvent.getX();
                this.ahs = motionEvent.getRawX();
                this.aht = motionEvent.getRawY();
                this.iU = P.b(motionEvent, 0);
                break;
            }
            case 6: {
                final int b = P.b(motionEvent);
                if (P.b(motionEvent, b) == this.iU) {
                    if (b != 0) {
                        n = 0;
                    }
                    this.iQ = P.c(motionEvent, n);
                    this.iU = P.b(motionEvent, n);
                    break;
                }
                break;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
