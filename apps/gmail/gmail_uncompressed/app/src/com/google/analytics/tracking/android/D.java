package com.google.analytics.tracking.android;

import android.os.*;
import java.util.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;

final class d implements ServiceConnection
{
    final /* synthetic */ c aSf;
    
    d(final c aSf) {
        this.aSf = aSf;
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        Q.cV("service connected, binder: " + binder);
        try {
            if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(binder.getInterfaceDescriptor())) {
                Q.cV("bound to service");
                this.aSf.aSe = com.google.android.gms.analytics.internal.c.e(binder);
                c.a(this.aSf);
                return;
            }
        }
        catch (RemoteException ex) {}
        this.aSf.mContext.unbindService((ServiceConnection)this);
        this.aSf.aaO = null;
        this.aSf.aSd.dv(2);
    }
    
    public final void onServiceDisconnected(final ComponentName componentName) {
        Q.cV("service disconnected: " + componentName);
        this.aSf.aaO = null;
        this.aSf.aSc.onDisconnected();
    }
}
