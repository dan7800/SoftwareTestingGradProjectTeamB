package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import android.app.*;
import android.content.*;
import android.os.*;

final class n implements LoaderManager$LoaderCallbacks<Boolean>
{
    final /* synthetic */ m MB;
    
    n(final m mb) {
        this.MB = mb;
    }
    
    public final Loader<Boolean> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Boolean>)new q(this.MB.Mq, (Account)bundle.getParcelable("account"));
    }
    
    public final void onLoaderReset(final Loader<Boolean> loader) {
    }
}
