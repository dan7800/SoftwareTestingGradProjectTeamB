package com.google.android.gms.common.internal;

import android.os.*;
import android.util.*;
import com.google.android.gms.common.*;
import java.util.*;

public final class n
{
    private final p bFg;
    private final ArrayList<com.google.android.gms.common.api.p> bFh;
    final ArrayList<com.google.android.gms.common.api.p> bFi;
    private boolean bFj;
    private final ArrayList<e> bFk;
    private final Handler mHandler;
    
    public n(final Looper looper, final p bFg) {
        this.bFh = new ArrayList<com.google.android.gms.common.api.p>();
        this.bFi = new ArrayList<com.google.android.gms.common.api.p>();
        this.bFj = false;
        this.bFk = new ArrayList<e>();
        this.bFg = bFg;
        this.mHandler = new o(this, looper);
    }
    
    protected final void Li() {
        synchronized (this.bFh) {
            final p bFg = this.bFg;
            this.u(null);
        }
    }
    
    public final void a(final com.google.android.gms.common.api.p p) {
        G.ae(p);
        synchronized (this.bFh) {
            if (this.bFh.contains(p)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + p + " is already registered");
            }
            else {
                this.bFh.add(p);
            }
            // monitorexit(this.bFh)
            if (this.bFg.isConnected()) {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, (Object)p));
            }
        }
    }
    
    public final void a(final e e) {
        G.ae(e);
        synchronized (this.bFk) {
            if (this.bFk.contains(e)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + e + " is already registered");
            }
            else {
                this.bFk.add(e);
            }
        }
    }
    
    public final void b(final com.google.android.gms.common.api.p p) {
        G.ae(p);
        synchronized (this.bFh) {
            if (this.bFh != null) {
                if (!this.bFh.remove(p)) {
                    Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + p + " not found");
                }
                else if (this.bFj) {
                    this.bFi.add(p);
                }
            }
        }
    }
    
    public final void b(final e e) {
        G.ae(e);
        synchronized (this.bFk) {
            if (this.bFk != null && !this.bFk.remove(e)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + e + " not found");
            }
        }
    }
    
    public final void c(final a a) {
        this.mHandler.removeMessages(1);
        synchronized (this.bFk) {
            for (final e e : new ArrayList<e>(this.bFk)) {
                if (!this.bFg.KE()) {
                    return;
                }
                if (!this.bFk.contains(e)) {
                    continue;
                }
                e.a(a);
            }
        }
    }
    // monitorexit(list)
    
    public final void ez(final int n) {
        this.mHandler.removeMessages(1);
        synchronized (this.bFh) {
            this.bFj = true;
            for (final com.google.android.gms.common.api.p p : new ArrayList<com.google.android.gms.common.api.p>(this.bFh)) {
                if (!this.bFg.KE()) {
                    break;
                }
                if (!this.bFh.contains(p)) {
                    continue;
                }
                p.dz(n);
            }
        }
        this.bFj = false;
    }
    // monitorexit(list)
    
    public final void u(final Bundle bundle) {
        boolean b;
        boolean b2;
        Label_0019_Outer:Label_0047_Outer:
        while (true) {
            b = true;
            while (true) {
            Label_0149:
                while (true) {
                    synchronized (this.bFh) {
                        if (!this.bFj) {
                            b2 = b;
                            G.cc(b2);
                            this.mHandler.removeMessages(1);
                            this.bFj = true;
                            if (this.bFi.size() == 0) {
                                G.cc(b);
                                for (final com.google.android.gms.common.api.p p : new ArrayList<com.google.android.gms.common.api.p>(this.bFh)) {
                                    if (!this.bFg.KE() || !this.bFg.isConnected()) {
                                        break;
                                    }
                                    if (this.bFi.contains(p)) {
                                        continue Label_0019_Outer;
                                    }
                                    p.r(bundle);
                                }
                                break;
                            }
                            break Label_0149;
                        }
                    }
                    b2 = false;
                    continue Label_0047_Outer;
                }
                b = false;
                continue;
            }
        }
        this.bFi.clear();
        this.bFj = false;
    }
    // monitorexit(list)
}
