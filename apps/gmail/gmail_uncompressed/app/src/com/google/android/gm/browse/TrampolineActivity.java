package com.google.android.gm.browse;

import android.os.*;
import com.android.mail.utils.*;
import android.text.*;
import android.net.*;
import com.google.android.gsf.*;
import com.android.mail.a.*;
import android.app.*;
import android.content.*;

public class TrampolineActivity extends Activity
{
    private static final String mW;
    private k baf;
    
    static {
        mW = D.AU();
    }
    
    public TrampolineActivity() {
        this.baf = new k(this, (byte)0);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final String action = intent.getAction();
        if (!"com.google.android.gm.intent.VIEW_PLID".equals(action)) {
            E.d(TrampolineActivity.mW, "Unrecognized intent: %s", action);
            this.finish();
            return;
        }
        String s = intent.getStringExtra("plid");
        if (TextUtils.isEmpty((CharSequence)s)) {
            E.d(TrampolineActivity.mW, "Intent does not contain a plid.", new Object[0]);
            final String stringExtra = intent.getStringExtra("permalink");
            if (stringExtra != null) {
                s = Uri.parse(stringExtra).getQueryParameter(c.a(this.getContentResolver(), "gmail_permalink_plid_param", "plid"));
            }
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            a.oq().a("plid_intent", "failure", "no_plid", 0L);
            E.f(TrampolineActivity.mW, "Intent does not contain a plid nor permalink.", new Object[0]);
            this.finish();
            return;
        }
        if (!com.google.android.gms.identity.accounts.api.a.e((Context)this, intent)) {
            a.oq().a("plid_intent", "failure", "no_account_data", 0L);
            E.f(TrampolineActivity.mW, "Intent does not contain account data.", new Object[0]);
            this.finish();
            return;
        }
        final String fp = com.google.android.gms.identity.accounts.api.a.f((Context)this, intent).FP();
        final Bundle bundle2 = new Bundle(2);
        bundle2.putString("plid", s);
        bundle2.putString("account-name", fp);
        this.getLoaderManager().initLoader(0, bundle2, (LoaderManager$LoaderCallbacks)this.baf);
    }
}
