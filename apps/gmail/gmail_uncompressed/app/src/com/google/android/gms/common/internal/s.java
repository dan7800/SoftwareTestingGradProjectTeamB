package com.google.android.gms.common.internal;

import android.content.*;
import android.os.*;
import java.util.*;

public final class s implements ServiceConnection
{
    final /* synthetic */ r bFw;
    
    public s(final r bFw) {
        this.bFw = bFw;
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        synchronized (this.bFw.bFv.bFo) {
            this.bFw.bFt = binder;
            this.bFw.bFu = componentName;
            final Iterator<k> iterator = this.bFw.bFr.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceConnected(componentName, binder);
            }
        }
        this.bFw.ao = 1;
    }
    // monitorexit(hashMap)
    
    public final void onServiceDisconnected(final ComponentName componentName) {
        synchronized (this.bFw.bFv.bFo) {
            this.bFw.bFt = null;
            this.bFw.bFu = componentName;
            final Iterator<k> iterator = this.bFw.bFr.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceDisconnected(componentName);
            }
        }
        this.bFw.ao = 2;
    }
    // monitorexit(hashMap)
}
