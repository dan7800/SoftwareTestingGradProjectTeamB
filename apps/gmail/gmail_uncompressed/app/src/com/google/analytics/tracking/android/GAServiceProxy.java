package com.google.analytics.tracking.android;

import android.content.*;
import java.util.concurrent.*;
import com.google.android.gms.analytics.internal.*;
import java.util.*;

final class GAServiceProxy implements ae, e, f
{
    private final Context aSK;
    private g aSL;
    private final i aSM;
    private boolean aSO;
    private volatile long aSV;
    private volatile GAServiceProxy$ConnectState aSW;
    private volatile b aSX;
    private g aSY;
    private final Queue<C> aSZ;
    private volatile int aTa;
    private volatile Timer aTb;
    private volatile Timer aTc;
    private volatile Timer aTd;
    private boolean aTe;
    private k aTf;
    private long aTg;
    
    private GAServiceProxy(final Context ask, final i asm) {
        this.aSZ = new ConcurrentLinkedQueue<C>();
        this.aTg = 300000L;
        this.aSY = null;
        this.aSK = ask;
        this.aSM = asm;
        this.aTf = new x(this);
        this.aTa = 0;
        this.aSW = GAServiceProxy$ConnectState.aTp;
    }
    
    GAServiceProxy(final Context context, final i i, final byte b) {
        this(context, i);
    }
    
    private void BL() {
        this.aTb = a(this.aTb);
        this.aTc = a(this.aTc);
        this.aTd = a(this.aTd);
    }
    
    private void BN() {
        while (true) {
            Label_0346: {
            Label_0247:
                while (true) {
                    Label_0230: {
                        Label_0213: {
                            Label_0261: {
                                synchronized (this) {
                                    if (!Thread.currentThread().equals(this.aSM.getThread())) {
                                        this.aSM.BC().add(new y(this));
                                        return;
                                    }
                                    if (this.aTe) {
                                        Q.cY("clearHits called");
                                        this.aSZ.clear();
                                        switch (z.aTi[this.aSW.ordinal()]) {
                                            default: {
                                                this.aTe = true;
                                                break;
                                            }
                                            case 1: {
                                                break Label_0213;
                                            }
                                            case 2: {
                                                break Label_0230;
                                            }
                                        }
                                    }
                                    switch (z.aTi[this.aSW.ordinal()]) {
                                        case 1: {
                                            while (!this.aSZ.isEmpty()) {
                                                final C c = this.aSZ.poll();
                                                Q.cY("Sending hit to store");
                                                this.aSL.a(c.BT(), c.BU(), c.getPath(), c.BV());
                                            }
                                            break Label_0247;
                                        }
                                        case 2: {
                                            break Label_0261;
                                        }
                                        case 3: {
                                            break Label_0346;
                                        }
                                        default: {
                                            return;
                                        }
                                    }
                                }
                                break Label_0213;
                            }
                            while (!this.aSZ.isEmpty()) {
                                final C c2 = this.aSZ.peek();
                                Q.cY("Sending hit to service");
                                this.aSX.a(c2.BT(), c2.BU(), c2.getPath(), c2.BV());
                                this.aSZ.poll();
                            }
                            this.aSV = this.aTf.currentTimeMillis();
                            return;
                        }
                        this.aSL.BA();
                        this.aTe = false;
                        continue;
                    }
                    this.aSX.By();
                    this.aTe = false;
                    continue;
                }
                if (this.aSO) {
                    this.BO();
                    return;
                }
                return;
            }
            Q.cY("Need to reconnect");
            if (!this.aSZ.isEmpty()) {
                this.BQ();
            }
        }
    }
    
    private void BO() {
        this.aSL.BB();
        this.aSO = false;
    }
    
    private void BP() {
        while (true) {
            while (true) {
                Label_0063: {
                    synchronized (this) {
                        if (this.aSW != GAServiceProxy$ConnectState.aTl) {
                            this.BL();
                            Q.cY("falling back to local store");
                            if (this.aSY == null) {
                                break Label_0063;
                            }
                            this.aSL = this.aSY;
                            this.aSW = GAServiceProxy$ConnectState.aTl;
                            this.BN();
                        }
                        return;
                    }
                }
                final u bi = u.BI();
                bi.a(this.aSK, this.aSM);
                this.aSL = bi.BJ();
                continue;
            }
        }
    }
    
    private void BQ() {
        while (true) {
            synchronized (this) {
                if (this.aSX != null && this.aSW != GAServiceProxy$ConnectState.aTl) {
                    try {
                        ++this.aTa;
                        a(this.aTc);
                        this.aSW = GAServiceProxy$ConnectState.aTj;
                        (this.aTc = new Timer("Failed Connect")).schedule(new B(this, (byte)0), 3000L);
                        Q.cY("connecting to Analytics service");
                        this.aSX.connect();
                        return;
                    }
                    catch (SecurityException ex) {
                        Q.da("security exception on connectToService");
                        this.BP();
                    }
                }
            }
            Q.da("client not initialized.");
            this.BP();
        }
    }
    
    private void BR() {
        synchronized (this) {
            if (this.aSX != null && this.aSW == GAServiceProxy$ConnectState.aTk) {
                this.aSW = GAServiceProxy$ConnectState.aTo;
                this.aSX.disconnect();
            }
        }
    }
    
    private void BS() {
        this.aTb = a(this.aTb);
        (this.aTb = new Timer("Service Reconnect")).schedule(new D(this, (byte)0), 5000L);
    }
    
    private static Timer a(final Timer timer) {
        if (timer != null) {
            timer.cancel();
        }
        return null;
    }
    
    @Override
    public final void BB() {
        switch (z.aTi[this.aSW.ordinal()]) {
            default: {
                this.aSO = true;
            }
            case 2: {}
            case 1: {
                this.BO();
            }
        }
    }
    
    @Override
    public final void BM() {
        if (this.aSX != null) {
            return;
        }
        this.aSX = new c(this.aSK, this, this);
        this.BQ();
    }
    
    @Override
    public final void b(final Map<String, String> map, final long n, final String s, final List<Command> list) {
        Q.cY("putHit called");
        this.aSZ.add(new C(map, n, s, list));
        this.BN();
    }
    
    @Override
    public final void dv(final int n) {
        synchronized (this) {
            this.aSW = GAServiceProxy$ConnectState.aTn;
            if (this.aTa < 2) {
                Q.da("Service unavailable (code=" + n + "), will retry.");
                this.BS();
            }
            else {
                Q.da("Service unavailable (code=" + n + "), using local store.");
                this.BP();
            }
        }
    }
    
    @Override
    public final void onConnected() {
        synchronized (this) {
            this.aTc = a(this.aTc);
            this.aTa = 0;
            Q.cY("Connected to service");
            this.aSW = GAServiceProxy$ConnectState.aTk;
            this.BN();
            this.aTd = a(this.aTd);
            (this.aTd = new Timer("disconnect check")).schedule(new A(this, (byte)0), this.aTg);
        }
    }
    
    @Override
    public final void onDisconnected() {
        while (true) {
            Label_0067: {
                synchronized (this) {
                    if (this.aSW == GAServiceProxy$ConnectState.aTo) {
                        Q.cY("Disconnected from service");
                        this.BL();
                        this.aSW = GAServiceProxy$ConnectState.aTp;
                    }
                    else {
                        Q.cY("Unexpected disconnect.");
                        this.aSW = GAServiceProxy$ConnectState.aTn;
                        if (this.aTa >= 2) {
                            break Label_0067;
                        }
                        this.BS();
                    }
                    return;
                }
            }
            this.BP();
        }
    }
}
