package com.google.android.gms.identity.accounts.api;

import com.google.android.gms.common.internal.*;
import android.content.*;

public final class d
{
    private final e bQY;
    
    public d(final e bqy) {
        G.f(bqy, "Callbacks must not be null.");
        this.bQY = bqy;
    }
    
    public static boolean e(final Context context, final Intent intent) {
        G.f(context, "Context must not be null.");
        G.f(intent, "Intent must not be null.");
        return intent.hasExtra("com.google.android.gms.accounts.ACCOUNT_DATA");
    }
}
