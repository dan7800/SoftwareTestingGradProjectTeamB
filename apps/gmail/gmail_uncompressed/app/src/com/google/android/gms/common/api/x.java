package com.google.android.gms.common.api;

import android.content.*;
import java.util.concurrent.locks.*;
import java.util.concurrent.*;
import com.google.android.gms.common.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.util.*;
import android.os.*;
import android.app.*;

final class x implements n
{
    final int bCH;
    private final Lock bCI;
    private final Condition bCJ;
    private final com.google.android.gms.common.internal.n bCK;
    private final int bCL;
    final Queue<E<?>> bCM;
    private a bCN;
    private int bCO;
    private volatile int bCP;
    private volatile int bCQ;
    private boolean bCR;
    private int bCS;
    private long bCT;
    final Handler bCU;
    private final Bundle bCV;
    private final Map<h<?>, f> bCW;
    private final List<String> bCX;
    private boolean bCY;
    private final Set<F<?>> bCZ;
    private final C bCn;
    private final Looper bCw;
    final Set<E<?>> bDa;
    private final p bDb;
    private final com.google.android.gms.common.internal.p bDc;
    
    public x(final Context context, final Looper bCw, final ClientSettings clientSettings, final Map<com.google.android.gms.common.api.a<?>, b> map, final Set<p> set, final Set<q> set2, final int bcl, final int bch) {
        this.bCI = new ReentrantLock();
        this.bCJ = this.bCI.newCondition();
        this.bCM = new LinkedList<E<?>>();
        this.bCP = 4;
        this.bCR = false;
        this.bCT = 5000L;
        this.bCV = new Bundle();
        this.bCW = new HashMap<h<?>, f>();
        this.bCZ = Collections.newSetFromMap(new WeakHashMap<F<?>, Boolean>());
        this.bDa = Collections.newSetFromMap(new ConcurrentHashMap<E<?>, Boolean>());
        this.bCn = new y(this);
        this.bDb = new z(this);
        this.bDc = new A(this);
        this.bCK = new com.google.android.gms.common.internal.n(bCw, this.bDc);
        this.bCw = bCw;
        this.bCU = new D(this, bCw);
        this.bCL = bcl;
        this.bCH = bch;
        final Iterator<p> iterator = set.iterator();
        while (iterator.hasNext()) {
            this.bCK.a(iterator.next());
        }
        final Iterator<q> iterator2 = set2.iterator();
        while (iterator2.hasNext()) {
            this.bCK.a(iterator2.next());
        }
        for (final com.google.android.gms.common.api.a<?> a : map.keySet()) {
            final g<?, ?> ko = a.Ko();
            this.bCW.put(a.Kq(), (f)ko.a(context, bCw, clientSettings, map.get(a), this.bDb, new B(this, ko)));
        }
        this.bCX = Collections.unmodifiableList((List<? extends String>)clientSettings.KU());
    }
    
    private void KC() {
    Label_0026_Outer:
        while (true) {
            this.bCI.lock();
            while (true) {
                Label_0107: {
                    Label_0092: {
                        try {
                            if (!this.isConnected() && !this.KD()) {
                                break Label_0092;
                            }
                            break Label_0107;
                            while (true) {
                                Block_5: {
                                    break Block_5;
                                    final boolean b;
                                    G.a(b, "GoogleApiClient is not connected yet.");
                                    continue Label_0026_Outer;
                                }
                                try {
                                    this.a((E<?>)this.bCM.remove());
                                }
                                catch (DeadObjectException ex) {
                                    Log.w("GoogleApiClientImpl", "Service died while flushing queue", (Throwable)ex);
                                }
                                continue Label_0026_Outer;
                            }
                        }
                        // iftrue(Label_0097:, this.bCM.isEmpty())
                        finally {
                            this.bCI.unlock();
                        }
                    }
                    final boolean b = false;
                    continue;
                }
                final boolean b = true;
                continue;
            }
        }
        Label_0097: {
            this.bCI.unlock();
        }
    }
    
    private boolean KD() {
        return this.bCQ != 0;
    }
    
    private <A extends f> void a(final E<A> e) {
        this.bCI.lock();
        try {
            G.b(e.Kq() != null, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
            this.bDa.add(e);
            e.a(this.bCn);
            if (this.KD()) {
                e.b(new Status(8));
                return;
            }
            e.a(this.a(e.Kq()));
        }
        finally {
            this.bCI.unlock();
        }
    }
    
    private void eu(final int n) {
        this.bCI.lock();
        Label_0358: {
            Label_0221: {
                Label_0096: {
                    try {
                        if (this.bCP == 3) {
                            break Label_0358;
                        }
                        if (n != -1) {
                            break Label_0221;
                        }
                        if (this.isConnecting()) {
                            final Iterator<E> iterator = (Iterator<E>)this.bCM.iterator();
                            while (iterator.hasNext()) {
                                iterator.next().cancel();
                                iterator.remove();
                            }
                            break Label_0096;
                        }
                    }
                    finally {
                        this.bCI.unlock();
                    }
                    this.bCM.clear();
                }
                final Iterator<E<?>> iterator2 = this.bDa.iterator();
                while (iterator2.hasNext()) {
                    iterator2.next().cancel();
                }
                this.bDa.clear();
                final Iterator<F<?>> iterator3 = this.bCZ.iterator();
                while (iterator3.hasNext()) {
                    iterator3.next().clear();
                }
                this.bCZ.clear();
                if (this.bCN == null && !this.bCM.isEmpty()) {
                    this.bCR = true;
                    this.bCI.unlock();
                    return;
                }
            }
            final boolean connecting = this.isConnecting();
            final boolean connected = this.isConnected();
            this.bCP = 3;
            if (connecting) {
                if (n == -1) {
                    this.bCN = null;
                }
                this.bCJ.signalAll();
            }
            this.bCY = false;
            for (final f f : this.bCW.values()) {
                if (f.isConnected()) {
                    f.disconnect();
                }
            }
            this.bCY = true;
            this.bCP = 4;
            if (connected) {
                if (n != -1) {
                    this.bCK.ez(n);
                }
                this.bCY = false;
            }
        }
        this.bCI.unlock();
    }
    
    private void xe() {
        this.bCI.lock();
        try {
            this.bCQ = 0;
            this.bCU.removeMessages(1);
        }
        finally {
            this.bCI.unlock();
        }
    }
    
    @Override
    public final a Kw() {
        Label_0084: {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                break Label_0084;
            }
            boolean b = true;
        Label_0011:
            while (true) {
                G.a(b, "blockingConnect must not be called on the UI thread");
                this.bCI.lock();
                try {
                    this.connect();
                    while (this.isConnecting()) {
                        try {
                            this.bCJ.await();
                            continue;
                        }
                        catch (InterruptedException ex) {
                            Thread.currentThread().interrupt();
                            return new a(15, null);
                        }
                        b = false;
                        continue Label_0011;
                    }
                    if (this.isConnected()) {
                        return a.bBQ;
                    }
                    if (this.bCN != null) {
                        return this.bCN;
                    }
                    return new a(13, null);
                }
                finally {
                    this.bCI.unlock();
                }
            }
        }
    }
    
    @Override
    public final <C extends f> C a(final h<C> h) {
        final f f = this.bCW.get(h);
        G.f(f, "Appropriate Api was not requested.");
        return (C)f;
    }
    
    @Override
    public final <A extends f, R extends t, T extends l<R, A>> T a(final T t) {
        this.bCI.lock();
        try {
            t.a((k<R>)new k<t>(this.bCw));
            if (this.isConnected()) {
                this.b(t);
            }
            else {
                this.bCM.add(t);
            }
            return t;
        }
        finally {
            this.bCI.unlock();
        }
    }
    
    @Override
    public final void a(final p p) {
        this.bCK.a(p);
    }
    
    @Override
    public final void a(final q q) {
        this.bCK.a(q);
    }
    
    @Override
    public final <A extends f, T extends l<? extends t, A>> T b(final T t) {
        Label_0033: {
            if (!this.isConnected() && !this.KD()) {
                break Label_0033;
            }
            boolean b = true;
            while (true) {
                G.a(b, "GoogleApiClient is not connected yet.");
                this.KC();
                try {
                    this.a((E<f>)t);
                    return t;
                    b = false;
                }
                catch (DeadObjectException ex) {
                    this.eu(1);
                    return t;
                }
            }
        }
    }
    
    @Override
    public final void b(final p p) {
        this.bCK.b(p);
    }
    
    @Override
    public final void b(final q q) {
        this.bCK.b(q);
    }
    
    @Override
    public final void connect() {
        this.bCI.lock();
        try {
            this.bCR = false;
            if (this.isConnected() || this.isConnecting()) {
                return;
            }
            this.bCY = true;
            this.bCN = null;
            this.bCP = 1;
            this.bCV.clear();
            this.bCS = this.bCW.size();
            final Iterator<f> iterator = this.bCW.values().iterator();
            while (iterator.hasNext()) {
                iterator.next().connect();
            }
        }
        finally {
            this.bCI.unlock();
        }
        this.bCI.unlock();
    }
    
    @Override
    public final void disconnect() {
        this.xe();
        this.eu(-1);
    }
    
    @Override
    public final boolean isConnected() {
        return this.bCP == 2;
    }
    
    @Override
    public final boolean isConnecting() {
        return this.bCP == 1;
    }
}
