package com.android.mail.b;

import android.animation.*;
import android.content.res.*;
import android.graphics.drawable.*;

public final class c extends o implements ValueAnimator$AnimatorUpdateListener
{
    private final g akq;
    private final d akr;
    private final ValueAnimator aks;
    private final ValueAnimator akt;
    
    public c(final Resources resources, final int n) {
        super(new g(resources), new d(resources), n);
        this.akq = (g)this.akU;
        this.akr = (d)this.akV;
        final long n2 = this.akX + this.akW / 2;
        final long n3 = this.akW / 2 + this.akY;
        (this.aks = ValueAnimator.ofFloat(new float[] { 0.2f, 1.0f }).setDuration(n3)).setStartDelay(n2);
        this.aks.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
        (this.akt = ValueAnimator.ofFloat(new float[] { 0.0f, 1.0f }).setDuration(n3)).setStartDelay(n2);
        this.akt.addUpdateListener((ValueAnimator$AnimatorUpdateListener)this);
    }
    
    @Override
    public final void ap(final boolean b) {
        float n = 1.0f;
        super.ap(b);
        if (this.aks == null) {
            return;
        }
        this.aks.cancel();
        this.akt.cancel();
        final d akr = this.akr;
        float n2;
        if (b) {
            n2 = 0.2f;
        }
        else {
            n2 = n;
        }
        akr.u(n2);
        final d akr2 = this.akr;
        if (b) {
            n = 0.0f;
        }
        akr2.v(n);
    }
    
    public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float floatValue = (float)valueAnimator.getAnimatedValue();
        if (valueAnimator == this.aks) {
            this.akr.u(floatValue);
        }
        else if (valueAnimator == this.akt) {
            this.akr.v(floatValue);
        }
    }
    
    @Override
    public final void ow() {
        super.ow();
        if (!this.aks.isStarted() && !this.oB()) {
            this.aks.start();
            this.akt.start();
            return;
        }
        this.aks.reverse();
        this.akt.reverse();
    }
    
    public final g ox() {
        return this.akq;
    }
}
