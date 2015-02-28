package com.google.android.gms.common.api;

import java.util.*;

public final class a<O extends b>
{
    private final g<?, O> bCa;
    private final h<?> bCb;
    private final ArrayList<v> bCc;
    
    public a(final g<C, O> bCa, final h<C> bCb, final v... array) {
        this.bCa = bCa;
        this.bCb = bCb;
        this.bCc = new ArrayList<v>(Arrays.asList(array));
    }
    
    public final g<?, O> Ko() {
        return this.bCa;
    }
    
    public final List<v> Kp() {
        return this.bCc;
    }
    
    public final h<?> Kq() {
        return this.bCb;
    }
}
