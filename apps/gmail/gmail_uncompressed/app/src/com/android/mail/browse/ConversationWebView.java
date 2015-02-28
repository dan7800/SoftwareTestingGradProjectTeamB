package com.android.mail.browse;

import android.content.*;
import android.util.*;
import java.util.concurrent.*;
import android.content.res.*;
import android.graphics.*;
import java.util.*;
import android.view.*;
import com.android.mail.utils.*;

public class ConversationWebView extends au implements aM
{
    private static final String mW;
    private final int arn;
    private Canvas aro;
    private boolean arp;
    private boolean arq;
    private final Runnable arr;
    private final int ars;
    private final float art;
    private final Set<aN> aru;
    private boolean arv;
    private boolean arw;
    private Bitmap fN;
    
    static {
        mW = D.AU();
    }
    
    public ConversationWebView(final Context context) {
        this(context, null);
    }
    
    public ConversationWebView(final Context context, final AttributeSet set) {
        super(context, set);
        this.arr = new ai(this);
        this.aru = new CopyOnWriteArraySet<aN>();
        final Resources resources = this.getResources();
        this.ars = resources.getInteger(2131427373);
        this.arn = resources.getInteger(2131427379);
        this.art = resources.getDisplayMetrics().density;
    }
    
    private void qV() {
        if (this.fN != null) {
            this.fN = null;
            this.aro = null;
        }
    }
    
    @Override
    public final void a(final aN an) {
        this.aru.add(an);
    }
    
    public final void aE(final boolean arp) {
        this.arp = arp;
    }
    
    public final void aF(final boolean arq) {
        this.arq = arq;
    }
    
    public final int cf(final int n) {
        return (int)((this.getWidth() - n * 2) / this.art);
    }
    
    public final int cg(final int n) {
        return (int)(n / this.qZ());
    }
    
    public final float ch(final int n) {
        return n / this.qZ() - this.cg(n);
    }
    
    public void destroy() {
        this.qV();
        this.removeCallbacks(this.arr);
        super.destroy();
    }
    
    public void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        if (!this.arp || !this.arq || this.getWidth() <= 0 || this.getHeight() <= 0) {
            return;
        }
        while (true) {
            if (this.fN != null) {
                break Label_0073;
            }
            try {
                this.fN = Bitmap.createBitmap(this.getWidth(), this.getHeight(), Bitmap$Config.RGB_565);
                this.aro = new Canvas(this.fN);
                if (this.fN != null) {
                    final int scrollX = this.getScrollX();
                    final int scrollY = this.getScrollY();
                    this.aro.save();
                    this.aro.translate((float)(-scrollX), (float)(-scrollY));
                    super.onDraw(this.aro);
                    this.aro.restore();
                    canvas.drawBitmap(this.fN, (float)scrollX, (float)scrollY, (Paint)null);
                }
            }
            catch (OutOfMemoryError outOfMemoryError) {
                this.fN = null;
                this.aro = null;
                this.arp = false;
                continue;
            }
            break;
        }
    }
    
    protected void onScrollChanged(final int n, final int n2, final int n3, final int n4) {
        super.onScrollChanged(n, n2, n3, n4);
        final Iterator<aN> iterator = this.aru.iterator();
        while (iterator.hasNext()) {
            iterator.next().bP(n2);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0: {
                this.arv = true;
                break;
            }
            case 5: {
                E.c(ConversationWebView.mW, "WebView disabling intercepts: POINTER_DOWN", new Object[0]);
                this.requestDisallowInterceptTouchEvent(true);
                break;
            }
            case 1:
            case 3: {
                this.arv = false;
                this.arw = false;
                break;
            }
        }
        if (!this.arw) {
            final boolean onTouchEvent = super.onTouchEvent(motionEvent);
            final boolean b = false;
            if (!onTouchEvent) {
                return b;
            }
        }
        return true;
    }
    
    public final void qW() {
        if (this.arp) {
            this.postDelayed(this.arr, (long)this.arn);
        }
    }
    
    public final boolean qX() {
        return this.arv;
    }
    
    public final int qY() {
        return this.ars;
    }
    
    public final float qZ() {
        if (this.getSettings().getLoadWithOverviewMode()) {
            return this.getWidth() / this.ars;
        }
        return this.art;
    }
}
