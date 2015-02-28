package com.google.android.gms.common.internal;

import android.util.*;

public final class u
{
    private final String bFz;
    
    public u(final String s) {
        this.bFz = G.ae(s);
    }
    
    public final void ak(final String s, final String s2) {
        if (Log.isLoggable(this.bFz, 5)) {
            Log.w(s, s2);
        }
    }
}
