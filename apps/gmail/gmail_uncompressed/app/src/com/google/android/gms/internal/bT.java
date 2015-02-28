package com.google.android.gms.internal;

import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class bt extends f<bj>
{
    public bt(final Context context, final Looper looper, final com.google.android.gms.common.api.p p4, final q q) {
        super(context, looper, p4, q, (String[])null);
    }
    
    @Override
    protected final String La() {
        return "com.google.android.gms.panorama.service.START";
    }
    
    @Override
    protected final String Lb() {
        return "com.google.android.gms.panorama.internal.IPanoramaService";
    }
    
    @Override
    protected final void a(final B b, final j j) {
        b.a(j, 6174000, this.getContext().getPackageName(), new Bundle());
    }
}
