package com.google.android.gms.internal;

import com.google.android.gms.e.*;
import android.os.*;
import android.content.*;
import android.app.*;
import com.google.android.gms.common.api.*;

final class br extends bh
{
    private final m<d> bHW;
    
    public br(final m<d> bhw) {
        this.bHW = bhw;
    }
    
    public final void a(final int n, final Bundle bundle, final int n2, final Intent intent) {
        PendingIntent pendingIntent;
        if (bundle != null) {
            pendingIntent = (PendingIntent)bundle.getParcelable("pendingIntent");
        }
        else {
            pendingIntent = null;
        }
        this.bHW.Y(new bu(new Status(n, null, pendingIntent), intent));
    }
}
