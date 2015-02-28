package com.android.email.activity.setup;

import android.content.*;
import com.android.email.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import android.net.*;
import android.app.*;
import android.text.*;

final class t implements LoaderManager$LoaderCallbacks<Account>
{
    final /* synthetic */ AccountSecurity MO;
    
    private t(final AccountSecurity mo) {
        this.MO = mo;
    }
    
    public final Loader<Account> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Account>)new s(this.MO.getApplicationContext(), bundle.getLong("ACCOUNT_ID", -1L), bundle.getBoolean("SHOW_DIALOG", false), bundle.getBoolean("EXPIRING", false), bundle.getBoolean("EXPIRED", false));
    }
    
    public final void onLoaderReset(final Loader<Account> loader) {
    }
}
