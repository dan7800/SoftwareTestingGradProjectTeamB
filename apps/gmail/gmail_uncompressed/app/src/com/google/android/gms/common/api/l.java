package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.*;
import android.app.*;
import android.os.*;

public abstract class l<R extends t, A extends f> extends j<R> implements E<A>
{
    private final h<A> bCb;
    private C bCn;
    
    protected l(final h<A> h) {
        this.bCb = G.ae(h);
    }
    
    private void a(final RemoteException ex) {
        this.b(new Status(8, ex.getLocalizedMessage(), null));
    }
    
    @Override
    public final h<A> Kq() {
        return this.bCb;
    }
    
    @Override
    protected final void Kt() {
        super.Kt();
        if (this.bCn != null) {
            this.bCn.b(this);
            this.bCn = null;
        }
    }
    
    @Override
    public final void a(final C bCn) {
        this.bCn = bCn;
    }
    
    @Override
    public final void a(final A a) {
        if (this.bCe == null) {
            this.a(new k<R>(a.getLooper()));
        }
        try {
            this.b(a);
        }
        catch (DeadObjectException ex) {
            this.a((RemoteException)ex);
            throw ex;
        }
        catch (RemoteException ex2) {
            this.a(ex2);
        }
    }
    
    @Override
    public final void b(final Status status) {
        G.b(!status.Kk(), "Failed result must not be success");
        this.c(this.a(status));
    }
    
    protected abstract void b(final A p0);
}
