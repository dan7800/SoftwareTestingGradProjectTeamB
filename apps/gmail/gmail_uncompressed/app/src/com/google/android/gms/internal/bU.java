package com.google.android.gms.internal;

import com.google.android.gms.e.*;
import com.google.android.gms.common.api.*;
import android.content.*;
import com.google.android.gms.common.internal.*;

final class bu implements d
{
    private final Status bHX;
    private final Intent bVP;
    
    public bu(final Status status, final Intent bvp) {
        this.bHX = G.ae(status);
        this.bVP = bvp;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    @Override
    public final Intent RQ() {
        return this.bVP;
    }
}
