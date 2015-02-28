package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.*;
import com.google.android.gms.drive.*;

public class aa implements j
{
    protected final DriveId bGk;
    
    protected aa(final DriveId bGk) {
        this.bGk = bGk;
    }
    
    @Override
    public final r<k> b(final n n) {
        return n.a((r<k>)new ab(this));
    }
}
