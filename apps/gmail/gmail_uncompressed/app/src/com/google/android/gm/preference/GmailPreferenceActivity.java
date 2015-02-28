package com.google.android.gm.preference;

import com.android.mail.ui.settings.*;
import com.google.android.gm.c.*;
import java.util.*;
import android.os.*;
import com.android.mail.providers.*;
import android.graphics.*;
import com.android.mail.utils.*;
import android.preference.*;
import android.net.*;
import android.app.*;
import android.view.*;
import com.google.android.gm.*;
import android.content.*;
import com.google.android.gm.provider.*;

public class GmailPreferenceActivity extends d implements SharedPreferences$OnSharedPreferenceChangeListener, n
{
    private int bbA;
    private boolean bbB;
    private h bbC;
    
    public GmailPreferenceActivity() {
        this.bbA = 0;
    }
    
    @Override
    public final void A(final List<PreferenceActivity$Header> list) {
        this.loadHeadersFromResource(2131099662, (List)list);
    }
    
    public final String Cr() {
        return this.getString(2131297016);
    }
    
    @Override
    protected boolean isValidFragment(final String s) {
        return true;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final Uri data = intent.getData();
        if (intent.hasExtra("extra_folder")) {
            final Folder folder = (Folder)intent.getParcelableExtra("extra_folder");
            final String lw = ((Account)intent.getParcelableExtra("extra_account")).lw();
            final String lastPathSegment = folder.azZ.aPj.getLastPathSegment();
            final Intent intent2 = new Intent((Context)this, (Class)LabelsActivity.class);
            intent2.putExtra("account_key", lw);
            intent2.putExtra("label", lastPathSegment);
            this.startActivity(intent2);
            this.finish();
            return;
        }
        if (intent.hasExtra("extra_manage_folders")) {
            final String lw2 = ((Account)intent.getParcelableExtra("extra_account")).lw();
            final Intent intent3 = new Intent((Context)this, (Class)LabelsActivity.class);
            intent3.putExtra("account_key", lw2);
            this.startActivity(intent3);
            this.finish();
        }
        else if (intent.hasExtra("extra_account")) {
            final Account account = (Account)intent.getParcelableExtra("extra_account");
            final String lw3 = account.lw();
            final Bundle bundle2 = new Bundle();
            bundle2.putString("email", lw3);
            this.startWithFragment(account.ayE, bundle2, (Fragment)null, 0);
            this.finish();
        }
        else if (data != null) {
            if (Boolean.parseBoolean(data.getQueryParameter("reporting_problem"))) {
                this.bbC = new k(this, (Activity)this, bundle, "state-feedback-error", "Feedback");
                final boolean booleanExtra = intent.getBooleanExtra("reporting_problem", false);
                final String queryParameter = data.getQueryParameter("reporting_problem");
                boolean b;
                if (queryParameter != null && Boolean.parseBoolean(queryParameter)) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (booleanExtra || b) {
                    ay.a((Context)this, this.bbC.ID(), (Bitmap)intent.getParcelableExtra("screen_shot"));
                    this.finish();
                    return;
                }
            }
            else {
                E.c(E.TAG, "Unknown initial data uri %s", data);
            }
        }
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(4, 4);
        }
        PreferenceManager.getDefaultSharedPreferences((Context)this).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        this.getMenuInflater().inflate(2131755027, menu);
        return true;
    }
    
    public void onHeaderClick(final PreferenceActivity$Header preferenceActivity$Header, final int n) {
        if (n == 0) {
            ++this.bbA;
            if (this.bbA == 10) {
                this.bbB = true;
                this.invalidateHeaders();
            }
        }
        else {
            this.bbA = 0;
        }
        if (preferenceActivity$Header.id == 2131559019L) {
            a.h((Activity)this);
        }
        super.onHeaderClick(preferenceActivity$Header, n);
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.finish();
            return true;
        }
        if (itemId == 2131559059 && this.getFragmentManager().findFragmentByTag("manage_accounts") == null) {
            l.DI().show(this.getFragmentManager(), "manage_accounts");
        }
        return m.a(menuItem, (Activity)this, (Account)this.getIntent().getParcelableExtra("extra_account"), this);
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        GmailProvider.ca((Context)this);
    }
    
    protected void onStart() {
        super.onStart();
        com.android.mail.a.a.oq().e((Activity)this);
    }
    
    public void onStop() {
        super.onStop();
        com.android.mail.a.a.oq().f((Activity)this);
        PreferenceManager.getDefaultSharedPreferences((Context)this).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
}
