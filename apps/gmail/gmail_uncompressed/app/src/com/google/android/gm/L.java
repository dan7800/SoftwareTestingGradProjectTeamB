package com.google.android.gm;

import android.accounts.*;
import android.os.*;
import android.content.*;
import android.app.*;

final class l implements g
{
    final /* synthetic */ k aWP;
    
    l(final k awp) {
        this.aWP = awp;
    }
    
    @Override
    public final void b(final Account account) {
        if (account != null) {
            final AddAccountActivity awo = this.aWP.aWO;
            (new Account[1])[0] = account;
            AddAccountActivity.a(awo);
            return;
        }
        AddAccountActivity.b(this.aWP.aWO);
    }
}
