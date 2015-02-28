package com.google.android.gm.provider;

import android.database.*;
import android.os.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.utils.*;
import android.content.*;
import java.util.*;
import com.google.common.collect.*;

final class q implements Runnable
{
    final /* synthetic */ o bdk;
    final /* synthetic */ List bdl;
    final /* synthetic */ Map bdm;
    
    q(final o bdk, final List bdl, final Map bdm) {
        this.bdk = bdk;
        this.bdl = bdl;
        this.bdm = bdm;
    }
    
    @Override
    public final void run() {
        o.a(this.bdk, this.bdl, this.bdm);
    }
}
