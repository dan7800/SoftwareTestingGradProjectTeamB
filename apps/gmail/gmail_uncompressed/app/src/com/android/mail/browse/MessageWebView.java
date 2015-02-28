package com.android.mail.browse;

import android.webkit.*;
import android.content.*;
import android.util.*;
import android.os.*;
import com.android.mail.utils.*;
import android.view.*;

public class MessageWebView extends WebView implements aK
{
    private static Handler abL;
    private static final String mW;
    private final d LF;
    private final ad atA;
    private int atB;
    private int atC;
    private boolean atD;
    private long atE;
    private boolean atz;
    
    static {
        mW = D.AU();
    }
    
    public MessageWebView(final Context context) {
        this(context, null);
    }
    
    public MessageWebView(final Context context, final AttributeSet set) {
        super(context, set);
        this.LF = d.aOX;
        final aL al = new aL(this);
        if (MessageWebView.abL == null) {
            MessageWebView.abL = new Handler(Looper.getMainLooper());
        }
        this.atA = new ad("MessageWebView", al, MessageWebView.abL);
        this.atE = -1L;
    }
    
    private void M(final int n, final int n2) {
        super.onSizeChanged(this.atB, this.atC, n, n2);
        final d lf = this.LF;
        this.atE = d.getTime();
    }
    
    protected void onSizeChanged(final int atB, final int atC, final int n, final int n2) {
        this.atB = atB;
        this.atC = atC;
        final d lf = this.LF;
        boolean b;
        if (d.getTime() - this.atE < 200L) {
            b = true;
        }
        else {
            b = false;
        }
        if (this.atD) {
            this.atD = false;
            if (b) {
                E.e(MessageWebView.mW, "Suppressing size change in MessageWebView", new Object[0]);
                return;
            }
        }
        if (b) {
            this.atA.Bd();
            return;
        }
        this.M(n, n2);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        this.atz = true;
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        E.c("MsgScroller", "OUT WebView.onTouch, returning handled=%s ev=%s", onTouchEvent, motionEvent);
        return onTouchEvent;
    }
    
    public final boolean rQ() {
        return this.atz;
    }
    
    public final void rR() {
        this.atz = false;
    }
}
