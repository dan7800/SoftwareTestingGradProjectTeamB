package com.google.android.gms.internal;

import android.util.*;
import android.content.*;
import com.google.android.gms.common.api.*;
import android.app.*;
import com.google.android.gms.people.model.*;
import com.google.android.gms.people.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

final class bV extends bC
{
    final /* synthetic */ bO bWh;
    private final m<t> bWl;
    
    public bV(final bO bWh, final m<t> bWl) {
        this.bWh = bWh;
        this.bWl = bWl;
    }
    
    @Override
    public final void a(final int n, final Bundle bundle, final Bundle bundle2) {
        if (Log.isLoggable("PeopleService", 3)) {
            bZ.as("PeopleClient", "Bundle callback: status=" + n + "\nresolution=" + bundle + "\nbundle=" + bundle2);
        }
        this.bWh.b((h)new bW(this.bWl, bO.b(n, bundle)));
    }
}
