package com.google.android.gsf;

import android.content.*;
import android.os.*;
import android.database.*;

final class d extends Thread
{
    final /* synthetic */ ContentResolver cns;
    
    d(final String s, final ContentResolver cns) {
        this.cns = cns;
        super(s);
    }
    
    @Override
    public final void run() {
        Looper.prepare();
        this.cns.registerContentObserver(c.CONTENT_URI, true, (ContentObserver)new e(this, new Handler(Looper.myLooper())));
        Looper.loop();
    }
}
