package com.google.analytics.tracking.android;

import android.os.*;
import java.util.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;

final class c implements b
{
    private e aSc;
    private f aSd;
    private com.google.android.gms.analytics.internal.b aSe;
    private ServiceConnection aaO;
    private Context mContext;
    
    public c(final Context mContext, final e aSc, final f aSd) {
        this.mContext = mContext;
        if (aSc == null) {
            throw new IllegalArgumentException("onConnectedListener cannot be null");
        }
        this.aSc = aSc;
        if (aSd == null) {
            throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
        }
        this.aSd = aSd;
    }
    
    private com.google.android.gms.analytics.internal.b Bz() {
        int n;
        if (this.aSe != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
        return this.aSe;
    }
    
    @Override
    public final void By() {
        try {
            this.Bz().By();
        }
        catch (RemoteException ex) {
            Q.cW("clear hits failed: " + ex);
        }
    }
    
    @Override
    public final void a(final Map<String, String> map, final long n, final String s, final List<Command> list) {
        try {
            this.Bz().a(map, n, s, list);
        }
        catch (RemoteException ex) {
            Q.cW("sendHit failed: " + ex);
        }
    }
    
    @Override
    public final void connect() {
        final Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        intent.putExtra("app_package_name", this.mContext.getPackageName());
        if (this.aaO != null) {
            Q.cW("Calling connect() while still connected, missing disconnect().");
        }
        else {
            this.aaO = (ServiceConnection)new d(this);
            final boolean bindService = this.mContext.bindService(intent, this.aaO, 129);
            Q.cY("connect: bindService returned " + bindService + " for " + intent);
            if (!bindService) {
                this.aaO = null;
                this.aSd.dv(1);
            }
        }
    }
    
    @Override
    public final void disconnect() {
        this.aSe = null;
        if (this.aaO == null) {
            return;
        }
        while (true) {
            try {
                this.mContext.unbindService(this.aaO);
                this.aaO = null;
                this.aSc.onDisconnected();
            }
            catch (IllegalArgumentException ex) {
                continue;
            }
            catch (IllegalStateException ex2) {
                continue;
            }
            break;
        }
    }
}
