package com.android.mail.providers;

import android.content.*;
import com.google.android.gm.welcome.*;

public class GmailAccountCacheProvider extends t
{
    @Override
    protected final Intent ap(final Context context) {
        final Intent intent = new Intent(context, (Class)WelcomeTourActivity.class);
        intent.putExtra("tour-highest-version-seen", -1);
        return intent;
    }
    
    @Override
    protected final String getAuthority() {
        return "com.google.android.gm2.accountcache";
    }
}
