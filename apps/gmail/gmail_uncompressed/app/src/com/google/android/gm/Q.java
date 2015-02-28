package com.google.android.gm;

import com.google.android.gm.c.*;
import android.app.*;
import android.os.*;
import com.google.android.gms.common.api.*;
import android.content.*;

final class q extends h
{
    final /* synthetic */ ComposeActivityGmail aXl;
    
    q(final ComposeActivityGmail aXl, final Activity activity, final Bundle bundle, final String s, final String s2) {
        this.aXl = aXl;
        super(activity, bundle, 65537, s, s2);
    }
    
    @Override
    public final n CA() {
        return h.a((Context)this.aXl, this);
    }
}
