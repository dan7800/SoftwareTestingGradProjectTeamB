package com.google.android.gm.browse;

import android.app.*;
import android.os.*;
import android.content.*;

final class k implements LoaderManager$LoaderCallbacks<Intent>
{
    final /* synthetic */ TrampolineActivity bag;
    
    private k(final TrampolineActivity bag) {
        this.bag = bag;
    }
    
    public final Loader<Intent> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Intent>)new l((Context)this.bag, bundle.getString("plid"), bundle.getString("account-name"));
    }
    
    public final void onLoaderReset(final Loader<Intent> loader) {
    }
}
