package com.android.emailcommon.provider;

import android.net.*;

public abstract class q extends EmailContent implements i
{
    public static Uri CONTENT_URI;
    public static Uri aaj;
    
    public static void lX() {
        q.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/quickresponse");
        q.aaj = Uri.parse(EmailContent.CONTENT_URI + "/quickresponse/account");
    }
}
