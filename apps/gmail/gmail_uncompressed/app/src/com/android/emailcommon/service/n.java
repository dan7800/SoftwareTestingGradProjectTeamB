package com.android.emailcommon.service;

import android.content.*;
import android.os.*;
import android.net.*;

public abstract class n
{
    public static void a(final ContentResolver contentResolver, final Bundle bundle, final long n, final int n2, final int n3) {
        final String string = bundle.getString("callback_uri");
        final String string2 = bundle.getString("callback_method");
        if (string != null && string2 != null) {
            final String string3 = bundle.getString("callback_arg", "");
            final Bundle bundle2 = new Bundle(4);
            bundle2.putInt("type", 0);
            bundle2.putLong("id", n);
            bundle2.putInt("status_code", n2);
            if (n2 != 1) {
                bundle2.putInt("result", n3);
            }
            bundle2.putInt("progress", 0);
            contentResolver.call(Uri.parse(string), string2, string3, bundle2);
        }
    }
}
