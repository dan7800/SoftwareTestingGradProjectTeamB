package com.android.mail.browse;

import android.content.*;
import android.net.*;
import com.android.mail.providers.*;
import android.database.*;

final class v implements Runnable
{
    final /* synthetic */ Context PG;
    final /* synthetic */ Uri amp;
    final /* synthetic */ u amq;
    
    v(final u amq, final Context pg, final Uri amp) {
        this.amq = amq;
        this.PG = pg;
        this.amp = amp;
    }
    
    @Override
    public final void run() {
        final Cursor query = this.PG.getContentResolver().query(this.amp, E.aCC, (String)null, (String[])null, (String)null);
        if (query != null) {
            query.close();
        }
    }
}
