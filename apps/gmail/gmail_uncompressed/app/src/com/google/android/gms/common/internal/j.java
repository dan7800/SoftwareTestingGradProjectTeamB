package com.google.android.gms.common.internal;

import android.os.*;

public final class j extends z
{
    private f bFc;
    
    public j(final f bFc) {
        this.bFc = bFc;
    }
    
    public final void b(final int n, final IBinder binder, final Bundle bundle) {
        G.f("onPostInitComplete can be called only once per call to getServiceFromBroker", (Object)this.bFc);
        this.bFc.a(n, binder, bundle);
        this.bFc = null;
    }
}
