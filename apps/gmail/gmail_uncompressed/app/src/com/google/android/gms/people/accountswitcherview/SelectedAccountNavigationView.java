package com.google.android.gms.people.accountswitcherview;

import com.google.android.gms.common.api.*;
import com.google.android.gms.people.model.*;
import android.content.*;
import android.os.*;
import android.view.animation.*;
import android.content.res.*;
import android.text.*;
import java.util.*;
import android.widget.*;
import android.animation.*;
import android.util.*;
import android.view.*;

public class SelectedAccountNavigationView extends FrameLayout
{
    private boolean Av;
    private int Bw;
    private n bbm;
    private d bqi;
    private i chJ;
    private Q ciG;
    private T ciH;
    private l ciI;
    private ArrayList<d> ciJ;
    private N ciK;
    private P ciL;
    private S ciM;
    private int ciN;
    private R ciO;
    private float ciP;
    private float ciQ;
    private int ciR;
    private boolean ciS;
    private float ciT;
    private float ciU;
    private boolean ciV;
    private float ciW;
    private int ciX;
    private int ciY;
    private int ciZ;
    private int cja;
    private int cjb;
    private boolean cjc;
    private int cjd;
    private d cje;
    private float cjf;
    private Interpolator cjg;
    private int cjh;
    private int cji;
    private AnimatorSet cjj;
    private d cjk;
    private d cjl;
    private d cjm;
    private VelocityTracker hT;
    private int iP;
    private int iU;
    
    public SelectedAccountNavigationView(final Context context, final AttributeSet set) {
        boolean av = true;
        super(context, set);
        this.Bw = 0;
        this.ciV = b.cY();
        this.ciJ = new ArrayList<d>(2);
        this.ciN = -1;
        this.iP = ViewConfiguration.get(context).getScaledTouchSlop();
        this.hT = VelocityTracker.obtain();
        this.ciR = ViewConfiguration.getMinimumFlingVelocity();
        final Resources resources = context.getResources();
        this.ciT = resources.getDimensionPixelSize(z.cib);
        this.ciU = resources.getDimensionPixelSize(z.cia);
        if (Build$VERSION.SDK_INT >= 17) {
            if (this.getResources().getConfiguration().getLayoutDirection() != (av ? 1 : 0)) {
                av = false;
            }
            this.Av = av;
        }
        this.cjf = resources.getInteger(C.ciw) / resources.getInteger(C.cix);
        int n;
        if (b.cY()) {
            n = 17563661;
        }
        else {
            n = 17563649;
        }
        this.cjg = AnimationUtils.loadInterpolator(context, n);
        this.cji = resources.getDimensionPixelSize(z.cic);
        this.cjh = resources.getDimensionPixelSize(z.chZ);
    }
    
    private void Va() {
        final Context context = this.getContext();
        if (this.ciN == -1) {
            int ciN;
            if (this.cjc) {
                ciN = D.ciB;
            }
            else if (b.cY()) {
                ciN = D.ciB;
            }
            else {
                ciN = D.ciC;
            }
            this.ciN = ciN;
        }
        if (this.ciH == null) {
            this.ciH = new O(this, (byte)0);
        }
        LayoutInflater.from(context).inflate(this.ciN, (ViewGroup)this);
        this.ciM = this.ciH.aL((View)this);
        if (this.ciV) {
            this.ciM.cjv.setOnClickListener((View$OnClickListener)new K(this));
            this.ciM.cjw.setOnClickListener((View$OnClickListener)new L(this));
        }
        if (this.ciM.cjr != null) {
            this.ciM.cjr.setOnClickListener((View$OnClickListener)new M(this));
        }
    }
    
    private void Vb() {
        if (this.ciM == null) {
            this.Va();
        }
        if (this.ciV) {
            aM(this.ciM.cjs);
            aM(this.ciM.cjv);
            aM(this.ciM.cjw);
            aM(this.ciM.cjq);
            aM((View)this.ciM.cjx);
            aM((View)this.ciM.cjF);
            aM(this.ciM.cjE);
        }
        final S ciM = this.ciM;
        final d bqi = this.bqi;
        if (ciM.cjp != null) {
            ciM.cjp.setContentDescription((CharSequence)this.getContext().getResources().getString(E.ciB, new Object[] { this.bqi.FP() }));
        }
        if (ciM.cjy != null) {
            ciM.cjy.setImageBitmap(this.chJ.b(this.getContext(), bqi.FP(), bqi.Iu(), 2));
            if (!TextUtils.isEmpty((CharSequence)bqi.Iw())) {
                this.chJ.a(ciM.cjy);
                this.chJ.a(ciM.cjy, bqi.FP(), bqi.Iu(), 2);
            }
            else {
                this.chJ.a(ciM.cjy);
            }
        }
        a(ciM.cjt, ciM.cju, bqi);
        this.a(ciM, ciM.cjx, bqi);
        this.Vc();
        if (this.ciO != null) {
            final R ciO = this.ciO;
            final S ciM2 = this.ciM;
            final d bqi2 = this.bqi;
            ciO.a(ciM2, this.ciJ);
        }
        if (this.ciV) {
            if (this.ciM.cjE != null) {
                this.ciM.cjE.setVisibility(8);
            }
            if (this.ciM.cjF != null) {
                this.ciM.cjF.setVisibility(8);
            }
            if (this.ciM.cjB != null) {
                this.ciM.cjB.setVisibility(8);
            }
            if (this.ciM.cjG != null) {
                this.ciM.cjG.setAlpha(0.0f);
                this.ciM.cjG.setScaleX(0.8f);
                this.ciM.cjG.setScaleY(0.8f);
                this.ciM.cjG.setVisibility(8);
            }
            if (this.ciM.cjH != null) {
                this.ciM.cjH.setAlpha(0.0f);
                this.ciM.cjH.setScaleX(0.8f);
                this.ciM.cjH.setScaleY(0.8f);
                this.ciM.cjH.setVisibility(8);
            }
        }
    }
    
    private void Vc() {
        if (!this.ciV) {
            return;
        }
        if (this.ciM == null) {
            this.Va();
        }
        if (this.ciM.cjx != null && this.ciM.cjx.getMeasuredWidth() == 0) {
            this.forceLayout();
            return;
        }
        if (this.ciJ.size() > 0) {
            final d d = this.ciJ.get(0);
            final S ciM = this.ciM;
            this.ciM.cjv.setVisibility(0);
            this.a(this.ciM.cjz, d);
            this.a(ciM, ciM.cjF, d);
        }
        else {
            this.ciM.cjv.setVisibility(8);
        }
        if (this.ciJ.size() > 1) {
            this.ciM.cjw.setVisibility(0);
            this.a(this.ciM.cjA, this.ciJ.get(1));
        }
        else {
            this.ciM.cjw.setVisibility(8);
        }
        this.ciW = -1.0f;
    }
    
    private void Vd() {
        int n = 1;
        int navigationMode;
        if (this.Bw == n) {
            navigationMode = 0;
        }
        else {
            navigationMode = n;
        }
        this.setNavigationMode(navigationMode);
        if (this.ciG != null) {
            this.ciG.a(this);
        }
        final ExpanderView cjr = this.ciM.cjr;
        if (this.Bw != n) {
            n = 0;
        }
        cjr.aC(n != 0);
    }
    
    private void a(final ImageView imageView, final d d) {
        if (imageView != null && this.chJ != null) {
            imageView.setImageBitmap(this.chJ.b(imageView.getContext(), d.FP(), d.Iu(), 1));
            if (!TextUtils.isEmpty((CharSequence)d.Iw())) {
                this.chJ.a(imageView);
                this.chJ.a(imageView, d.FP(), d.Iu(), 2);
            }
            else {
                this.chJ.a(imageView);
            }
            imageView.setContentDescription((CharSequence)this.getContext().getString(E.ciD, new Object[] { d.FP() }));
        }
    }
    
    private static void a(final TextView textView, final TextView textView2, final d d) {
        int n;
        if (textView != null) {
            if (TextUtils.isEmpty((CharSequence)d.getDisplayName())) {
                textView.setText((CharSequence)d.FP());
                n = 0;
            }
            else {
                n = 1;
                textView.setText((CharSequence)d.getDisplayName());
            }
        }
        else {
            n = 0;
        }
        if (textView2 != null) {
            if (n == 0) {
                textView2.setVisibility(8);
                return;
            }
            textView2.setVisibility(0);
            textView2.setText((CharSequence)d.FP());
        }
    }
    
    private void a(final S s, final ImageView imageView, final d d) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty((CharSequence)d.Iy())) {
            this.ciI.a(imageView);
            this.ciI.b(imageView, d.FP(), d.Iu(), s.cjx.getMeasuredWidth());
            return;
        }
        this.ciI.a(imageView);
        imageView.setImageBitmap(l.cl(this.getContext()));
    }
    
    private void a(final d d, final AnimatorSet$Builder animatorSet$Builder, final int n) {
        a(this.ciM.cjC, this.ciM.cjD, d);
        this.ciM.cjB.setVisibility(0);
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this.ciM.cjB, "alpha", new float[] { 1.0f });
        ofFloat.setStartDelay((long)n);
        ofFloat.setDuration(150L);
        final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)this.ciM.cjq, "alpha", new float[] { 0.0f });
        ofFloat2.setStartDelay(0L);
        ofFloat2.setDuration(150L);
        animatorSet$Builder.with((Animator)ofFloat).with((Animator)ofFloat2);
    }
    
    private static void aM(final View view) {
        if (view != null) {
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setAlpha(1.0f);
        }
    }
    
    private void d(final MotionEvent motionEvent) {
        final int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.iU) {
            int n;
            if (actionIndex == 0) {
                n = 1;
            }
            else {
                n = 0;
            }
            this.iU = motionEvent.getPointerId(n);
        }
    }
    
    private void eT(final int n) {
        if (this.ciL != null) {
            this.getHandler().postDelayed((Runnable)new I(this), (long)n);
        }
    }
    
    private void u(final View view, final int n) {
        if (view != null) {
            final ViewGroup$MarginLayoutParams layoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
            layoutParams.topMargin = n + this.cjh;
            view.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        }
    }
    
    public final ArrayList<d> UY() {
        return this.ciJ;
    }
    
    public final void UZ() {
        this.cjc = true;
        this.ciV = this.cjc;
    }
    
    public final void a(final N ciK) {
        this.ciK = ciK;
    }
    
    public final void a(final Q ciG) {
        this.ciG = ciG;
    }
    
    public final void a(final T ciH, final R ciO) {
        this.ciN = 2130968750;
        this.ciH = ciH;
        this.ciO = ciO;
    }
    
    public final void a(final i chJ) {
        this.chJ = chJ;
    }
    
    public final void a(final d cjl, final d cjm) {
        if (this.cjj != null && this.cjj.isRunning()) {
            this.cjl = cjl;
            this.cjm = cjm;
            return;
        }
        if (this.ciJ == null) {
            this.ciJ = new ArrayList<d>();
        }
        else {
            this.ciJ.clear();
        }
        if (cjl != null) {
            this.ciJ.add(cjl);
        }
        if (cjm != null) {
            this.ciJ.add(cjm);
        }
        this.Vc();
    }
    
    public final void d(final n bbm) {
        this.bbm = bbm;
        if (this.bbm != null) {
            this.ciI = new l(this.getContext(), this.bbm);
        }
    }
    
    public final void d(final d d) {
        if (this.ciM == null) {
            this.Va();
        }
        if (d == null) {
            this.bqi = null;
            return;
        }
        if (this.cjj != null && this.cjj.isRunning()) {
            this.cjk = d;
            return;
        }
        if (this.ciM.cjx != null && this.ciM.cjx.getMeasuredWidth() == 0) {
            this.cje = d;
            this.forceLayout();
            return;
        }
        if (this.bqi == null || !this.bqi.FP().equals(d.FP())) {
            final d bqi = this.bqi;
            this.bqi = d;
            final String fp = this.bqi.FP();
            while (true) {
                for (int i = 0; i < this.ciJ.size(); ++i) {
                    if (this.ciJ.get(i).FP().equals(fp)) {
                        if (i >= 0) {
                            this.ciJ.remove(i);
                        }
                        if (bqi != null) {
                            this.ciJ.add(0, bqi);
                            while (this.ciJ.size() > 2) {
                                this.ciJ.remove(-1 + this.ciJ.size());
                            }
                        }
                        this.Vb();
                        return;
                    }
                }
                int i = -1;
                continue;
            }
        }
        this.bqi = d;
        this.Vb();
    }
    
    public final void eS(final int n) {
        if (this.ciM == null) {
            this.Va();
        }
        final int n2 = n + this.cji;
        this.setMinimumHeight(n2);
        ViewGroup$LayoutParams layoutParams = this.ciM.cjL.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup$LayoutParams(-1, n2);
        }
        else {
            layoutParams.height = n2;
        }
        this.ciM.cjL.setLayoutParams(layoutParams);
        this.u(this.ciM.cjs, n);
        this.u(this.ciM.cjE, n);
        this.u(this.ciM.cjv, n);
        this.u(this.ciM.cjw, n);
        this.u(this.ciM.cjG, n);
        this.u(this.ciM.cjH, n);
    }
    
    public final int getNavigationMode() {
        return this.Bw;
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0: {
                this.ciS = false;
                this.iU = motionEvent.getPointerId(0);
                this.ciS = false;
                break;
            }
            case 6: {
                this.d(motionEvent);
                this.iU = -1;
                this.ciS = false;
                break;
            }
        }
        return this.ciS;
    }
    
    public void onMeasure(final int n, final int n2) {
        if (this.ciM == null) {
            this.Va();
        }
        if (this.ciM.cjx != null) {
            this.ciM.cjx.measure(n, n2);
        }
        if (this.ciM.cjo != null) {
            this.ciM.cjo.measure(n, n2);
        }
        if (this.cje != null) {
            this.d(this.cje);
            this.cje = null;
        }
        super.onMeasure(n, n2);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final int action = motionEvent.getAction();
        final ViewParent parent = this.getParent();
        switch (action) {
            case 0: {
                this.ciP = motionEvent.getX();
                this.ciQ = motionEvent.getY();
                break;
            }
            case 2: {
                final int pointerIndex = motionEvent.findPointerIndex(this.iU);
                if (pointerIndex < 0) {
                    Log.e("SelectedAccountNavigationView", "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                final float x = motionEvent.getX(pointerIndex);
                final float y = motionEvent.getY(pointerIndex);
                final float n = x - this.ciP;
                final float n2 = y - this.ciQ;
                final float n3 = n * n + n2 * n2;
                if (this.ciV && this.ciJ.size() > 0 && !this.ciS && n3 > this.iP * this.iP && Math.abs(n) > Math.abs(n2)) {
                    this.ciS = true;
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
                if (this.ciS) {
                    final float n4 = x - this.ciP;
                    if (this.ciW == -1.0f) {
                        this.ciW = this.ciM.cjv.getLeft();
                        this.ciX = this.ciM.cjw.getLeft();
                        this.cja = this.ciM.cjs.getLeft() + this.ciM.cjs.getPaddingLeft();
                        this.cjb = this.ciM.cjs.getWidth();
                        this.ciZ = this.ciM.cjq.getLeft() + this.ciM.cjs.getPaddingLeft();
                    }
                    float n5;
                    if (this.Av) {
                        n5 = Math.min(n4, 0.0f);
                    }
                    else {
                        n5 = Math.max(n4, 0.0f);
                    }
                    final float n6 = this.ciU / this.ciT;
                    final float n7 = 0.5f * (this.ciU - this.ciT);
                    float ciW;
                    if (this.ciJ.size() > 1) {
                        ciW = this.ciX;
                    }
                    else {
                        ciW = this.ciW;
                    }
                    final float n8 = ciW - this.cja + 0.5f * (this.ciU - this.ciT);
                    final float min = Math.min(1.0f, n5 / n8);
                    final float abs = Math.abs(n7);
                    final float max = Math.max(0.0f, 1.0f - min);
                    this.ciM.cjs.setTranslationX(n8 * min);
                    this.ciM.cjs.setTranslationY(-1.0f * Math.abs(abs * min));
                    final float min2 = Math.min(1.0f, Math.max(n6, 1.0f - min * n6));
                    this.ciM.cjs.setScaleX(min2);
                    this.ciM.cjs.setScaleY(min2);
                    if (this.ciM.cjE != null) {
                        if (this.ciM.cjE.getVisibility() != 0) {
                            int cjd;
                            if (this.Av) {
                                cjd = this.getWidth() - this.cja;
                            }
                            else {
                                cjd = -this.cjb - this.cja;
                            }
                            this.cjd = cjd;
                            this.ciM.cjE.setTranslationX((float)this.cjd);
                            this.ciM.cjI.setImageDrawable(this.ciM.cjz.getDrawable());
                            this.ciM.cjE.setVisibility(0);
                        }
                        else {
                            this.ciM.cjE.setTranslationX(this.cjd + -this.cjd * min);
                        }
                    }
                    if (this.ciJ.size() > 1) {
                        this.ciM.cjw.setTranslationX((this.ciW - this.ciX) * min);
                    }
                    if (this.ciJ.size() > 0) {
                        if (this.ciM.cjF != null) {
                            if (this.ciM.cjF.getVisibility() != 0) {
                                this.ciM.cjF.setAlpha(0.0f);
                                this.ciM.cjF.setVisibility(0);
                            }
                            else {
                                this.ciM.cjF.setAlpha(min);
                            }
                        }
                        if (this.ciM.cjx != null) {
                            this.ciM.cjx.setAlpha(1.0f - min);
                        }
                        float n9;
                        if (this.Av) {
                            n9 = this.getLeft() - (this.ciM.cjv.getWidth() + this.ciW);
                        }
                        else {
                            n9 = this.getWidth() - this.ciW;
                        }
                        this.ciM.cjv.setTranslationX(n9 * min);
                        this.ciM.cjv.setAlpha(max);
                        if (this.ciM.cjB != null) {
                            if (this.ciM.cjB.getVisibility() != 0) {
                                final d d = this.ciJ.get(0);
                                this.ciY = this.cjd;
                                this.ciM.cjB.setTranslationX((float)this.ciY);
                                a(this.ciM.cjC, this.ciM.cjD, d);
                                this.ciM.cjB.setAlpha(0.0f);
                                this.ciM.cjB.setVisibility(0);
                            }
                            else {
                                if (min > 0.33333334f) {
                                    this.ciM.cjB.setAlpha(Math.min(1.0f, 3.0f * (min - 0.33333334f)));
                                }
                                this.ciM.cjB.setTranslationX(this.ciY + min * -this.ciY);
                            }
                        }
                        if (this.ciM.cjq != null) {
                            this.ciM.cjq.setTranslationX(this.ciM.cjs.getTranslationX());
                            this.ciM.cjq.setAlpha(Math.max(0.0f, 1.0f - 3.0f * min));
                        }
                    }
                    this.hT.addMovement(motionEvent);
                    break;
                }
                break;
            }
            case 1: {
                if (this.iU < 0) {
                    Log.e("SelectedAccountNavigationView", "Got ACTION_UP event but have an invalid active pointer id.");
                    return false;
                }
                if (this.ciS) {
                    float ciW2;
                    if (this.ciJ.size() > 1) {
                        ciW2 = this.ciX;
                    }
                    else {
                        ciW2 = this.ciW;
                    }
                    float n10 = this.ciM.cjs.getTranslationX();
                    if (this.Av) {
                        n10 = Math.abs(n10);
                    }
                    int n11;
                    if (n10 >= ciW2 * 0.5f) {
                        n11 = 1;
                    }
                    else {
                        n11 = 0;
                    }
                    if (n11 == 0 && motionEvent.getX(this.iU) - this.ciP > this.iP) {
                        this.hT.computeCurrentVelocity(1000);
                        if (Math.abs(this.hT.getXVelocity()) > this.ciR) {
                            n11 = 1;
                        }
                        else {
                            n11 = 0;
                        }
                    }
                    if (n11 != 0) {
                        final AnimatorSet cjj = new AnimatorSet();
                        final float n12 = this.ciU / this.ciT;
                        final float n13 = 0.5f * (this.ciU - this.ciT);
                        int n14;
                        if (this.ciJ.size() > 1) {
                            n14 = this.ciM.cjw.getLeft();
                        }
                        else {
                            n14 = this.ciM.cjv.getLeft();
                        }
                        final float n15 = n14 - this.ciM.cjs.getLeft() + 0.5f * (this.ciU - this.ciT);
                        final AnimatorSet$Builder with = cjj.play((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "translationX", new float[] { n15 })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "translationY", new float[] { n13 })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "scaleX", new float[] { n12 })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "scaleY", new float[] { n12 }));
                        if (this.ciV && this.ciJ.size() > 0) {
                            if (this.ciJ.size() > 1) {
                                with.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjw, "translationX", new float[] { this.ciM.cjv.getLeft() - this.ciM.cjw.getLeft() }));
                            }
                            with.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjv, "translationX", new float[] { this.getWidth() - this.ciM.cjv.getLeft() })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjv, "alpha", new float[] { 0.0f }));
                            if (this.ciM.cjE != null) {
                                with.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjE, "translationX", new float[] { 0.0f }));
                            }
                            if (this.ciM.cjB != null) {
                                this.ciM.cjq.getWidth();
                                this.a(this.ciJ.get(0), with, 0);
                            }
                        }
                        cjj.addListener((Animator$AnimatorListener)new J(this));
                        final d bqi = this.bqi;
                        this.bqi = this.ciJ.remove(0);
                        this.ciJ.add(bqi);
                        this.eT(100);
                        cjj.setDuration((long)(450.0f * (1.0f - this.ciM.cjs.getTranslationX() / n15)));
                        cjj.setInterpolator((TimeInterpolator)this.cjg);
                        (this.cjj = cjj).start();
                    }
                    else {
                        final AnimatorSet cjj2 = new AnimatorSet();
                        final AnimatorSet$Builder play = cjj2.play((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "alpha", new float[] { 1.0f }));
                        play.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "translationX", new float[] { 0.0f })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "translationY", new float[] { 0.0f })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "scaleX", new float[] { 1.0f })).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjs, "scaleY", new float[] { 1.0f }));
                        play.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjE, "translationX", new float[] { this.cjd }));
                        if (this.ciM.cjF != null) {
                            play.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjF, "alpha", new float[] { 0.0f }));
                        }
                        if (this.ciM.cjx != null) {
                            play.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjx, "alpha", new float[] { 1.0f }));
                        }
                        play.with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjw, "translationX", new float[] { 0.0f }));
                        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this.ciM.cjv, "translationX", new float[] { 0.0f });
                        final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)this.ciM.cjB, "translationX", new float[] { -this.getWidth() });
                        final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object)this.ciM.cjv, "alpha", new float[] { 1.0f });
                        final ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat((Object)this.ciM.cjq, "translationX", new float[] { 0.0f });
                        play.with((Animator)ofFloat).with((Animator)ofFloat3);
                        play.with((Animator)ofFloat2).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjB, "alpha", new float[] { 0.0f })).with((Animator)ofFloat4).with((Animator)ObjectAnimator.ofFloat((Object)this.ciM.cjq, "alpha", new float[] { 1.0f }));
                        cjj2.setDuration(100L);
                        cjj2.addListener((Animator$AnimatorListener)new G(this));
                        cjj2.setInterpolator((TimeInterpolator)this.cjg);
                        (this.cjj = cjj2).start();
                    }
                }
                else {
                    this.Vd();
                }
                this.ciS = false;
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                }
                this.hT.clear();
                return false;
            }
            case 3: {
                final boolean b = false;
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    return false;
                }
                return b;
            }
            case 5: {
                this.iU = motionEvent.getPointerId(motionEvent.getActionIndex());
                break;
            }
            case 6: {
                this.d(motionEvent);
                break;
            }
        }
        return true;
    }
    
    public final void setNavigationMode(final int bw) {
        boolean b = true;
        if (this.Bw != bw) {
            this.Bw = bw;
            if (this.ciM == null) {
                this.Va();
            }
            if (this.Bw != (b ? 1 : 0)) {
                b = false;
            }
            this.ciM.cjr.aC(b);
        }
    }
}
