package com.google.android.gms.common.internal;

import android.content.*;
import android.os.*;

final class k implements ServiceConnection
{
    final /* synthetic */ f bEZ;
    
    k(final f bez) {
        this.bEZ = bez;
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.bEZ.h(binder);
    }
    
    public final void onServiceDisconnected(final ComponentName componentName) {
        this.bEZ.mHandler.sendMessage(this.bEZ.mHandler.obtainMessage(4, (Object)1));
    }
}
