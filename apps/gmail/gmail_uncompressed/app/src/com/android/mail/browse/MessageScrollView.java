package com.android.mail.browse;

import android.widget.*;
import android.content.*;
import android.util.*;
import java.util.concurrent.*;
import android.view.*;
import com.android.mail.utils.*;
import java.util.*;

public class MessageScrollView extends ScrollView implements GestureDetector$OnDoubleTapListener, ScaleGestureDetector$OnScaleGestureListener, aM
{
    private GestureDetector aeL;
    private boolean ajq;
    private final Set<aN> aru;
    private boolean ats;
    private boolean att;
    private aK atu;
    private ScaleGestureDetector atv;
    private boolean atw;
    private boolean atx;
    private int aty;
    private float hQ;
    private float hR;
    
    public MessageScrollView(final Context context) {
        this(context, null);
    }
    
    public MessageScrollView(final Context context, final AttributeSet set) {
        super(context, set);
        this.aru = new CopyOnWriteArraySet<aN>();
        final int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.aty = scaledTouchSlop * scaledTouchSlop;
        this.atv = new ScaleGestureDetector(context, (ScaleGestureDetector$OnScaleGestureListener)this);
        (this.aeL = new GestureDetector(context, (GestureDetector$OnGestureListener)new GestureDetector$SimpleOnGestureListener())).setOnDoubleTapListener((GestureDetector$OnDoubleTapListener)this);
    }
    
    public final void a(final aK atu) {
        this.atu = atu;
    }
    
    public final void a(final aN an) {
        this.aru.add(an);
    }
    
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }
    
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }
    
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }
    
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }
    
    public int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }
    
    public int computeVerticalScrollRange() {
        return super.computeVerticalScrollRange();
    }
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0: {
                E.c("MsgScroller", "IN ScrollView.dispatchTouch, clearing flags", new Object[0]);
                this.ats = false;
                this.att = false;
                break;
            }
        }
        if (this.atu != null) {
            this.atu.rR();
        }
        this.atv.onTouchEvent(motionEvent);
        this.aeL.onTouchEvent(motionEvent);
        final boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        E.c("MsgScroller", "OUT ScrollView.dispatchTouch, handled=%s ev=%s", dispatchTouchEvent, motionEvent);
        if (this.ats && !this.atw) {
            int n;
            if (this.atu != null && this.atu.rQ()) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n == 0) {
                this.att = true;
                this.ats = false;
                return dispatchTouchEvent;
            }
            E.c("MsgScroller", "IN extra ScrollView.onTouch, ev=%s", motionEvent);
            this.onTouchEvent(motionEvent);
        }
        return dispatchTouchEvent;
    }
    
    public boolean onDoubleTap(final MotionEvent motionEvent) {
        this.ajq = true;
        return false;
    }
    
    public boolean onDoubleTapEvent(final MotionEvent motionEvent) {
        boolean b = true;
        switch (motionEvent.getAction()) {
            case 0: {
                this.hQ = motionEvent.getX();
                this.hR = motionEvent.getY();
                return false;
            }
            case 1: {
                if (this.ajq) {
                    if (this.atx) {
                        this.atu.zoomOut();
                    }
                    else {
                        this.atu.zoomIn();
                    }
                    this.atx = (!this.atx && b);
                    E.c(E.TAG, "Trigger Zoom!", new Object[0]);
                }
                else {
                    b = false;
                }
                this.ajq = false;
                return b;
            }
            case 2: {
                final int n = (int)(motionEvent.getX() - this.hQ);
                final int n2 = (int)(motionEvent.getY() - this.hR);
                if (n * n + n2 * n2 > this.aty) {
                    return this.ajq = false;
                }
                break;
            }
        }
        return false;
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        if (this.att) {
            E.c("MsgScroller", "IN ScrollView.onIntercept, NOW stealing. ev=%s", motionEvent);
            return true;
        }
        if (this.ats) {
            E.c("MsgScroller", "IN ScrollView.onIntercept, already stealing. ev=%s", motionEvent);
            return false;
        }
        this.ats = super.onInterceptTouchEvent(motionEvent);
        E.c("MsgScroller", "OUT ScrollView.onIntercept, steal=%s ev=%s", this.ats, motionEvent);
        return false;
    }
    
    public boolean onScale(final ScaleGestureDetector scaleGestureDetector) {
        return true;
    }
    
    public boolean onScaleBegin(final ScaleGestureDetector scaleGestureDetector) {
        E.c("MsgScroller", "Begin scale gesture", new Object[0]);
        return this.atw = true;
    }
    
    public void onScaleEnd(final ScaleGestureDetector scaleGestureDetector) {
        E.c("MsgScroller", "End scale gesture", new Object[0]);
        this.atw = false;
    }
    
    protected void onScrollChanged(final int n, final int n2, final int n3, final int n4) {
        super.onScrollChanged(n, n2, n3, n4);
        final Iterator<aN> iterator = this.aru.iterator();
        while (iterator.hasNext()) {
            iterator.next().bP(n2);
        }
    }
    
    public boolean onSingleTapConfirmed(final MotionEvent motionEvent) {
        return false;
    }
}
