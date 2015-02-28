package com.google.android.gms.common.api;

import android.util.*;

public final class i
{
    static void b(final t t) {
        if (!(t instanceof s)) {
            return;
        }
        try {
            ((s)t).release();
        }
        catch (RuntimeException ex) {
            Log.w("GoogleApi", "Unable to release " + t, (Throwable)ex);
        }
    }
}
