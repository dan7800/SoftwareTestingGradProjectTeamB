package com.google.analytics.tracking.android;

import android.os.*;

final class s
{
    public static int version() {
        try {
            return Integer.parseInt(Build$VERSION.SDK);
        }
        catch (NumberFormatException ex) {
            Q.cW("Invalid version number: " + Build$VERSION.SDK);
            return 0;
        }
    }
}
