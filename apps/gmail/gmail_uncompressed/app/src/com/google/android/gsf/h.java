package com.google.android.gsf;

import android.provider.*;
import android.net.*;

public final class h implements BaseColumns
{
    public static final Uri CONTENT_URI;
    public static final Uri DELETED_CONTENT_URI;
    
    static {
        CONTENT_URI = Uri.parse("content://subscribedfeeds/feeds");
        DELETED_CONTENT_URI = Uri.parse("content://subscribedfeeds/deleted_feeds");
    }
}
