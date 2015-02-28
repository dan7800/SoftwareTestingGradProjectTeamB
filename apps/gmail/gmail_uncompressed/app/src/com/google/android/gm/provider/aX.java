package com.google.android.gm.provider;

import android.content.*;
import android.os.*;

final class ax implements Runnable
{
    final /* synthetic */ Context PG;
    final /* synthetic */ String bjJ;
    final /* synthetic */ Handler bjK;
    final /* synthetic */ Handler bjL;
    final /* synthetic */ aM bjM;
    
    ax(final Context pg, final String bjJ, final Handler bjK, final Handler bjL, final aM bjM) {
        this.PG = pg;
        this.bjJ = bjJ;
        this.bjK = bjK;
        this.bjL = bjL;
        this.bjM = bjM;
    }
    
    @Override
    public final void run() {
        final MailEngine v = MailEngine.V(this.PG, this.bjJ);
        v.a(this.bjK, new ay(this, v));
    }
}
