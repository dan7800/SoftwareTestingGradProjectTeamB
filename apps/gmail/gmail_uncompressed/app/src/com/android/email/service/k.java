package com.android.email.service;

import android.accounts.*;
import com.android.email.a.*;
import android.os.*;
import android.content.*;

final class k extends AbstractAccountAuthenticator
{
    final /* synthetic */ EasTestAuthenticatorService Uu;
    
    public k(final EasTestAuthenticatorService uu, final Context context) {
        this.Uu = uu;
        super(context);
    }
    
    public final Bundle addAccount(final AccountAuthenticatorResponse accountAuthenticatorResponse, final String s, final String s2, final String[] array, final Bundle bundle) {
        if (bundle != null && bundle.containsKey("password") && bundle.containsKey("username")) {
            AccountManager.get((Context)this.Uu).addAccountExplicitly(new Account(bundle.getString("username"), "com.android.test_exchange"), bundle.getString("password"), (Bundle)null);
            final Bundle bundle2 = new Bundle();
            bundle2.putString("authAccount", "com.android.test_exchange");
            return bundle2;
        }
        final Bundle bundle3 = new Bundle();
        final Intent n = a.n((Context)this.Uu, s);
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
