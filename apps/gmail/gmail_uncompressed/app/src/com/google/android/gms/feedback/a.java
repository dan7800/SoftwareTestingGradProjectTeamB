package com.google.android.gms.feedback;

import com.google.android.gms.internal.*;
import com.google.android.gms.common.api.*;

public final class a
{
    private static final h<aq> bBI;
    private static final g bBJ;
    public static final com.google.android.gms.common.api.a bBK;
    
    static {
        bBI = new h<aq>();
        bBJ = new b();
        bBK = new com.google.android.gms.common.api.a(a.bBJ, (h<C>)a.bBI, new v[0]);
    }
    
    public static r<Status> a(final n n, final e e) {
        return n.a((r<Status>)new c(e));
    }
}
