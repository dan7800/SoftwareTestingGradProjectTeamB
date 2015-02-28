package com.android.emailcommon.provider;

import android.net.*;

public final class n extends m
{
    public static Uri CONTENT_URI;
    private static final String ZK;
    
    static {
        ZK = "messageKey=? and status!=" + n.ZJ;
    }
    
    public static void lT() {
        n.CONTENT_URI = EmailContent.CONTENT_URI.buildUpon().appendEncodedPath("messageMove").build();
    }
}
