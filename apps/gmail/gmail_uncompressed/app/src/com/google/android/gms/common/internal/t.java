package com.google.android.gms.common.internal;

import android.net.*;
import android.content.*;

public final class t
{
    private static final Uri bFx;
    private static final Uri bFy;
    
    static {
        bFy = (bFx = Uri.parse("http://plus.google.com/")).buildUpon().appendPath("circles").appendPath("find").build();
    }
    
    public static Intent Lm() {
        final Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
    
    public static Intent fV(final String s) {
        final Uri fromParts = Uri.fromParts("package", s, (String)null);
        final Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }
    
    public static Intent fW(final String s) {
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details").buildUpon().appendQueryParameter("id", s).build());
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }
}
