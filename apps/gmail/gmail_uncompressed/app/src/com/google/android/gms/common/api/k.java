package com.google.android.gms.common.api;

import android.os.*;
import android.util.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import java.util.concurrent.*;

public final class k<R extends t> extends Handler
{
    public k() {
        this(Looper.getMainLooper());
    }
    
    public k(final Looper looper) {
        super(looper);
    }
    
    public final void Kv() {
        this.removeMessages(2);
    }
    
    public final void a(final u<R> u, final R r) {
        this.sendMessage(this.obtainMessage(1, (Object)new Pair((Object)u, (Object)r)));
    }
    
    public final void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                Log.wtf("GoogleApi", "Don't know how to handle this message.");
            }
            case 1: {
                final Pair pair = (Pair)message.obj;
                final u u = (u)pair.first;
                final t t = (t)pair.second;
                try {
                    u.a(t);
                }
                catch (RuntimeException ex) {
                    i.b(t);
                    throw ex;
                }
            }
            case 2: {
                ((j<t>)message.obj).Ku();
            }
        }
    }
}
