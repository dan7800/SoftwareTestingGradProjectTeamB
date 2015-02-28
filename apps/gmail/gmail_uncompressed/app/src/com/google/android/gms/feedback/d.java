package com.google.android.gms.feedback;

import com.google.android.gms.internal.*;
import com.google.android.gms.common.api.*;

abstract class d extends l<Status, aq>
{
    private static final Status bKi;
    
    static {
        bKi = new Status(13);
    }
    
    public d() {
        super(a.bBI);
    }
    
    public final void cg(final boolean b) {
        if (b) {
            this.c((R)Status.bCB);
            return;
        }
        this.c((R)d.bKi);
    }
}
