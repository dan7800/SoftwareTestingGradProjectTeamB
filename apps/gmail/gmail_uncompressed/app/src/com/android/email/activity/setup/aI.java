package com.android.email.activity.setup;

import android.app.*;
import android.database.*;
import android.os.*;
import android.provider.*;
import android.content.*;
import android.text.*;
import android.widget.*;
import com.android.emailcommon.provider.*;
import android.view.*;
import com.android.email.activity.*;
import android.text.method.*;

final class ai implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ Context OE;
    final /* synthetic */ ah OF;
    
    ai(final ah of, final Context oe) {
        this.OF = of;
        this.OE = oe;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new CursorLoader(this.OE, ContactsContract$Profile.CONTENT_URI, new String[] { "display_name" }, (String)null, (String[])null, (String)null);
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
    }
}
