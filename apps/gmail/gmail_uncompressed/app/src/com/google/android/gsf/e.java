package com.google.android.gsf;

import android.os.*;
import android.net.*;
import java.util.regex.*;
import android.content.*;
import android.database.*;
import android.util.*;
import java.util.*;

final class e extends ContentObserver
{
    final /* synthetic */ d cnt;
    
    e(final d cnt, final Handler handler) {
        this.cnt = cnt;
        super(handler);
    }
    
    public final void onChange(final boolean b) {
        synchronized (c.class) {
            c.cnp.clear();
            c.cnq = new Object();
            if (c.cnr.length > 0) {
                c.b(this.cnt.cns, c.cnr);
            }
        }
    }
}
