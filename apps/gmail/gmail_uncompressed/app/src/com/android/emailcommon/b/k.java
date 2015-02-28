package com.android.emailcommon.b;

import android.content.*;
import android.net.*;
import android.text.*;

public final class k
{
    public static void a(final Uri$Builder uri$Builder, final long n) {
        if (n != -1L) {
            uri$Builder.appendQueryParameter("ACCOUNT_ID", Long.toString(n));
        }
    }
    
    public static long b(final Intent intent) {
        long c = -1L;
        if (intent.getData() != null) {
            c = c(intent.getData(), "ACCOUNT_ID");
        }
        return c;
    }
    
    private static long c(final Uri uri, final String s) {
        final String queryParameter = uri.getQueryParameter(s);
        if (!TextUtils.isEmpty((CharSequence)queryParameter)) {
            try {
                return Long.parseLong(queryParameter);
            }
            catch (NumberFormatException ex) {}
        }
        return -1L;
    }
}
