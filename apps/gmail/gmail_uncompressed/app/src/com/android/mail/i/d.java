package com.android.mail.i;

import java.util.concurrent.atomic.*;
import android.content.*;

public abstract class d
{
    private static final AtomicBoolean axO;
    
    static {
        axO = new AtomicBoolean(true);
    }
    
    public final boolean i(final Context context, final int n) {
        final boolean andSet = d.axO.getAndSet(false);
        boolean b = false;
        if (andSet) {
            this.j(context, n);
            b = true;
        }
        return b;
    }
    
    protected abstract void j(final Context p0, final int p1);
}
