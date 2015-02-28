package com.android.email.activity.setup;

import android.view.*;
import android.content.*;
import com.android.email.activity.*;
import com.android.emailcommon.provider.*;
import android.app.*;
import android.view.inputmethod.*;
import android.os.*;

final class y implements LoaderManager$LoaderCallbacks<Boolean>
{
    final /* synthetic */ x MX;
    
    y(final x mx) {
        this.MX = mx;
    }
    
    public final Loader<Boolean> onCreateLoader(final int n, final Bundle bundle) {
        return this.MX.hB();
    }
    
    public final void onLoaderReset(final Loader<Boolean> loader) {
    }
}
