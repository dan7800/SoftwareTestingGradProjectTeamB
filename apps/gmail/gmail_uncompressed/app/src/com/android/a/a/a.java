package com.android.a.a;

import android.os.*;

public abstract class a
{
    public static void beginSection(final String s) {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.beginSection(s);
        }
    }
    
    public static void endSection() {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
