package com.google.android.gms.common;

import android.os.*;
import java.util.concurrent.*;
import android.content.*;

public final class h implements ServiceConnection
{
    boolean bBY;
    private final BlockingQueue<IBinder> bBZ;
    
    public h() {
        this.bBY = false;
        this.bBZ = new LinkedBlockingQueue<IBinder>();
    }
    
    public final IBinder Kn() {
        if (this.bBY) {
            throw new IllegalStateException();
        }
        this.bBY = true;
        return this.bBZ.take();
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.bBZ.add(binder);
    }
    
    public final void onServiceDisconnected(final ComponentName componentName) {
    }
}
