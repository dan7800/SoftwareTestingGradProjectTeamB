package com.google.android.gm.a;

import android.net.*;

public final class a
{
    public static final String[] bai;
    
    static {
        bai = new String[] { "_id", "labelUri", "canonicalName", "name", "numConversations", "numUnreadConversations", "text_color", "background_color" };
    }
    
    public static Uri f(final String s, final long n) {
        return Uri.parse("content://com.google.android.gm/" + s + "/label/").buildUpon().appendPath(Long.toString(n)).build();
    }
}
