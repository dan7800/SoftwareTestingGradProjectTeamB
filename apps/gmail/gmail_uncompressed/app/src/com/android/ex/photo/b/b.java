package com.android.ex.photo.b;

import android.content.*;
import android.support.v4.app.*;
import android.net.*;

final class b extends BroadcastReceiver
{
    final /* synthetic */ a aiu;
    
    private b(final a aiu) {
        this.aiu = aiu;
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            this.aiu.ait = false;
        }
        else if (!this.aiu.ait && !this.aiu.oa()) {
            if (!this.aiu.ais) {
                this.aiu.h().a(2, (L<Object>)this.aiu);
            }
            this.aiu.h().a(3, (L<Object>)this.aiu);
            this.aiu.ait = true;
            this.aiu.ain.setVisibility(0);
        }
    }
}
