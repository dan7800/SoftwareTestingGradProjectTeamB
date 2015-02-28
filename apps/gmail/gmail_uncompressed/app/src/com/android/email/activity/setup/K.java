package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;

final class k implements LoaderManager$LoaderCallbacks<Account>
{
    final /* synthetic */ c Mr;
    
    private k(final c mr) {
        this.Mr = mr;
    }
    
    public final Loader<Account> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Account>)new l(this, this.Mr.Mq, (Account)bundle.getParcelable("account"));
    }
    
    public final void onLoaderReset(final Loader<Account> loader) {
    }
}
