package com.android.ex.chips;

import android.net.*;
import android.provider.*;

public final class f
{
    public static final String[] Lm;
    public static final Uri URI;
    
    static {
        URI = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "directories");
        Lm = new String[] { "_id", "accountName", "accountType", "displayName", "packageName", "typeResourceId" };
    }
}
