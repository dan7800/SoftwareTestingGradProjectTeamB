package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;

final class g implements LoaderManager$LoaderCallbacks<Boolean>
{
    final /* synthetic */ c Mr;
    
    public g(final c mr) {
        this.Mr = mr;
    }
    
    public final Loader<Boolean> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Boolean>)new h(this, this.Mr.Mq, (Account)bundle.getParcelable("account"), bundle.getBoolean("email"), bundle.getBoolean("calendar"), bundle.getBoolean("contacts"), bundle.getBoolean("notifications"));
    }
    
    public final void onLoaderReset(final Loader<Boolean> loader) {
    }
}
