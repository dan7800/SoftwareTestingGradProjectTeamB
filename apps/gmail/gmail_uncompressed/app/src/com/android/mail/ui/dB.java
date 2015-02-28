package com.android.mail.ui;

import android.view.animation.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;
import com.android.mail.utils.*;
import android.animation.*;

public final class db
{
    private static DecelerateInterpolator aNd;
    private static int aNe;
    private static int aNf;
    private static int aNg;
    private static int aNh;
    private static int aNi;
    private static float aNj;
    public static float aNk;
    public static float aNl;
    private boolean aKB;
    private float aNm;
    private final dg aNn;
    private final int aNo;
    private float aNp;
    private dh aNq;
    private View aNr;
    private boolean aNs;
    private float aNt;
    private float aNu;
    private float aNv;
    private LeaveBehindItem aNw;
    private final VelocityTracker hT;
    
    static {
        db.aNd = new DecelerateInterpolator(1.0f);
        db.aNe = -1;
        db.aNk = 0.0f;
        db.aNl = 0.4f;
    }
    
    public db(final Context context, final dg aNn, final float aNt, final float aNm) {
        this.aNn = aNn;
        this.aNo = 0;
        this.hT = VelocityTracker.obtain();
        this.aNt = aNt;
        this.aNm = aNm;
        if (db.aNe == -1) {
            final Resources resources = context.getResources();
            db.aNe = resources.getInteger(2131427346);
            db.aNf = resources.getInteger(2131427347);
            db.aNg = resources.getInteger(2131427348);
            db.aNh = resources.getInteger(2131427349);
            db.aNi = resources.getInteger(2131427350);
            db.aNj = resources.getDimension(2131492972);
        }
    }
    
    private static void a(View view, final RectF rectF) {
        while (view.getParent() != null && view.getParent() instanceof View) {
            final View view2 = (View)view.getParent();
            view2.getMatrix().mapRect(rectF);
            view2.invalidate((int)Math.floor(rectF.left), (int)Math.floor(rectF.top), (int)Math.ceil(rectF.right), (int)Math.ceil(rectF.bottom));
            view = view2;
        }
    }
    
    private float aB(final View view) {
        if (this.aNo == 0) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }
    
    private float aC(final View view) {
        float n = 1.0f;
        final float ab = this.aB(view);
        final float n2 = 0.7f * ab;
        final float translationX = view.getTranslationX();
        if (translationX >= ab * db.aNk) {
            n -= (translationX - ab * db.aNk) / n2;
        }
        else if (translationX < ab * (n - db.aNk)) {
            n += (translationX + ab * db.aNk) / n2;
        }
        return Math.max(0.5f, n);
    }
    
    public static void aD(final View view) {
        a(view, new RectF((float)view.getLeft(), (float)view.getTop(), (float)view.getRight(), (float)view.getBottom()));
    }
    
    private ObjectAnimator l(final View view, final float n) {
        String s;
        if (this.aNo == 0) {
            s = "translationX";
        }
        else {
            s = "translationY";
        }
        return ObjectAnimator.ofFloat((Object)view, s, new float[] { n });
    }
    
    public final void A(final float aNt) {
        this.aNt = aNt;
    }
    
    public final void B(final float aNm) {
        this.aNm = aNm;
    }
    
    public final boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0: {
                this.aNu = motionEvent.getY();
                this.aKB = false;
                final View k = this.aNn.k(motionEvent);
                if (k instanceof dh) {
                    this.aNq = (dh)k;
                }
                this.hT.clear();
                if (this.aNq != null) {
                    this.aNr = this.aNq.pK().getView();
                    this.aNs = this.aNn.a(this.aNq);
                    this.hT.addMovement(motionEvent);
                    this.aNp = motionEvent.getX();
                    this.aNv = motionEvent.getY();
                }
                this.aNn.xt();
                break;
            }
            case 2: {
                if (this.aNq != null) {
                    if (this.aNu >= 0.0f && !this.aKB) {
                        final float y = motionEvent.getY();
                        final float x = motionEvent.getX();
                        final float abs = Math.abs(y - this.aNv);
                        final float abs2 = Math.abs(x - this.aNp);
                        if (abs > this.aNq.pL() && abs > abs2 * 1.2f) {
                            this.aNu = motionEvent.getY();
                            this.aNn.Ad();
                            return false;
                        }
                    }
                    this.hT.addMovement(motionEvent);
                    if (Math.abs(motionEvent.getX() - this.aNp) > this.aNm) {
                        final dg aNn = this.aNn;
                        this.aNq.pK().getView();
                        aNn.Ae();
                        this.aNw = this.aNn.Ag();
                        this.aKB = true;
                        this.aNp = motionEvent.getX() - this.aNr.getTranslationX();
                        this.aNv = motionEvent.getY();
                    }
                }
                this.aNu = motionEvent.getY();
                break;
            }
            case 1:
            case 3: {
                this.aKB = false;
                this.aNq = null;
                this.aNr = null;
                this.aNu = -1.0f;
                break;
            }
        }
        return this.aKB;
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        if (!this.aKB) {
            return false;
        }
        this.hT.addMovement(motionEvent);
        switch (motionEvent.getAction()) {
            case 2:
            case 4: {
                if (this.aNq == null) {
                    break;
                }
                final float n = motionEvent.getX() - this.aNp;
                if (this.aNp <= 56.0f * this.aNt) {
                    return true;
                }
                if (Math.abs(n) < db.aNj) {
                    return true;
                }
                float n2;
                if (!this.aNn.a(this.aNq)) {
                    final float ab = this.aB(this.aNr);
                    n2 = 0.15f * ab;
                    if (Math.abs(n) >= ab) {
                        if (n <= 0.0f) {
                            n2 = -n2;
                        }
                    }
                    else {
                        n2 *= (float)Math.sin(1.5707963267948966 * (n / ab));
                    }
                }
                else {
                    n2 = n;
                }
                final View aNr = this.aNr;
                if (this.aNo == 0) {
                    aNr.setTranslationX(n2);
                }
                else {
                    aNr.setTranslationY(n2);
                }
                if (this.aNs) {
                    this.aNr.setAlpha(this.aC(this.aNr));
                    if (this.aNw != null) {
                        final LeaveBehindItem aNw = this.aNw;
                        final View aNr2 = this.aNr;
                        final float n3 = this.aB(aNr2) * db.aNl;
                        float n4 = 1.0f;
                        final float translationX = aNr2.getTranslationX();
                        if (translationX >= 0.0f) {
                            n4 = 1.0f - translationX / n3;
                        }
                        else if (translationX < 0.0f) {
                            n4 = 1.0f + translationX / n3;
                        }
                        aNw.z(Math.max(0.0f, n4));
                    }
                }
                aD(this.aNq.pK().getView());
                break;
            }
            case 1:
            case 3: {
                if (this.aNq != null) {
                    this.hT.computeCurrentVelocity(1000, db.aNh * this.aNt);
                    final float n5 = db.aNe * this.aNt;
                    final VelocityTracker ht = this.hT;
                    float n6;
                    if (this.aNo == 0) {
                        n6 = ht.getXVelocity();
                    }
                    else {
                        n6 = ht.getYVelocity();
                    }
                    final VelocityTracker ht2 = this.hT;
                    float n7;
                    if (this.aNo == 0) {
                        n7 = ht2.getYVelocity();
                    }
                    else {
                        n7 = ht2.getXVelocity();
                    }
                    final float abs = Math.abs(this.aNr.getTranslationX());
                    final float ab2 = this.aB(this.aNr);
                    boolean b;
                    if (abs > 0.4 * ab2) {
                        b = true;
                    }
                    else {
                        b = false;
                    }
                    while (true) {
                        Label_0818: {
                            if (Math.abs(n6) <= n5 || Math.abs(n6) <= Math.abs(n7)) {
                                break Label_0818;
                            }
                            boolean b2;
                            if (n6 > 0.0f) {
                                b2 = true;
                            }
                            else {
                                b2 = false;
                            }
                            boolean b3;
                            if (this.aNr.getTranslationX() > 0.0f) {
                                b3 = true;
                            }
                            else {
                                b3 = false;
                            }
                            if (b2 != b3 || abs <= 0.05 * ab2) {
                                break Label_0818;
                            }
                            final int n8 = 1;
                            int n9;
                            if (this.aNn.a(this.aNq) && (n8 != 0 || b)) {
                                n9 = 1;
                            }
                            else {
                                n9 = 0;
                            }
                            if (n9 != 0) {
                                final dh aNq = this.aNq;
                                if (n8 == 0) {
                                    n6 = 0.0f;
                                }
                                final View view = aNq.pK().getView();
                                final boolean a = this.aNn.a(aNq);
                                float ab3;
                                if (n6 < 0.0f || (n6 == 0.0f && view.getTranslationX() < 0.0f) || (n6 == 0.0f && view.getTranslationX() == 0.0f && this.aNo == 1)) {
                                    ab3 = -this.aB(view);
                                }
                                else {
                                    ab3 = this.aB(view);
                                }
                                final int aNg = db.aNg;
                                int n10;
                                if (n6 != 0.0f) {
                                    n10 = Math.min(aNg, (int)(1000.0f * Math.abs(ab3 - view.getTranslationX()) / Math.abs(n6)));
                                }
                                else {
                                    n10 = db.aNf;
                                }
                                ag.aG(view);
                                final ObjectAnimator l = this.l(view, ab3);
                                l.setInterpolator((TimeInterpolator)db.aNd);
                                l.setDuration((long)n10);
                                l.addListener((Animator$AnimatorListener)new dc(this, aNq, view));
                                l.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new dd(this, a, view));
                                l.start();
                                break;
                            }
                            final dh aNq2 = this.aNq;
                            final View view2 = aNq2.pK().getView();
                            final boolean a2 = this.aNn.a(aNq2);
                            final ObjectAnimator i = this.l(view2, 0.0f);
                            i.setDuration((long)db.aNi);
                            i.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new de(this, a2, view2));
                            i.addListener((Animator$AnimatorListener)new df(this, view2));
                            i.start();
                            break;
                        }
                        final int n8 = 0;
                        continue;
                    }
                }
                break;
            }
        }
        return true;
    }
}
