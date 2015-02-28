package com.android.mail.providers;

import android.os.*;
import org.json.*;
import android.database.*;

public class c
{
    public static Account a(final Parcel parcel, final ClassLoader classLoader) {
        return new Account(parcel, classLoader);
    }
    
    public static Account d(final JSONObject jsonObject) {
        return new Account(jsonObject);
    }
    
    public static Account j(final Cursor cursor) {
        return new Account(cursor);
    }
}
