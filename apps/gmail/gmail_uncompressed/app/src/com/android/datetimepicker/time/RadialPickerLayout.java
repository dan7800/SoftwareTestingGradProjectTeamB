package com.android.datetimepicker.time;

import android.widget.*;
import android.content.*;
import com.android.datetimepicker.*;
import android.text.format.*;
import android.util.*;
import android.view.accessibility.*;
import android.view.*;
import android.os.*;
import android.annotation.*;

public class RadialPickerLayout extends FrameLayout implements View$OnTouchListener
{
    private a Ih;
    private int KA;
    private float KB;
    private float KC;
    private AccessibilityManager KD;
    private boolean Kb;
    private final int Kg;
    private int Kh;
    private e Ki;
    private boolean Kj;
    private int Kk;
    private int Kl;
    private boolean Km;
    private int Kn;
    private b Ko;
    private com.android.datetimepicker.time.a Kp;
    private g Kq;
    private g Kr;
    private f Ks;
    private f Kt;
    private View Ku;
    private int[] Kv;
    private boolean Kw;
    private int Kx;
    private boolean Ky;
    private boolean Kz;
    private final int hC;
    private Handler mHandler;
    
    public RadialPickerLayout(final Context context, final AttributeSet set) {
        super(context, set);
        this.Kx = -1;
        this.mHandler = new Handler();
        this.setOnTouchListener((View$OnTouchListener)this);
        this.Kg = ViewConfiguration.get(context).getScaledTouchSlop();
        this.hC = ViewConfiguration.getTapTimeout();
        this.Ky = false;
        this.addView((View)(this.Ko = new b(context)));
        this.addView((View)(this.Kp = new com.android.datetimepicker.time.a(context)));
        this.addView((View)(this.Kq = new g(context)));
        this.addView((View)(this.Kr = new g(context)));
        this.addView((View)(this.Ks = new f(context)));
        this.addView((View)(this.Kt = new f(context)));
        this.gy();
        this.Kh = -1;
        this.Kw = true;
        (this.Ku = new View(context)).setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        this.Ku.setBackgroundColor(this.getResources().getColor(d.Hm));
        this.Ku.setVisibility(4);
        this.addView(this.Ku);
        this.KD = (AccessibilityManager)context.getSystemService("accessibility");
        this.Kj = false;
    }
    
    private void A(final int n, final int n2) {
        if (n == 0) {
            this.Kk = n2;
        }
        else {
            if (n == 1) {
                this.Kl = n2;
                return;
            }
            if (n == 2) {
                if (n2 == 0) {
                    this.Kk %= 12;
                    return;
                }
                if (n2 == 1) {
                    this.Kk = 12 + this.Kk % 12;
                }
            }
        }
    }
    
    private static int B(final int n, final int n2) {
        int n3 = 30 * (n / 30);
        final int n4 = n3 + 30;
        if (n2 != 1) {
            if (n2 == -1) {
                if (n == n3) {
                    n3 -= 30;
                }
            }
            else if (n - n3 >= n4 - n) {
                return n4;
            }
            return n3;
        }
        return n4;
    }
    
    private int a(final float n, final float n2, final boolean b, final Boolean[] array) {
        final int gz = this.gz();
        if (gz == 0) {
            return this.Ks.a(n, n2, b, array);
        }
        if (gz == 1) {
            return this.Kt.a(n, n2, b, array);
        }
        return -1;
    }
    
    private int a(final int n, final boolean b, final boolean b2, final boolean b3) {
        int n2 = -1;
        if (n == n2) {
            return n2;
        }
        final int gz = this.gz();
        int n3;
        if (!b2 && gz == 1) {
            n3 = 1;
        }
        else {
            n3 = 0;
        }
        int b4;
        if (n3 != 0) {
            if (this.Kv != null) {
                n2 = this.Kv[n];
            }
            b4 = n2;
        }
        else {
            b4 = B(n, 0);
        }
        f f;
        int n4;
        if (gz == 0) {
            f = this.Ks;
            n4 = 30;
        }
        else {
            f = this.Kt;
            n4 = 6;
        }
        f.b(b4, b, b3);
        f.invalidate();
        while (true) {
            Label_0231: {
                int n5;
                if (gz == 0) {
                    if (this.Kb) {
                        if (b4 == 0 && b) {
                            n5 = 360;
                        }
                        else {
                            if (b4 != 360 || b) {
                                break Label_0231;
                            }
                            n5 = 0;
                        }
                    }
                    else {
                        if (b4 != 0) {
                            break Label_0231;
                        }
                        n5 = 360;
                    }
                }
                else {
                    if (b4 != 360 || gz != 1) {
                        break Label_0231;
                    }
                    n5 = 0;
                }
                final int n6 = n5 / n4;
                if (gz == 0 && this.Kb && !b && n5 != 0) {
                    return n6 + 12;
                }
                return n6;
            }
            int n5 = b4;
            continue;
        }
    }
    
    private int gx() {
        if (this.Kk < 12) {
            return 0;
        }
        if (this.Kk < 24) {
            return 1;
        }
        return -1;
    }
    
    private void gy() {
        this.Kv = new int[361];
        int i = 0;
        int n = 0;
        int n2 = 8;
        int n3 = 1;
        while (i < 361) {
            this.Kv[i] = n;
            if (n3 == n2) {
                final int n4 = n + 6;
                if (n4 == 360) {
                    n2 = 7;
                }
                else if (n4 % 30 == 0) {
                    n2 = 14;
                }
                else {
                    n2 = 4;
                }
                n = n4;
                n3 = 1;
            }
            else {
                ++n3;
            }
            ++i;
        }
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.getText().clear();
            final Time time = new Time();
            time.hour = this.Kk;
            time.minute = this.Kl;
            final long normalize = time.normalize(true);
            int n;
            if (this.Kb) {
                n = 129;
            }
            else {
                n = 1;
            }
            accessibilityEvent.getText().add(DateUtils.formatDateTime(this.getContext(), normalize, n));
            return true;
        }
        return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }
    
    public final int gz() {
        if (this.Kn != 0 && this.Kn != 1) {
            Log.e("RadialPickerLayout", "Current item showing was unfortunately set to " + this.Kn);
            return -1;
        }
        return this.Kn;
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }
    
    public void onMeasure(final int n, final int n2) {
        final int size = View$MeasureSpec.getSize(n);
        final int mode = View$MeasureSpec.getMode(n);
        final int size2 = View$MeasureSpec.getSize(n2);
        final int mode2 = View$MeasureSpec.getMode(n2);
        final int min = Math.min(size, size2);
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(min, mode), View$MeasureSpec.makeMeasureSpec(min, mode2));
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        int n = 1;
        final float x = motionEvent.getX();
        final float y = motionEvent.getY();
        final Boolean[] array = new Boolean[n];
        array[0] = false;
        switch (motionEvent.getAction()) {
            case 0: {
                if (!this.Kw) {
                    return n != 0;
                }
                this.KB = x;
                this.KC = y;
                this.Kh = -1;
                this.Ky = false;
                this.Kz = (n != 0);
                if (!this.Km) {
                    this.Kx = this.Kp.g(x, y);
                }
                else {
                    this.Kx = -1;
                }
                if (this.Kx == 0 || this.Kx == n) {
                    this.Ih.ge();
                    this.KA = -1;
                    this.mHandler.postDelayed((Runnable)new c(this), (long)this.hC);
                    return n != 0;
                }
                this.KA = this.a(x, y, this.KD.isTouchExplorationEnabled(), array);
                if (this.KA != -1) {
                    this.Ih.ge();
                    this.mHandler.postDelayed((Runnable)new com.android.datetimepicker.time.d(this, array), (long)this.hC);
                    return n != 0;
                }
                return n != 0;
            }
            case 2: {
                if (!this.Kw) {
                    Log.e("RadialPickerLayout", "Input was disabled, but received ACTION_MOVE.");
                    return n != 0;
                }
                final float abs = Math.abs(y - this.KC);
                final float abs2 = Math.abs(x - this.KB);
                if (!this.Ky && abs2 <= this.Kg && abs <= this.Kg) {
                    break;
                }
                if (this.Kx == 0 || this.Kx == n) {
                    this.mHandler.removeCallbacksAndMessages((Object)null);
                    if (this.Kp.g(x, y) != this.Kx) {
                        this.Kp.aM(-1);
                        this.Kp.invalidate();
                        this.Kx = -1;
                        break;
                    }
                    break;
                }
                else {
                    if (this.KA == -1) {
                        break;
                    }
                    this.Ky = (n != 0);
                    this.mHandler.removeCallbacksAndMessages((Object)null);
                    final int a = this.a(x, y, n != 0, array);
                    if (a == -1) {
                        return n != 0;
                    }
                    final int a2 = this.a(a, array[0], false, n != 0);
                    if (a2 != this.Kh) {
                        this.Ih.ge();
                        this.Kh = a2;
                        final e ki = this.Ki;
                        this.gz();
                        return n != 0;
                    }
                    return n != 0;
                }
                break;
            }
            case 1: {
                if (!this.Kw) {
                    Log.d("RadialPickerLayout", "Input was disabled, but received ACTION_UP.");
                    final e ki2 = this.Ki;
                    return n != 0;
                }
                this.mHandler.removeCallbacksAndMessages((Object)null);
                this.Kz = false;
                if (this.Kx == 0 || this.Kx == n) {
                    final int g = this.Kp.g(x, y);
                    this.Kp.aM(-1);
                    this.Kp.invalidate();
                    if (g == this.Kx) {
                        this.Kp.aL(g);
                        if (this.gx() != g) {
                            final e ki3 = this.Ki;
                            final int kx = this.Kx;
                            this.A(2, g);
                        }
                    }
                    this.Kx = -1;
                    break;
                }
                if (this.KA != -1) {
                    final int a3 = this.a(x, y, this.Ky, array);
                    if (a3 != -1) {
                        int a4 = this.a(a3, array[0], !this.Ky && n, false);
                        if (this.gz() == 0 && !this.Kb) {
                            final int gx = this.gx();
                            if (gx == 0 && a4 == 12) {
                                a4 = 0;
                            }
                            else if (gx == n && a4 != 12) {
                                a4 += 12;
                            }
                        }
                        this.A(this.gz(), a4);
                        final e ki4 = this.Ki;
                        this.gz();
                    }
                }
                this.Ky = false;
                return n != 0;
            }
        }
        n = 0;
        return n != 0;
    }
    
    @SuppressLint({ "NewApi" })
    public boolean performAccessibilityAction(final int n, final Bundle bundle) {
        int n2 = -1;
        if (super.performAccessibilityAction(n, bundle)) {
            return true;
        }
        int n3;
        if (n == 4096) {
            n3 = 1;
        }
        else if (n == 8192) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        if (n3 != 0) {
            final int gz = this.gz();
            if (gz == 0) {
                n2 = this.Kk;
            }
            else if (gz == 1) {
                n2 = this.Kl;
            }
            final int gz2 = this.gz();
            int n4;
            int n5;
            if (gz2 == 0) {
                n4 = n2 % 12;
                n5 = 30;
            }
            else if (gz2 == 1) {
                n4 = n2;
                n5 = 6;
            }
            else {
                n4 = n2;
                n5 = 0;
            }
            final int n6 = B(n4 * n5, n3) / n5;
            int n7;
            int n8;
            if (gz2 == 0) {
                if (this.Kb) {
                    n7 = 23;
                    n8 = 0;
                }
                else {
                    n8 = 1;
                    n7 = 12;
                }
            }
            else {
                n7 = 55;
                n8 = 0;
            }
            if (n6 <= n7) {
                if (n6 < n8) {
                    n8 = n7;
                }
                else {
                    n8 = n6;
                }
            }
            if (gz2 == 0) {
                this.A(0, n8);
                this.Ks.b(30 * (n8 % 12), this.Kb && n8 <= 12 && n8 != 0, false);
                this.Ks.invalidate();
            }
            else if (gz2 == 1) {
                this.A(1, n8);
                this.Kt.b(n8 * 6, false, false);
                this.Kt.invalidate();
            }
            final e ki = this.Ki;
            return true;
        }
        return false;
    }
}
