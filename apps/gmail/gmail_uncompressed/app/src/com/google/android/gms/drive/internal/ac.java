package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.*;
import com.google.android.gms.common.api.*;

final class ac extends J
{
    private final m<k> bHW;
    
    public ac(final m<k> bhw) {
        this.bHW = bhw;
    }
    
    @Override
    public final void a(final OnMetadataResponse onMetadataResponse) {
        this.bHW.Y(new ad(Status.bCB, new R(onMetadataResponse.LZ())));
    }
    
    @Override
    public final void c(final Status status) {
        this.bHW.Y(new ad(status, null));
    }
}
