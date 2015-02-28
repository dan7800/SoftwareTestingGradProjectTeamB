package com.google.android.gm.provider;

import java.util.*;

public final class v
{
    final Set<Long> bdx;
    final Set<Long> bdy;
    
    public v() {
        this.bdx = new HashSet<Long>();
        this.bdy = new HashSet<Long>();
    }
    
    public final boolean a(final boolean b, final Long n) {
        if (b) {
            return this.bdx.add(n);
        }
        return this.bdy.add(n);
    }
}
