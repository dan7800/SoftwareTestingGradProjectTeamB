package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.*;
import com.google.android.gms.common.*;
import android.os.*;

public final class i implements p
{
    private final d bFb;
    
    public i(final d bFb) {
        this.bFb = bFb;
    }
    
    @Override
    public final void dz(final int n) {
        this.bFb.onDisconnected();
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof i) {
            return this.bFb.equals(((i)o).bFb);
        }
        return this.bFb.equals(o);
    }
    
    @Override
    public final void r(final Bundle bundle) {
        this.bFb.Jf();
    }
}
