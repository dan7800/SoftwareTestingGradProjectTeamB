package com.google.android.gm.provider;

import android.os.*;

final class an implements aL
{
    final /* synthetic */ MailEngine bjA;
    final /* synthetic */ ConditionVariable bjB;
    
    an(final MailEngine bjA, final ConditionVariable bjB) {
        this.bjA = bjA;
        this.bjB = bjB;
    }
    
    @Override
    public final void GF() {
        this.bjB.open();
    }
}
