package com.android.mail.utils;

import android.net.*;
import android.content.*;
import com.google.common.collect.*;

public class g extends e
{
    public final void b(final ContentResolver contentResolver, final Uri uri, final ContentValues contentValues) {
        super.a(contentResolver, uri.getAuthority(), Lists.n(ContentProviderOperation.newUpdate(uri).withValues(contentValues).withSelection((String)null, (String[])null).build()));
    }
}
