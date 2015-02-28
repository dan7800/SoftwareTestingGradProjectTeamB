package com.google.android.gm.welcome;

import android.os.*;
import android.widget.*;
import com.google.android.gms.people.*;
import com.google.android.gms.common.api.*;
import android.provider.*;
import com.google.common.collect.*;
import android.database.*;
import com.google.android.gm.c.*;
import java.util.*;
import com.google.android.gm.*;
import android.app.*;
import com.android.mail.utils.*;
import android.view.*;
import android.content.*;

final class k extends h
{
    final /* synthetic */ SetupAddressesFragment bsi;
    
    k(final SetupAddressesFragment bsi, final Activity activity, final Bundle bundle, final String s, final String s2) {
        this.bsi = bsi;
        super(activity, bundle, 2, s, s2);
    }
    
    @Override
    public final n CA() {
        return h.a((Context)this.bsi.getActivity(), this);
    }
    
    @Override
    public final void r(final Bundle bundle) {
        super.r(bundle);
        this.bsi.IS();
    }
}
