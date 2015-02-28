package com.google.android.gm.ads;

import android.app.*;
import android.content.*;
import com.android.mail.c.*;
import com.google.android.gm.provider.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import android.view.*;
import android.os.*;
import com.android.mail.ui.*;

final class v implements LoaderManager$LoaderCallbacks<b<Advertisement>>
{
    final /* synthetic */ s aZX;
    
    private v(final s azx) {
        this.aZX = azx;
    }
    
    public final Loader<b<Advertisement>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<b<Advertisement>>)new c(this.aZX.getContext(), GmailProvider.R(this.aZX.Nc.lw(), this.aZX.aZl.bcd), Gmail.bdS, (a<Object>)Advertisement.aqh);
    }
    
    public final void onLoaderReset(final Loader<b<Advertisement>> loader) {
        this.aZX.aZl = null;
    }
}
