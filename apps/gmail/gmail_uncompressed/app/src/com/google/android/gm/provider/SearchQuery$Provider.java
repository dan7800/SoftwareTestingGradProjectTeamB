package com.google.android.gm.provider;

import com.google.android.gms.appdatasearch.*;
import android.net.*;
import android.database.*;
import android.os.*;

public final class SearchQuery$Provider extends d
{
    @Override
    public final String HM() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final Cursor a(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        final long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.getContext().getContentResolver().query(uri.buildUpon().authority("gmail-ls").build(), array, s, array2, s2);
        }
        finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
