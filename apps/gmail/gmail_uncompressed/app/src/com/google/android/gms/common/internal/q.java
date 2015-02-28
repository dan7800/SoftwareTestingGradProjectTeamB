package com.google.android.gms.common.internal;

import java.util.*;
import com.google.android.gms.common.internal.f$com.google.android.gms.common.internal.*;
import android.content.*;
import android.os.*;

public final class q implements Handler$Callback
{
    private static final Object bFm;
    private static q bFn;
    private final HashMap<String, r> bFo;
    private final Context bxq;
    private final Handler mHandler;
    
    static {
        bFm = new Object();
    }
    
    private q(final Context context) {
        this.mHandler = new Handler(context.getMainLooper(), (Handler$Callback)this);
        this.bFo = new HashMap<String, r>();
        this.bxq = context.getApplicationContext();
    }
    
    public static q ci(final Context context) {
        synchronized (q.bFm) {
            if (q.bFn == null) {
                q.bFn = new q(context.getApplicationContext());
            }
            return q.bFn;
        }
    }
    
    public final boolean a(final String s, final k k) {
        while (true) {
            while (true) {
                r r;
                synchronized (this.bFo) {
                    r = this.bFo.get(s);
                    if (r == null) {
                        r = new r(this, s);
                        r.a((com.google.android.gms.common.internal.k)k);
                        r.cd(this.bxq.bindService(new Intent(s).setPackage("com.google.android.gms"), (ServiceConnection)r.Lj(), 129));
                        this.bFo.put(s, r);
                        return r.isBound();
                    }
                    this.mHandler.removeMessages(0, (Object)r);
                    if (r.c((com.google.android.gms.common.internal.k)k)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + s);
                    }
                }
                r.a((com.google.android.gms.common.internal.k)k);
                switch (r.getState()) {
                    case 1: {
                        ((com.google.android.gms.common.internal.k)k).onServiceConnected(r.getComponentName(), r.getBinder());
                        continue;
                    }
                    case 2: {
                        r.cd(this.bxq.bindService(new Intent(s).setPackage("com.google.android.gms"), (ServiceConnection)r.Lj(), 129));
                        continue;
                    }
                    default: {
                        continue;
                    }
                }
                break;
            }
        }
    }
    
    public final void b(final String s, final k k) {
        final r r;
        synchronized (this.bFo) {
            r = this.bFo.get(s);
            if (r == null) {
                throw new IllegalStateException("Nonexistent connection status for service action: " + s);
            }
        }
        if (!r.c((com.google.android.gms.common.internal.k)k)) {
            throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + s);
        }
        r.b((com.google.android.gms.common.internal.k)k);
        if (r.Ll()) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, (Object)r), 5000L);
        }
    }
    // monitorexit(hashMap)
    
    public final boolean handleMessage(final Message message) {
        switch (message.what) {
            default: {
                return false;
            }
            case 0: {
                final r r = (r)message.obj;
                synchronized (this.bFo) {
                    if (r.Ll()) {
                        this.bxq.unbindService((ServiceConnection)r.Lj());
                        this.bFo.remove(r.Lk());
                    }
                    return true;
                }
                break;
            }
        }
    }
}
