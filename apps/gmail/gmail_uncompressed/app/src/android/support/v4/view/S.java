package android.support.v4.view;

import android.os.*;
import android.view.*;
import android.content.*;

final class s implements r
{
    private static final int hB;
    private static final int hC;
    private static final int hD;
    private int hA;
    private final GestureDetector$OnGestureListener hE;
    private GestureDetector$OnDoubleTapListener hF;
    private boolean hG;
    private boolean hH;
    private boolean hI;
    private boolean hJ;
    private boolean hK;
    private MotionEvent hL;
    private MotionEvent hM;
    private boolean hN;
    private float hO;
    private float hP;
    private float hQ;
    private float hR;
    private boolean hS;
    private VelocityTracker hT;
    private int hx;
    private int hy;
    private int hz;
    private final Handler mHandler;
    
    static {
        hB = ViewConfiguration.getLongPressTimeout();
        hC = ViewConfiguration.getTapTimeout();
        hD = ViewConfiguration.getDoubleTapTimeout();
    }
    
    public s(final Context context, final GestureDetector$OnGestureListener he, final Handler handler) {
        this.mHandler = new t(this);
        this.hE = he;
        if (he instanceof GestureDetector$OnDoubleTapListener) {
            this.hF = (GestureDetector$OnDoubleTapListener)he;
        }
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        if (this.hE == null) {
            throw new IllegalArgumentException("OnGestureListener must not be null");
        }
        this.hS = true;
        final ViewConfiguration value = ViewConfiguration.get(context);
        final int scaledTouchSlop = value.getScaledTouchSlop();
        final int scaledDoubleTapSlop = value.getScaledDoubleTapSlop();
        this.hz = value.getScaledMinimumFlingVelocity();
        this.hA = value.getScaledMaximumFlingVelocity();
        this.hx = scaledTouchSlop * scaledTouchSlop;
        this.hy = scaledDoubleTapSlop * scaledDoubleTapSlop;
    }
    
    @Override
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        final int action = motionEvent.getAction();
        if (this.hT == null) {
            this.hT = VelocityTracker.obtain();
        }
        this.hT.addMovement(motionEvent);
        boolean b;
        if ((action & 0xFF) == 0x6) {
            b = true;
        }
        else {
            b = false;
        }
        int b2;
        if (b) {
            b2 = P.b(motionEvent);
        }
        else {
            b2 = -1;
        }
        final int c = P.c(motionEvent);
        int i = 0;
        float n = 0.0f;
        float n2 = 0.0f;
        while (i < c) {
            if (b2 != i) {
                n2 += P.c(motionEvent, i);
                n += P.d(motionEvent, i);
            }
            ++i;
        }
        int n3;
        if (b) {
            n3 = c - 1;
        }
        else {
            n3 = c;
        }
        final float n4 = n2 / n3;
        final float n5 = n / n3;
        switch (action & 0xFF) {
            case 5: {
                this.hO = n4;
                this.hQ = n4;
                this.hP = n5;
                this.hR = n5;
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
                this.mHandler.removeMessages(3);
                this.hN = false;
                this.hJ = false;
                this.hK = false;
                this.hH = false;
                if (this.hI) {
                    return this.hI = false;
                }
                break;
            }
            case 6: {
                this.hO = n4;
                this.hQ = n4;
                this.hP = n5;
                this.hR = n5;
                this.hT.computeCurrentVelocity(1000, (float)this.hA);
                final int b3 = P.b(motionEvent);
                final int b4 = P.b(motionEvent, b3);
                final float a = Z.a(this.hT, b4);
                final float b5 = Z.b(this.hT, b4);
                for (int j = 0; j < c; ++j) {
                    if (j != b3) {
                        final int b6 = P.b(motionEvent, j);
                        if (a * Z.a(this.hT, b6) + b5 * Z.b(this.hT, b6) < 0.0f) {
                            this.hT.clear();
                            return false;
                        }
                    }
                }
                break;
            }
            case 0: {
            Label_0601:
                while (true) {
                    if (this.hF != null) {
                        final boolean hasMessages = this.mHandler.hasMessages(3);
                        if (hasMessages) {
                            this.mHandler.removeMessages(3);
                        }
                        Label_0754: {
                            if (this.hL != null && this.hM != null && hasMessages) {
                                final MotionEvent hl = this.hL;
                                final MotionEvent hm = this.hM;
                                while (true) {
                                    Label_0748: {
                                        if (!this.hK || motionEvent.getEventTime() - hm.getEventTime() > s.hD) {
                                            break Label_0748;
                                        }
                                        final int n6 = (int)hl.getX() - (int)motionEvent.getX();
                                        final int n7 = (int)hl.getY() - (int)motionEvent.getY();
                                        if (n6 * n6 + n7 * n7 >= this.hy) {
                                            break Label_0748;
                                        }
                                        final int n8 = 1;
                                        if (n8 != 0) {
                                            this.hN = true;
                                            final boolean b7 = false | this.hF.onDoubleTap(this.hL) | this.hF.onDoubleTapEvent(motionEvent);
                                            break Label_0601;
                                        }
                                        break Label_0754;
                                    }
                                    final int n8 = 0;
                                    continue;
                                }
                            }
                        }
                        this.mHandler.sendEmptyMessageDelayed(3, (long)s.hD);
                    }
                    Label_0767: {
                        break Label_0767;
                        this.hO = n4;
                        this.hQ = n4;
                        this.hP = n5;
                        this.hR = n5;
                        if (this.hL != null) {
                            this.hL.recycle();
                        }
                        this.hL = MotionEvent.obtain(motionEvent);
                        this.hJ = true;
                        this.hK = true;
                        this.hG = true;
                        this.hI = false;
                        this.hH = false;
                        if (this.hS) {
                            this.mHandler.removeMessages(2);
                            this.mHandler.sendEmptyMessageAtTime(2, this.hL.getDownTime() + s.hC + s.hB);
                        }
                        this.mHandler.sendEmptyMessageAtTime(1, this.hL.getDownTime() + s.hC);
                        final boolean b7;
                        return b7 | this.hE.onDown(motionEvent);
                    }
                    final boolean b7 = false;
                    continue Label_0601;
                }
            }
            case 2: {
                if (this.hI) {
                    break;
                }
                final float n9 = this.hO - n4;
                final float n10 = this.hP - n5;
                if (this.hN) {
                    return false | this.hF.onDoubleTapEvent(motionEvent);
                }
                if (this.hJ) {
                    final int n11 = (int)(n4 - this.hQ);
                    final int n12 = (int)(n5 - this.hR);
                    final int n13 = n11 * n11 + n12 * n12;
                    boolean onScroll;
                    if (n13 > this.hx) {
                        onScroll = this.hE.onScroll(this.hL, motionEvent, n9, n10);
                        this.hO = n4;
                        this.hP = n5;
                        this.hJ = false;
                        this.mHandler.removeMessages(3);
                        this.mHandler.removeMessages(1);
                        this.mHandler.removeMessages(2);
                    }
                    else {
                        onScroll = false;
                    }
                    if (n13 > this.hx) {
                        this.hK = false;
                    }
                    return onScroll;
                }
                if (Math.abs(n9) >= 1.0f || Math.abs(n10) >= 1.0f) {
                    final boolean onScroll2 = this.hE.onScroll(this.hL, motionEvent, n9, n10);
                    this.hO = n4;
                    this.hP = n5;
                    return onScroll2;
                }
                break;
            }
            case 1: {
                this.hG = false;
                final MotionEvent obtain = MotionEvent.obtain(motionEvent);
                boolean onSingleTapUp;
                if (this.hN) {
                    onSingleTapUp = (false | this.hF.onDoubleTapEvent(motionEvent));
                }
                else if (this.hI) {
                    this.mHandler.removeMessages(3);
                    this.hI = false;
                    onSingleTapUp = false;
                }
                else if (this.hJ) {
                    onSingleTapUp = this.hE.onSingleTapUp(motionEvent);
                    if (this.hH && this.hF != null) {
                        this.hF.onSingleTapConfirmed(motionEvent);
                    }
                }
                else {
                    final VelocityTracker ht = this.hT;
                    final int b8 = P.b(motionEvent, 0);
                    ht.computeCurrentVelocity(1000, (float)this.hA);
                    final float b9 = Z.b(ht, b8);
                    final float a2 = Z.a(ht, b8);
                    onSingleTapUp = ((Math.abs(b9) > this.hz || Math.abs(a2) > this.hz) && this.hE.onFling(this.hL, motionEvent, a2, b9));
                }
                if (this.hM != null) {
                    this.hM.recycle();
                }
                this.hM = obtain;
                if (this.hT != null) {
                    this.hT.recycle();
                    this.hT = null;
                }
                this.hN = false;
                this.hH = false;
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
                return onSingleTapUp;
            }
            case 3: {
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
                this.mHandler.removeMessages(3);
                this.hT.recycle();
                this.hT = null;
                this.hN = false;
                this.hG = false;
                this.hJ = false;
                this.hK = false;
                this.hH = false;
                if (this.hI) {
                    return this.hI = false;
                }
                break;
            }
        }
        return false;
    }
}
