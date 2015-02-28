package com.android.mail.ui;

import android.os.*;
import com.android.mail.c.*;
import com.android.mail.providers.*;
import android.app.*;
import android.content.*;
import android.text.*;
import android.text.style.*;
import android.content.res.*;
import com.android.mail.browse.*;
import android.view.*;

final class bn implements LoaderManager$LoaderCallbacks<b<Folder>>
{
    final /* synthetic */ bl aIR;
    
    bn(final bl air) {
        this.aIR = air;
    }
    
    public final Loader<b<Folder>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<b<Folder>>)new c(this.aIR.getContext(), this.aIR.Nc.ayh, E.aCv, (a<Object>)Folder.aqh);
    }
    
    public final void onLoaderReset(final Loader<b<Folder>> loader) {
    }
}
