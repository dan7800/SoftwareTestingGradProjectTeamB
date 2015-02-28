package com.android.email.provider;

import android.content.*;

final class r implements Runnable
{
    final /* synthetic */ Context PG;
    
    r(final Context pg) {
        this.PG = pg;
    }
    
    @Override
    public final void run() {
        EmailProvider.J(this.PG);
    }
}
