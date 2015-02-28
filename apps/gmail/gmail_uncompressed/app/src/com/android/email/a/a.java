package com.android.email.a;

import android.content.*;

public final class a
{
    public static Intent n(final Context context, final String s) {
        final Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, "com.android.email.activity.setup.AccountSetupFinal"));
        intent.putExtra("FLOW_MODE", 1);
        intent.putExtra("FLOW_ACCOUNT_TYPE", s);
        return intent;
    }
}
