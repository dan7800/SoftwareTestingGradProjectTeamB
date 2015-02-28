package com.android.mail.ui;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.view.animation.*;
import android.content.res.*;
import java.util.*;
import android.animation.*;
import android.graphics.*;
import com.android.mail.utils.*;
import android.view.*;

final class TwoPaneLayout extends FrameLayout implements cc, dE
{
    private boolean Av;
    private final Drawable aOA;
    private final int aOB;
    private final List<Runnable> aOC;
    private final dz aOD;
    private boolean aOE;
    private final ValueAnimator$AnimatorUpdateListener aOF;
    private final int aOc;
    private final int aOd;
    private final int aOe;
    private final double aOf;
    private final TimeInterpolator aOg;
    private final boolean aOh;
    private int aOi;
    private int aOj;
    private dt aOk;
    private cl aOl;
    private final cb aOm;
    private int aOn;
    private Float aOo;
    private View aOp;
    private View aOq;
    private View aOr;
    private View aOs;
    private View aOt;
    private int aOu;
    private int aOv;
    private int aOw;
    private int aOx;
    private int aOy;
    private int aOz;
    
    public TwoPaneLayout(final Context context) {
        this(context, null);
    }
    
    public TwoPaneLayout(final Context context, final AttributeSet set) {
        super(context, set);
        this.aOi = 0;
        this.aOj = 0;
        this.aOC = new ArrayList<Runnable>();
        this.aOD = new dz(this, (byte)0);
        this.aOF = (ValueAnimator$AnimatorUpdateListener)new dw(this);
        final Resources resources = this.getResources();
        this.aOh = resources.getBoolean(2131623944);
        this.aOc = resources.getDimensionPixelSize(2131492975);
        this.aOd = resources.getDimensionPixelSize(2131492976);
        this.aOe = this.aOd - this.aOc;
        this.aOg = (TimeInterpolator)AnimationUtils.loadInterpolator(context, 17563651);
        final int integer = resources.getInteger(2131427357);
        this.aOf = integer / (resources.getInteger(2131427358) + integer);
        this.aOA = this.getResources().getDrawable(2130837759);
        this.aOB = this.aOA.getMinimumWidth();
        this.aOm = new cb(context, this);
    }
    
    private boolean Aq() {
        return this.aOk != null && this.aOk.Aq();
    }
    
    private void Aw() {
        boolean b = true;
        if (this.aOk.isDestroyed()) {
            E.d("TwoPaneLayout", "IN TPL.onTransitionComplete, activity destroyed->quitting early", new Object[0]);
            return;
        }
        final Iterator<Runnable> iterator = this.aOC.iterator();
        while (iterator.hasNext()) {
            iterator.next().run();
        }
        this.aOC.clear();
        this.aOj = this.aOi;
        int n;
        if (this.Av) {
            n = this.aOw;
        }
        else {
            n = this.aOx;
        }
        if (this.aOh && n != 0) {
            final Iterator<dy> iterator2 = this.aOk.Av().iterator();
            while (iterator2.hasNext()) {
                iterator2.next().j(n, this.Aq());
            }
        }
        switch (this.aOi) {
            default: {
                return;
            }
            case 1:
            case 4: {
                this.bF(b);
                this.bE(!this.Ax() && b);
                return;
            }
            case 2:
            case 3:
            case 5: {
                this.bF(false);
                break;
            }
            case 6: {
                this.bF(false);
                if (this.Ax()) {
                    b = false;
                    break;
                }
                break;
            }
        }
        this.bE(b);
    }
    
    private float C(final float n) {
        float n2;
        if (this.Av) {
            if (this.aOn == 0) {
                n2 = (this.aOe - n) / this.aOe;
            }
            else {
                n2 = -n / this.aOe;
            }
        }
        else if (this.aOn == 0) {
            n2 = n / this.aOe;
        }
        else {
            n2 = (n + this.aOe) / this.aOe;
        }
        if (n2 < 0.0f) {
            return 0.0f;
        }
        if (n2 > 1.0f) {
            return 1.0f;
        }
        return n2;
    }
    
    private void b(final float n, final float translationX, final boolean b) {
        int i = 0;
        if (b) {
            this.aOr.animate().translationX(n);
            final ViewPropertyAnimator setListener = this.aOq.animate().translationX(n).setListener((Animator$AnimatorListener)this.aOD);
            this.aOp.animate().translationX(translationX);
            if (ag.Bg()) {
                setListener.setUpdateListener(this.aOF);
            }
            for (View[] array = { this.aOp, this.aOq, this.aOr }; i < array.length; ++i) {
                array[i].animate().setInterpolator(this.aOg).setDuration(300L);
            }
        }
        else {
            this.aOp.setTranslationX(translationX);
            this.aOq.setTranslationX(n);
            this.aOr.setTranslationX(n);
        }
    }
    
    private void b(final int n, final boolean b, final boolean b2, final boolean b3) {
        if (b) {
            this.aOp.setVisibility(n);
        }
        if (b2) {
            this.aOq.setVisibility(n);
        }
        if (b3) {
            if (this.aOs.getVisibility() != 8) {
                this.aOs.setVisibility(n);
            }
            if (this.aOt.getVisibility() != 8) {
                this.aOt.setVisibility(n);
            }
        }
    }
    
    private void bE(final boolean b) {
        if (this.aOl != null) {
            this.aOl.bm(b);
        }
    }
    
    private void bF(final boolean b) {
        if (this.aOl != null) {
            this.aOl.bn(b);
        }
    }
    
    private void d(final boolean b, final boolean b2, final boolean b3) {
        this.b(0, b, b2, b3);
        this.aOC.add(new dx(this, b, b2, b3));
    }
    
    private int dj(final int n) {
        int n2 = n - this.aOc;
        if (this.aOh) {
            n2 *= (int)this.aOf;
        }
        return n2;
    }
    
    private void l(int n, final boolean b) {
        if (dD.dl(this.aOi) || dD.do(this.aOi)) {
            if (!this.Av) {
                n = -n;
            }
            this.b(n, n, b);
            this.d(false, false, true);
        }
        else {
            int aOe;
            if (this.Aq()) {
                aOe = this.aOe;
            }
            else {
                aOe = 0;
            }
            if (this.Av) {
                aOe = -aOe;
            }
            this.b(aOe, 0.0f, b);
            this.d(true, true, false);
        }
        if (!b) {
            this.Aw();
        }
    }
    
    private void s(final View view, final int width) {
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.width != width) {
            layoutParams.width = width;
            view.setLayoutParams(layoutParams);
            if (E.isLoggable("TwoPaneLayout", 3)) {
                String string;
                if (view == this.aOp) {
                    string = "folders";
                }
                else if (view == this.aOq) {
                    string = "conv-list";
                }
                else if (view == this.aOs) {
                    string = "conv-view";
                }
                else if (view == this.aOt) {
                    string = "misc-view";
                }
                else if (view == this.aOr) {
                    string = "conv-misc-wrapper";
                }
                else {
                    string = "???:" + view;
                }
                E.c("TwoPaneLayout", "TPL: setPaneWidth, w=%spx pane=%s", width, string);
            }
        }
    }
    
    @Deprecated
    public final boolean Ax() {
        return !dD.dk(this.aOi) && !this.aOh;
    }
    
    public final boolean Ay() {
        return this.aOj != this.aOi;
    }
    
    public final boolean Az() {
        return this.aOh;
    }
    
    public final void a(final float n, final float n2, final boolean b) {
        boolean b2 = true;
        if (!b) {
            final dt aOk = this.aOk;
            if (this.C(n) >= 0.5f) {
                b2 = false;
            }
            aOk.bB(b2);
            return;
        }
        if (this.Av) {
            final dt aOk2 = this.aOk;
            if (n2 < 0.0f) {
                b2 = false;
            }
            aOk2.bB(b2);
            return;
        }
        final dt aOk3 = this.aOk;
        if (n2 >= 0.0f) {
            b2 = false;
        }
        aOk3.bB(b2);
    }
    
    public final void b(final dt dt) {
        this.aOk = dt;
        this.aOl = dt;
        ((ConversationViewFrame)this.aOr).a(this.aOk);
    }
    
    public final void bD(final boolean b) {
        int aOe;
        if (this.Av) {
            aOe = -this.aOe;
        }
        else {
            aOe = this.aOe;
        }
        float n;
        if (b) {
            n = 0.0f;
        }
        else {
            n = aOe;
        }
        this.b(n, 0.0f, true);
    }
    
    public final void cI(final int aOi) {
        if (this.aOi == 0) {
            this.aOp.setVisibility(0);
            this.aOq.setVisibility(0);
        }
        if (dD.do(aOi)) {
            this.aOt.setVisibility(0);
            this.aOs.setVisibility(8);
        }
        else {
            this.aOs.setVisibility(0);
            this.aOt.setVisibility(8);
        }
        if (dD.dl(this.aOi)) {
            this.aOk.wg();
        }
        if (aOi == 2) {
            this.bE(true);
        }
        this.aOi = aOi;
        E.d("TwoPaneLayout", "onViewModeChanged(%d)", aOi);
        final int measuredWidth = this.getMeasuredWidth();
        if (measuredWidth != 0) {
            if (!this.aOh) {
                this.l(measuredWidth, true);
                return;
            }
            this.Aw();
        }
    }
    
    protected final void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        if (al.aH((View)this)) {
            final int n = (int)this.aOq.getX() + this.aOq.getWidth();
            this.aOA.setBounds(n, 0, n + this.aOB, this.aOq.getBottom());
        }
        else {
            final int n2 = (int)this.aOq.getX();
            this.aOA.setBounds(n2 - this.aOB, 0, n2, this.aOq.getBottom());
        }
        this.aOA.draw(canvas);
    }
    
    protected final void onFinishInflate() {
        super.onFinishInflate();
        this.aOp = this.findViewById(2131558960);
        this.aOq = this.findViewById(2131558961);
        this.aOr = this.findViewById(2131558963);
        this.aOs = this.aOr.findViewById(2131558964);
        this.aOt = this.aOr.findViewById(2131558966);
        this.aOi = 0;
        this.aOp.setVisibility(8);
        this.aOq.setVisibility(8);
        this.aOs.setVisibility(8);
        this.aOt.setVisibility(8);
    }
    
    public final boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        if (!this.Ay()) {
            switch (motionEvent.getAction()) {
                case 0: {
                    final float x = motionEvent.getX();
                    if (this.Aq()) {
                        float n;
                        float n2;
                        if (this.aOh) {
                            dD.do(this.aOi);
                            if (this.Av) {
                                n = this.aOr.getX();
                            }
                            else {
                                n = this.aOq.getX();
                            }
                            if (this.Av) {
                                n2 = this.aOq.getX() + this.aOq.getWidth();
                            }
                            else {
                                n2 = this.aOr.getX() + this.aOr.getWidth();
                            }
                        }
                        else {
                            n = this.aOq.getX();
                            n2 = n + this.aOq.getWidth();
                        }
                        this.aOE = (x >= n && x <= n2);
                        this.aOo = null;
                        if (this.Av) {
                            this.aOn = 0;
                            break;
                        }
                        this.aOn = 1;
                        break;
                    }
                    else {
                        float x2;
                        if (this.Av) {
                            x2 = this.aOp.getX() + this.aOe;
                        }
                        else {
                            x2 = this.aOp.getX();
                        }
                        final float n3 = x2 + this.aOc;
                        this.aOE = (x >= x2 && x <= n3);
                        if (this.Av) {
                            this.aOn = 1;
                            this.aOo = (Float)(this.aOu + this.aOe);
                            break;
                        }
                        this.aOn = 0;
                        this.aOo = (Float)(this.aOu + this.aOc);
                        break;
                    }
                    break;
                }
            }
            if (this.aOE && this.aOm.a(motionEvent, this.aOn, this.aOo)) {
                return true;
            }
        }
        return false;
    }
    
    protected final void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        int n5 = 1;
        final Object[] array = new Object[n5];
        array[0] = this;
        E.c("MailBlankFragment", "TPL(%s).onLayout()", array);
        super.onLayout(b, n, n2, n3, n4);
        this.Av = al.aH((View)this);
        if (b) {
            final int measuredWidth = this.getMeasuredWidth();
            final int aOc = this.aOc;
            final int width = this.aOq.getLayoutParams().width;
            final int width2 = this.aOr.getLayoutParams().width;
            if (this.Av) {
                this.aOu = measuredWidth - this.aOd;
                this.aOw = measuredWidth - aOc - width;
                this.aOy = this.aOw - width2;
            }
            else {
                this.aOu = 0;
                this.aOw = aOc;
                this.aOy = width + this.aOw;
            }
            if (!ag.Be() && !this.aOh) {
                final int aOy = this.aOy;
                if (!this.Av) {
                    n5 = -1;
                }
                this.aOy = n5 + aOy;
            }
            this.aOv = this.aOu + this.aOd;
            this.aOx = width + this.aOw;
            this.aOz = width2 + this.aOy;
            if (this.aOj != this.aOi && !this.aOh) {
                this.l(measuredWidth, false);
            }
            else {
                this.Aw();
            }
        }
        final int measuredHeight = this.getMeasuredHeight();
        this.aOp.layout(this.aOu, 0, this.aOv, measuredHeight);
        this.aOq.layout(this.aOw, 0, this.aOx, measuredHeight);
        this.aOr.layout(this.aOy, 0, this.aOz, measuredHeight);
    }
    
    protected final void onMeasure(final int n, final int n2) {
        E.c("MailBlankFragment", "TPL(%s).onMeasure()", this);
        final int size = View$MeasureSpec.getSize(n);
        if (size != this.getMeasuredWidth()) {
            int n3;
            if (this.aOh) {
                n3 = size - this.dj(size) - this.aOc;
            }
            else {
                n3 = size;
            }
            this.s(this.aOr, n3);
            this.s(this.aOq, this.dj(size));
        }
        super.onMeasure(n, n2);
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.aOE) {
            this.aOm.a(motionEvent, this.aOn, this.aOo);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
    
    public final String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append("{mTranslatedMode=");
        sb.append(this.aOj);
        sb.append(" mCurrDragMode=");
        sb.append(this.aOn);
        sb.append(" mShouldInterceptCurrentTouch=");
        sb.append(this.aOE);
        sb.append(" mTransitionCompleteJobs=");
        sb.append(this.aOC);
        sb.append("}");
        return sb.toString();
    }
    
    public final void y(final float n) {
        final float c = this.C(n);
        int aOe;
        if (this.Av) {
            aOe = -this.aOe;
        }
        else {
            aOe = this.aOe;
        }
        this.b(c * aOe, 0.0f, false);
        this.aOk.x(c);
        if (this.Av) {
            this.invalidate((int)this.aOq.getX() + this.aOq.getWidth(), 0, (int)this.aOp.getX() + this.aOp.getWidth(), this.getBottom());
            return;
        }
        this.invalidate((int)this.aOp.getX(), 0, (int)this.aOq.getX(), this.getBottom());
    }
    
    public final void zA() {
        this.aOk.zk();
    }
}
