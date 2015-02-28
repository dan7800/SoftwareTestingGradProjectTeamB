package com.google.analytics.tracking.android;

import android.content.*;
import android.os.*;

final class t extends BroadcastReceiver
{
    private final ad aSI;
    
    t(final ad asi) {
        this.aSI = asi;
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            final Bundle extras = intent.getExtras();
            Boolean b = Boolean.FALSE;
            if (extras != null) {
                b = intent.getExtras().getBoolean("noConnectivity");
            }
            this.aSI.bJ(!b);
        }
    }
}
