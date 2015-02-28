package com.android.mail.ui;

import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import android.content.pm.*;

public class cd extends Activity
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968710);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar == null) {
            return;
        }
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle(2131296702);
        final PackageManager packageManager = this.getPackageManager();
        if (packageManager == null) {
            return;
        }
        try {
            actionBar.setSubtitle((CharSequence)this.getString(2131296707, new Object[] { this.getString(2131296377), packageManager.getPackageInfo(this.getPackageName(), 0).versionName }));
        }
        catch (PackageManager$NameNotFoundException ex) {
            E.f(cd.mW, (Throwable)ex, "Unable to locate application version.", new Object[0]);
        }
    }
}
