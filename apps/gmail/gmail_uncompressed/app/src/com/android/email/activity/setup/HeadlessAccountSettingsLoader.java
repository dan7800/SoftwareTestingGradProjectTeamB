package com.android.email.activity.setup;

import android.app.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import android.net.*;
import android.os.*;
import android.content.*;

public class HeadlessAccountSettingsLoader extends Activity
{
    public static Uri m(final long n) {
        final Uri$Builder buildUpon = Uri.parse("auth://" + EmailContent.XX + ".ACCOUNT_SETTINGS/outgoing/").buildUpon();
        k.a(buildUpon, n);
        return buildUpon.build();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final long b = k.b(intent);
        if (bundle == null) {
            new aO(this, this.getApplicationContext(), "incoming".equals(intent.getData().getLastPathSegment()), (byte)0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Long[] { b });
        }
    }
}
