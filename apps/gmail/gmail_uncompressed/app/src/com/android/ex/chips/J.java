package com.android.ex.chips;

import android.support.v4.f.*;
import android.net.*;
import android.content.*;
import android.os.*;

public final class j implements q
{
    private final g<Uri, byte[]> acO;
    private final ContentResolver mContentResolver;
    
    public j(final ContentResolver mContentResolver) {
        this.mContentResolver = mContentResolver;
        this.acO = new g<Uri, byte[]>(20);
    }
    
    @Override
    public final void b(final ae ae, final r r) {
        final Uri nb = ae.nb();
        if (nb != null) {
            final byte[] array = this.acO.get(nb);
            if (array == null) {
                new k(this, nb, ae, r).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, (Object[])new Void[0]);
                return;
            }
            ae.b(array);
            if (r != null) {
                r.ms();
            }
        }
        else if (r != null) {
            r.mu();
        }
    }
}
