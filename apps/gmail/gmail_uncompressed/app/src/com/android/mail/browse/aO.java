package com.android.mail.browse;

import android.database.*;
import android.content.*;
import android.support.v7.app.*;
import com.android.emailcommon.mail.*;
import android.net.*;
import java.util.*;
import android.os.*;
import android.widget.*;
import com.android.mail.utils.*;
import android.view.*;
import com.android.mail.ui.*;
import android.app.*;
import com.android.mail.*;

final class ao implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ am arI;
    
    private ao(final am arI) {
        this.arI = arI;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 2: {
                return (Loader<Cursor>)new CursorLoader((Context)this.arI.getActivity(), this.arI.arB, new String[] { "_display_name", "_size" }, (String)null, (String[])null, (String)null);
            }
        }
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
    }
}
