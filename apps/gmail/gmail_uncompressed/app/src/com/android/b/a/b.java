package com.android.b.a;

import android.net.*;
import android.provider.*;

public final class b
{
    static final Uri FEEDBACK_URI;
    
    static {
        FEEDBACK_URI = Uri.withAppendedPath(ContactsContract$Data.CONTENT_URI, "usagefeedback");
    }
}
