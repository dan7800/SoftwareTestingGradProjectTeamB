package com.android.emailcommon.provider;

import android.net.*;

public final class o extends m
{
    public static Uri CONTENT_URI;
    
    public static void lT() {
        o.CONTENT_URI = EmailContent.CONTENT_URI.buildUpon().appendEncodedPath("messageChange").build();
    }
}
