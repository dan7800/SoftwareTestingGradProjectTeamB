package com.google.android.gm.welcome;

import com.android.mail.ui.*;
import com.android.mail.c.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.os.*;
import android.app.*;

final class w implements R
{
    final /* synthetic */ Activity aWH;
    final /* synthetic */ x bsK;
    final /* synthetic */ LoaderManager bsL;
    
    w(final Activity awh, final x bsK, final LoaderManager bsL) {
        this.aWH = awh;
        this.bsK = bsK;
        this.bsL = bsL;
    }
    
    @Override
    public final void c(final b<Account> b) {
        final v v = new v(this.aWH, this.bsK, b);
        E.b("WelcomeTour", "Restarting welcome loaders", new Object[0]);
        this.bsL.restartLoader(20, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)v);
    }
}
