package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.*;
import com.google.android.gms.common.*;

public final class l implements q
{
    private final e bFd;
    
    public l(final e bFd) {
        this.bFd = bFd;
    }
    
    @Override
    public final void a(final a a) {
        this.bFd.a(a);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof l) {
            return this.bFd.equals(((l)o).bFd);
        }
        return this.bFd.equals(o);
    }
}
