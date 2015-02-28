package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

public final class a extends H implements r
{
    private Object aak;
    private r aal;
    private final boolean aam;
    
    public a(final Context context, final Intent intent) {
        super(context, intent);
        this.aak = null;
        while (true) {
            try {
                com.android.emailcommon.a.T(context);
                e.V(context);
                this.aam = true;
            }
            catch (IOException ex) {
                continue;
            }
            break;
        }
    }
    
    public a(final Context context, final Class<?> clazz) {
        super(context, new Intent(context, (Class)clazz));
        this.aak = null;
        e.V(context);
        this.aam = false;
    }
    
    @Override
    public final void B(final long n) {
        this.a(new h(this, n), "updateFolderList");
    }
    
    @Override
    public final void C(final long n) {
        this.a(new c(this, n), "pushModify");
    }
    
    @Override
    public final void D(final long n) {
        this.a(new m(this, n), "sendMail");
    }
    
    @Override
    public final void R(final String s) {
        this.a(new k(this, s), "deleteAccountPIMData");
        this.ma();
    }
    
    @Override
    public final int a(final long n, final Bundle bundle) {
        this.a(new d(this, n, bundle), "sync");
        this.ma();
        if (this.aak == null) {
            return 35;
        }
        return (int)this.aak;
    }
    
    @Override
    public final int a(final long n, final SearchParams searchParams, final long n2) {
        this.a(new l(this, n, searchParams, n2), "searchMessages");
        this.ma();
        if (this.aak == null) {
            return 0;
        }
        return (int)this.aak;
    }
    
    @Override
    public final Bundle a(final HostAuthCompat hostAuthCompat) {
        this.a(new f(this, hostAuthCompat), "validate");
        this.ma();
        if (this.aak == null) {
            final Bundle bundle = new Bundle();
            bundle.putInt("validate_result_code", 0);
            return bundle;
        }
        final Bundle bundle2 = (Bundle)this.aak;
        bundle2.setClassLoader(Policy.class.getClassLoader());
        E.b("EmailServiceProxy", "validate returns " + bundle2.getInt("validate_result_code"), new Object[0]);
        return bundle2;
    }
    
    @Override
    public final void a(final u u, final long n, final long n2, final boolean b) {
        this.a(new b(this, u, n, n2, b), "loadAttachment");
    }
    
    public final IBinder asBinder() {
        return null;
    }
    
    @Override
    public final void b(final IBinder binder) {
        this.aal = s.c(binder);
    }
    
    @Override
    public final void bd(final int n) {
        this.a(new i(this, n), "setLogging");
    }
    
    @Override
    public final void e(final long n, final int n2) {
        this.a(new j(this, n, n2), "sendMeetingResponse");
    }
    
    @Override
    public final int kE() {
        this.a(new com.android.emailcommon.service.e(this), "getApiVersion");
        this.ma();
        if (this.aak == null) {
            E.g("EmailServiceProxy", "failed to get api version", new Object[0]);
            return -1;
        }
        return (int)this.aak;
    }
    
    @Override
    public final Bundle q(final String s, final String s2) {
        this.a(new g(this, s, s2), "autoDiscover");
        this.ma();
        if (this.aak == null) {
            return null;
        }
        final Bundle bundle = (Bundle)this.aak;
        bundle.setClassLoader(HostAuth.class.getClassLoader());
        E.b("EmailServiceProxy", "autoDiscover returns " + bundle.getInt("autodiscover_error_code"), new Object[0]);
        return bundle;
    }
}
