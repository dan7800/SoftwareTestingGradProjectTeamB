package com.google.android.gm.preference;

import com.google.android.gm.c.*;
import android.app.*;
import android.os.*;
import com.google.android.gms.feedback.*;
import com.google.android.gms.common.api.*;
import android.content.*;

final class k extends h
{
    final /* synthetic */ GmailPreferenceActivity bbD;
    
    k(final GmailPreferenceActivity bbD, final Activity activity, final Bundle bundle, final String s, final String s2) {
        this.bbD = bbD;
        super(activity, bundle, 1000, s, s2);
    }
    
    @Override
    public final n CA() {
        return new o(((Context)this.bbD).getApplicationContext()).a(a.bBK).c((p)this).c((q)this).Ky();
    }
}
