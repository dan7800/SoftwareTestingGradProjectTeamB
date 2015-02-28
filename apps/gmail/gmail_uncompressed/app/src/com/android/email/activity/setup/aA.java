package com.android.email.activity.setup;

import android.database.*;
import android.provider.*;
import com.android.emailcommon.*;
import java.util.*;
import android.view.inputmethod.*;
import android.text.*;
import android.accounts.*;
import com.android.emailcommon.provider.*;
import com.android.mail.utils.*;
import java.net.*;
import com.android.email.service.*;
import android.widget.*;
import android.content.*;
import android.app.*;
import java.io.*;
import android.os.*;
import com.android.mail.a.*;

final class aa implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ AccountSetupFinal Oj;
    
    private aa(final AccountSetupFinal oj) {
        this.Oj = oj;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new CursorLoader((Context)this.Oj, ContactsContract$Profile.CONTENT_URI, new String[] { "display_name" }, (String)null, (String[])null, (String)null);
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
    }
}
