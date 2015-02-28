package com.google.android.gm;

import android.app.*;
import android.accounts.*;
import android.os.*;
import android.content.*;

final class k implements f
{
    final /* synthetic */ Activity aWH;
    final /* synthetic */ AddAccountActivity aWO;
    
    k(final AddAccountActivity awo, final Activity awh) {
        this.aWO = awo;
        this.aWH = awh;
    }
    
    @Override
    public final void a(final Account[] array) {
        if (array == null || array.length == 0) {
            a.a(this.aWH, new l(this));
            return;
        }
        AddAccountActivity.a(this.aWO);
    }
}
