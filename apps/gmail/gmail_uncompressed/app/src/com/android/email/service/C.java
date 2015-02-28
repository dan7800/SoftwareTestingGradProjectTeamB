package com.android.email.service;

import android.accounts.*;
import android.content.*;

final class c
{
    private int Uc;
    private final AccountManager Ud;
    
    c(final Context context) {
        if (context != null) {
            this.Ud = AccountManager.get(context);
            return;
        }
        this.Ud = null;
    }
    
    final int kz() {
        if (this.Ud != null) {
            return this.Ud.getAccounts().length;
        }
        return this.Uc;
    }
}
