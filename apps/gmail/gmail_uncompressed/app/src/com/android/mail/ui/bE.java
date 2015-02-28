package com.android.mail.ui;

import android.view.*;
import android.app.*;
import android.os.*;
import com.android.mail.utils.*;
import android.animation.*;
import android.content.res.*;

public final class be
{
    private static int aIx;
    private static int aIy;
    private long aIA;
    private View aIB;
    private View aIC;
    private final Runnable aID;
    private final Fragment aIz;
    private final Handler mHandler;
    
    static {
        be.aIx = -1;
        be.aIy = -1;
    }
    
    public be(final Fragment aIz, final Handler mHandler) {
        this.aIA = -1L;
        this.aIz = aIz;
        this.mHandler = mHandler;
        this.aID = new bf(this, "mDelayedShow", this.aIz);
    }
    
    private void d(final Runnable runnable) {
        this.aIA = -1L;
        this.aIB.setVisibility(8);
        if (this.aIC.getVisibility() == 0) {
            if (this.aIz.isAdded()) {
                ag.aG(this.aIC);
                final Animator loadAnimator = AnimatorInflater.loadAnimator(this.aIz.getActivity().getApplicationContext(), 2131034121);
                loadAnimator.setTarget((Object)this.aIC);
                loadAnimator.addListener((Animator$AnimatorListener)new bh(this, runnable));
                loadAnimator.start();
                return;
            }
            this.aIC.setVisibility(8);
        }
        else if (runnable != null) {
            runnable.run();
        }
    }
    
    public final void az(final View view) {
        this.aIC = view.findViewById(2131558722);
        this.aIB = view.findViewById(2131558723);
    }
    
    public final void bu(final boolean b) {
        if (!b) {
            return;
        }
        if (be.aIx == -1) {
            final Resources resources = this.aIz.getResources();
            be.aIx = resources.getInteger(2131427377);
            be.aIy = resources.getInteger(2131427378);
        }
        this.aIC.setVisibility(0);
        this.mHandler.removeCallbacks(this.aID);
        this.mHandler.postDelayed(this.aID, (long)be.aIx);
    }
    
    public final void c(final Runnable runnable) {
        if (this.aIA == -1L) {
            this.mHandler.removeCallbacks(this.aID);
            this.d(runnable);
            return;
        }
        final long abs = Math.abs(System.currentTimeMillis() - this.aIA);
        if (abs > be.aIy) {
            this.d(runnable);
            return;
        }
        this.mHandler.postDelayed((Runnable)new bg(this, "dismissLoadingStatus", this.aIz, runnable), Math.abs(be.aIy - abs));
    }
    
    public final void zb() {
        this.c(null);
    }
}
