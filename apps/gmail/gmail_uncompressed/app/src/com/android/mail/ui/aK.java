package com.android.mail.ui;

import android.os.*;
import android.net.*;
import android.content.*;

public final class ak extends AsyncTask<Void, Void, Void>
{
    private final Uri aAA;
    private final Context mContext;
    
    public ak(final Context mContext, final Uri aaa) {
        this.mContext = mContext;
        this.aAA = aaa;
    }
}
