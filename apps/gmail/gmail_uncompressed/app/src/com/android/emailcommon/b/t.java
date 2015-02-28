package com.android.emailcommon.b;

import android.content.*;
import android.widget.*;

final class t implements Runnable
{
    final /* synthetic */ Context PG;
    final /* synthetic */ String abV;
    
    t(final Context pg, final String abV) {
        this.PG = pg;
        this.abV = abV;
    }
    
    @Override
    public final void run() {
        Toast.makeText(this.PG, (CharSequence)this.abV, 1).show();
    }
}
