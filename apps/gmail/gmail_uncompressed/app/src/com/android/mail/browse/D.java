package com.android.mail.browse;

import android.net.*;
import android.content.*;

final class d extends AsyncQueryHandler
{
    public d(final Context context) {
        super(context.getContentResolver());
    }
    
    public final void b(final Uri uri, final ContentValues contentValues) {
        this.startUpdate(0, (Object)null, uri, contentValues, (String)null, (String[])null);
    }
}
