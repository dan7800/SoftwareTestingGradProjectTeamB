package com.google.android.gms.googlehelp;

import android.app.*;
import com.google.android.gms.common.*;
import android.content.*;

public final class a
{
    protected final Activity pe;
    
    public a(final Activity pe) {
        this.pe = pe;
    }
    
    public final void e(final Intent intent) {
        if (!intent.getAction().equals("com.google.android.gms.googlehelp.HELP") || !intent.hasExtra("EXTRA_GOOGLE_HELP")) {
            throw new IllegalArgumentException("The intent you are trying to launch is not GoogleHelp intent! This class only supports GoogleHelp intents.");
        }
        final int cf = f.cf((Context)this.pe);
        if (cf == 0) {
            this.pe.startActivityForResult(intent, 123);
            return;
        }
        final Intent setData = new Intent("android.intent.action.VIEW").setData(((GoogleHelp)intent.getParcelableExtra("EXTRA_GOOGLE_HELP")).QB());
        if (cf != 7) {
            int n;
            if (this.pe.getPackageManager().queryIntentActivities(setData, 0).size() > 0) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                this.pe.startActivity(setData);
                return;
            }
        }
        f.a(cf, this.pe);
    }
}
