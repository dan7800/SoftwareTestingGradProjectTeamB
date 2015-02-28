package com.android.mail.providers;

import android.os.*;
import android.content.*;
import android.net.*;
import com.android.mail.c.*;
import com.android.mail.ui.*;
import com.google.common.collect.*;
import java.util.*;
import android.app.*;

final class r implements LoaderManager$LoaderCallbacks<b<Folder>>
{
    final /* synthetic */ p aAS;
    private final String[] projection;
    
    private r(final p aas) {
        this.aAS = aas;
        this.projection = E.aCv;
    }
    
    public final Loader<b<Folder>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<b<Folder>>)new c(this.aAS.aAP.xg(), Uri.parse(bundle.getString("FOLDER-URI")), this.projection, (a<Object>)Folder.aqh);
    }
    
    public final void onLoaderReset(final Loader<b<Folder>> loader) {
    }
}
