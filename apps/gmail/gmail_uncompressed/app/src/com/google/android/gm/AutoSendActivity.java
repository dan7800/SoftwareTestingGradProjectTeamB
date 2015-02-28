package com.google.android.gm;

import com.android.mail.compose.*;
import android.os.*;
import android.content.*;

public class AutoSendActivity extends e
{
    @Override
    protected void onCreate(final Bundle bundle) {
        final Intent intent = this.getIntent();
        if (intent.getExtras() != null && intent.getExtras().containsKey("com.google.android.gm.extra.ACCOUNT")) {
            intent.putExtra("fromAccountString", intent.getStringExtra("com.google.android.gm.extra.ACCOUNT"));
        }
        super.onCreate(bundle);
    }
}
