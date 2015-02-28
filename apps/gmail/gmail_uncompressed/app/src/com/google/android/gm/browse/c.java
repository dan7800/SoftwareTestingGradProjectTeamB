package com.google.android.gm.browse;

import android.content.*;
import android.app.*;
import com.android.mail.ui.*;
import android.os.*;
import com.android.mail.utils.*;
import android.support.v7.app.*;
import android.webkit.*;
import android.view.*;

final class c implements LoaderManager$LoaderCallbacks<String>
{
    final /* synthetic */ a baa;
    
    private c(final a baa) {
        this.baa = baa;
    }
    
    public final Loader<String> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return (Loader<String>)new d((Context)this.baa.getActivity(), this.baa.Tz, this.baa.azJ, this.baa.YQ);
            }
        }
    }
    
    public final void onLoaderReset(final Loader<String> loader) {
    }
}
