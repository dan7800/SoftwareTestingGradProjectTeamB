package com.android.mail.ui;

import android.animation.*;
import android.app.*;

final class cL extends AnimatorListenerAdapter
{
    final /* synthetic */ cK aMJ;
    
    cL(final cK amj) {
        this.aMJ = amj;
    }
    
    public final void onAnimationEnd(final Animator animator) {
        if (this.aMJ.aDb.AJ()) {
            final FragmentManager fragmentManager = this.aMJ.aCT.getFragmentManager();
            final FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            final Fragment fragmentById = fragmentManager.findFragmentById(2131558843);
            if (fragmentById != null && fragmentById.isAdded()) {
                beginTransaction.remove(fragmentById);
                beginTransaction.commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
            }
        }
    }
}
