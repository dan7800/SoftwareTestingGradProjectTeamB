package com.google.android.gm;

import com.google.android.gms.common.*;
import com.google.android.gm.c.*;
import com.google.android.gm.ui.*;
import com.google.android.gms.b.*;
import android.widget.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import com.google.android.gm.drive.*;
import com.google.common.collect.*;
import android.app.*;
import com.google.android.gms.drive.*;
import com.google.android.gm.provider.*;
import android.os.*;
import com.google.android.gm.welcome.*;
import com.android.mail.compose.*;
import android.text.*;
import android.content.*;
import com.android.mail.a.*;
import com.google.android.gms.common.api.*;
import java.util.*;
import com.android.ex.chips.*;
import android.view.*;

final class r extends h
{
    final /* synthetic */ ComposeActivityGmail aXl;
    
    r(final ComposeActivityGmail aXl, final Activity activity, final Bundle bundle, final String s, final String s2) {
        this.aXl = aXl;
        super(activity, bundle, 65538, s, s2);
    }
    
    @Override
    public final n CA() {
        return null;
    }
    
    @Override
    public final void CB() {
        super.CB();
        c.os().bb("drive-client");
    }
    
    @Override
    public final void CC() {
        super.CC();
        c.os().bc("drive-client");
    }
    
    @Override
    public final void a(final a a) {
        super.a(a);
        c.os().a("drive-client", true, "drive_client", "failed");
        com.android.mail.a.a.oq().a("drive_client", "failed", String.valueOf(a.getErrorCode()), 0L);
    }
    
    @Override
    public final void dz(final int n) {
        super.dz(n);
        c.os().a("drive-client", false, "drive_client", "suspended");
    }
    
    @Override
    public final void r(final Bundle bundle) {
        super.r(bundle);
        c.os().a("drive-client", true, "drive_client", "connected");
        if (this.aXl.aXi != null) {
            this.aXl.aXi.setEnabled(true);
            this.aXl.D();
        }
    }
}
