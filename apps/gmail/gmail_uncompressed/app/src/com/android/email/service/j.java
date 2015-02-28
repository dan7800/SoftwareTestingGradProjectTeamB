package com.android.email.service;

import android.accounts.*;
import com.android.emailcommon.provider.*;
import com.android.email.a.*;
import android.os.*;
import android.content.*;

final class j extends AbstractAccountAuthenticator
{
    final /* synthetic */ i Ut;
    
    public j(final i ut, final Context context) {
        this.Ut = ut;
        super(context);
    }
    
    public final Bundle addAccount(final AccountAuthenticatorResponse accountAuthenticatorResponse, final String s, final String s2, final String[] array, final Bundle bundle) {
        final o l = n.l((Context)this.Ut, n.m((Context)this.Ut, s));
        if (bundle != null && bundle.containsKey("password") && bundle.containsKey("username")) {
            final Account account = new Account(bundle.getString("username"), s);
            AccountManager.get((Context)this.Ut).addAccountExplicitly(account, bundle.getString("password"), (Bundle)null);
            if (l != null && l.US) {
                final boolean boolean1 = bundle.getBoolean("contacts", false);
                ContentResolver.setIsSyncable(account, "com.android.contacts", 1);
                ContentResolver.setSyncAutomatically(account, "com.android.contacts", boolean1);
            }
            if (l != null && l.UT) {
                final boolean boolean2 = bundle.getBoolean("calendar", false);
                ContentResolver.setIsSyncable(account, "com.android.calendar", 1);
                ContentResolver.setSyncAutomatically(account, "com.android.calendar", boolean2);
            }
            final boolean containsKey = bundle.containsKey("email");
            boolean b = false;
            if (containsKey) {
                final boolean boolean3 = bundle.getBoolean("email");
                b = false;
                if (boolean3) {
                    b = true;
                }
            }
            ContentResolver.setIsSyncable(account, EmailContent.AUTHORITY, 1);
            ContentResolver.setSyncAutomatically(account, EmailContent.AUTHORITY, b);
            final Bundle bundle2 = new Bundle();
            bundle2.putString("authAccount", bundle.getString("username"));
            bundle2.putString("accountType", s);
            return bundle2;
        }
        final Bundle bundle3 = new Bundle();
        final Intent n = a.n((Context)this.Ut, s);
        n.putExtra("accountAuthenticatorResponse", (Parcelable)accountAuthenticatorResponse);
        bundle3.putParcelable("intent", (Parcelable)n);
        return bundle3;
    }
    
    public final Bundle confirmCredentials(final AccountAuthenticatorResponse accountAuthenticatorResponse, final Account account, final Bundle bundle) {
        return null;
    }
    
    public final Bundle editProperties(final AccountAuthenticatorResponse accountAuthenticatorResponse, final String s) {
        return null;
    }
    
    public final Bundle getAuthToken(final AccountAuthenticatorResponse accountAuthenticatorResponse, final Account account, final String s, final Bundle bundle) {
        return null;
    }
    
    public final String getAuthTokenLabel(final String s) {
        return null;
    }
    
    public final Bundle hasFeatures(final AccountAuthenticatorResponse accountAuthenticatorResponse, final Account account, final String[] array) {
        return null;
    }
    
    public final Bundle updateCredentials(final AccountAuthenticatorResponse accountAuthenticatorResponse, final Account account, final String s, final Bundle bundle) {
        return null;
    }
}
