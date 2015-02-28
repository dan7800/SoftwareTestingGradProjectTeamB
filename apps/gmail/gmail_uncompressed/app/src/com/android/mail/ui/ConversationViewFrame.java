package com.android.mail.ui;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.os.*;

public class ConversationViewFrame extends FrameLayout
{
    private final ViewConfiguration aIs;
    private long aIt;
    private float aIu;
    private float aIv;
    private bd aIw;
    
    public ConversationViewFrame(final Context context) {
        this(context, null);
    }
    
    public ConversationViewFrame(final Context context, final AttributeSet set) {
        super(context, set);
        this.aIs = ViewConfiguration.get(context);
    }
    
    public final void a(final bd aIw) {
        this.aIw = aIw;
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final boolean b = this.aIw != null && this.aIw.yY();
        if (!b && motionEvent.getActionMasked() == 0 && this.aIw != null) {
            this.aIw.za();
        }
        return b;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.aIw != null) {
            switch (motionEvent.getActionMasked()) {
                case 0: {
                    this.aIt = SystemClock.elapsedRealtime();
                    this.aIu = motionEvent.getX();
                    this.aIv = motionEvent.getY();
                    break;
                }
                case 1: {
                    final long n = SystemClock.elapsedRealtime() - this.aIt;
                    final float n2 = motionEvent.getX() - this.aIu;
                    final float n3 = motionEvent.getY() - this.aIv;
                    if (n < ViewConfiguration.getTapTimeout() && n2 < this.aIs.getScaledTouchSlop() && n3 < this.aIs.getScaledTouchSlop()) {
                        this.aIw.yZ();
                        break;
                    }
                    break;
                }
            }
            return true;
        }
        return false;
    }
}
