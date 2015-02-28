package com.android.mail.ui.settings;

import android.database.*;
import android.os.*;
import android.content.*;
import java.lang.ref.*;
import java.util.*;
import android.preference.*;
import com.android.mail.providers.*;
import android.text.*;
import android.app.*;

final class e implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ d aOU;
    
    private e(final d aou) {
        this.aOU = aou;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new CursorLoader((Context)this.aOU, t.vh(), E.aCr, (String)null, (String[])null, (String)null);
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
        this.aOU.aOT = null;
        this.aOU.invalidateHeaders();
    }
}
