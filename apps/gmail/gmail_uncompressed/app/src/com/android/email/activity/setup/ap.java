package com.android.email.activity.setup;

import android.database.*;
import com.android.mail.providers.*;
import android.net.*;
import android.content.*;
import android.os.*;
import android.content.res.*;
import android.preference.*;
import android.text.*;
import java.util.*;
import android.app.*;
import android.view.*;

final class aP implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ MailboxSettings Pu;
    
    private aP(final MailboxSettings pu) {
        this.Pu = pu;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new CursorLoader((Context)this.Pu, this.Pu.Pr, E.aCv, (String)null, (String[])null, (String)null);
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
        this.Pu.Pt.clear();
    }
}
