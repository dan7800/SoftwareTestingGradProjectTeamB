package android.support.v4.widget;

import android.view.animation.*;
import android.content.res.*;
import android.util.*;
import android.os.*;
import android.view.*;
import android.support.v4.view.*;

final class c implements Runnable
{
    final /* synthetic */ a kF;
    
    private c(final a kf) {
        this.kF = kf;
    }
    
    @Override
    public final void run() {
        if (!this.kF.kq) {
            return;
        }
        if (this.kF.ko) {
            this.kF.ko = false;
            this.kF.kc.start();
        }
        final b d = this.kF.kc;
        if (d.isFinished() || !this.kF.bz()) {
            this.kF.kq = false;
            return;
        }
        if (this.kF.kp) {
            this.kF.kp = false;
            a.i(this.kF);
        }
        d.bB();
        d.bE();
        this.kF.H(d.bF());
        ad.a(this.kF.ke, this);
    }
}
