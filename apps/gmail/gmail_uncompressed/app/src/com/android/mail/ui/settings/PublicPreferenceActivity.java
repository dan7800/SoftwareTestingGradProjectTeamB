package com.android.mail.ui.settings;

import android.app.*;
import android.os.*;
import android.text.*;
import android.content.*;
import android.net.*;
import java.util.*;

public class PublicPreferenceActivity extends Activity
{
    public static Class<? extends d> aOV;
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        intent.removeExtra(":android:show_fragment");
        intent.removeExtra(":android:show_fragment_args");
        intent.removeExtra(":android:show_fragment_short_title");
        intent.removeExtra(":android:show_fragment_title");
        final Uri data = intent.getData();
        if (data != null && data.getQueryParameter("preference_fragment_id") != null) {
            final Set queryParameterNames = data.getQueryParameterNames();
            final Uri$Builder clearQuery = data.buildUpon().clearQuery();
            for (final String s : queryParameterNames) {
                if (!TextUtils.equals((CharSequence)s, (CharSequence)"preference_fragment_id")) {
                    clearQuery.appendQueryParameter(s, data.getQueryParameter(s));
                }
            }
            intent.setData(clearQuery.build());
        }
        if (PublicPreferenceActivity.aOV == null) {
            PublicPreferenceActivity.aOV = d.class;
        }
        intent.setClass((Context)this, (Class)PublicPreferenceActivity.aOV);
        this.startActivity(intent);
        this.finish();
    }
}
