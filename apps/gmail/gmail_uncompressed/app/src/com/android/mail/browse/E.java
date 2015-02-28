package com.android.mail.browse;

import android.content.*;
import android.net.*;
import com.android.mail.providers.*;
import android.database.*;

public final class e extends CursorLoader
{
    public e(final Context context, final Uri uri) {
        super(context, uri, E.aCz, (String)null, (String[])null, (String)null);
    }
    
    public final Cursor loadInBackground() {
        return (Cursor)new f(super.loadInBackground(), (byte)0);
    }
}
