package com.google.analytics.tracking.android;

import android.os.*;
import android.content.*;

public final class u implements ad
{
    private static final Object aSJ;
    private static u aST;
    private Context aSK;
    private g aSL;
    private volatile i aSM;
    private int aSN;
    private boolean aSO;
    private boolean aSP;
    private h aSQ;
    private t aSR;
    private boolean aSS;
    private boolean connected;
    private Handler handler;
    
    static {
        aSJ = new Object();
    }
    
    private u() {
        this.aSN = 1800;
        this.aSO = true;
        this.connected = true;
        this.aSP = true;
        this.aSQ = new v(this);
        this.aSS = false;
    }
    
    public static u BI() {
        if (u.aST == null) {
            u.aST = new u();
        }
        return u.aST;
    }
    
    @Override
    public final void BB() {
        synchronized (this) {
            if (this.aSM == null) {
                Q.da("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
                this.aSO = true;
            }
            else {
                GAUsage.BX().a(GAUsage$Field.aUF);
                this.aSM.BB();
            }
        }
    }
    
    final g BJ() {
        Label_0050: {
            synchronized (this) {
                if (this.aSL != null) {
                    break Label_0050;
                }
                if (this.aSK == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
            }
            this.aSL = new Z(this.aSQ, this.aSK);
        }
        if (this.handler == null) {
            this.handler = new Handler(this.aSK.getMainLooper(), (Handler$Callback)new w(this));
            if (this.aSN > 0) {
                this.handler.sendMessageDelayed(this.handler.obtainMessage(1, u.aSJ), (long)(1000 * this.aSN));
            }
        }
        if (this.aSR == null && this.aSP) {
            this.aSR = new t(this);
            final IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            this.aSK.registerReceiver((BroadcastReceiver)this.aSR, intentFilter);
        }
        // monitorexit(this)
        return this.aSL;
    }
    
    final void a(final Context context, final i asm) {
        synchronized (this) {
            if (this.aSK == null) {
                this.aSK = context.getApplicationContext();
                if (this.aSM == null) {
                    this.aSM = asm;
                    if (this.aSO) {
                        asm.BB();
                    }
                }
            }
        }
    }
    
    @Override
    public final void bJ(final boolean b) {
        synchronized (this) {
            this.h(this.aSS, b);
        }
    }
    
    @Override
    public final void dw(final int n) {
        synchronized (this) {
            if (this.handler == null) {
                Q.da("Need to call initialize() and be in fallback mode to start dispatch.");
                this.aSN = n;
            }
            else {
                GAUsage.BX().a(GAUsage$Field.aUG);
                if (!this.aSS && this.connected && this.aSN > 0) {
                    this.handler.removeMessages(1, u.aSJ);
                }
                if ((this.aSN = n) > 0 && !this.aSS && this.connected) {
                    this.handler.sendMessageDelayed(this.handler.obtainMessage(1, u.aSJ), (long)(n * 1000));
                }
            }
        }
    }
    
    final void h(final boolean ass, final boolean connected) {
        while (true) {
            while (true) {
                Label_0155: {
                    Label_0148: {
                        synchronized (this) {
                            if (this.aSS != ass || this.connected != connected) {
                                if ((ass || !connected) && this.aSN > 0) {
                                    this.handler.removeMessages(1, u.aSJ);
                                }
                                if (!ass && connected && this.aSN > 0) {
                                    this.handler.sendMessageDelayed(this.handler.obtainMessage(1, u.aSJ), (long)(1000 * this.aSN));
                                }
                                final StringBuilder sb = new StringBuilder("PowerSaveMode ");
                                if (!ass && connected) {
                                    break Label_0148;
                                }
                                break Label_0155;
                            }
                            return;
                            final StringBuilder sb;
                            final String s;
                            Q.cY(sb.append(s).toString());
                            this.aSS = ass;
                            this.connected = connected;
                            return;
                        }
                    }
                    final String s = "terminated.";
                    continue;
                }
                final String s = "initiated.";
                continue;
            }
        }
    }
}
