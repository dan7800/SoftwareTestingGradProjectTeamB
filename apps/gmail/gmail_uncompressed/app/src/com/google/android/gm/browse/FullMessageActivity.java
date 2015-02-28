package com.google.android.gm.browse;

import com.android.mail.ui.*;
import com.google.android.gm.*;
import android.os.*;
import android.content.*;
import android.app.*;

public class FullMessageActivity extends P
{
    @Override
    protected final void ck(final String s) {
        ay.a(this, this.oN(), this.getString(2131297015));
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            final Intent intent = this.getIntent();
            final String stringExtra = intent.getStringExtra("permalink");
            final String stringExtra2 = intent.getStringExtra("account-name");
            final String stringExtra3 = intent.getStringExtra("server-message-id");
            final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
            beginTransaction.add(2131558549, (Fragment)a.d(stringExtra, stringExtra2, stringExtra3), "full_message_fragment");
            beginTransaction.commit();
        }
    }
}
