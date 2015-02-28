package com.android.mail.ui.settings;

import java.lang.ref.*;
import android.database.*;
import java.util.*;
import android.preference.*;
import com.android.mail.providers.*;
import android.text.*;
import android.os.*;
import android.app.*;

public class d extends PreferenceActivity
{
    private WeakReference<GeneralPrefsFragment> aOS;
    private Cursor aOT;
    
    public void A(final List<PreferenceActivity$Header> list) {
    }
    
    protected boolean isValidFragment(final String s) {
        return true;
    }
    
    public void onAttachFragment(final Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof GeneralPrefsFragment) {
            this.aOS = new WeakReference<GeneralPrefsFragment>((GeneralPrefsFragment)fragment);
        }
    }
    
    public void onBuildHeaders(final List<PreferenceActivity$Header> list) {
        this.loadHeadersFromResource(2131099670, (List)list);
        if (this.aOT != null && this.aOT.moveToFirst()) {
            do {
                Account.ue();
                final Account j = c.j(this.aOT);
                if (!j.cy(524288)) {
                    final PreferenceActivity$Header preferenceActivity$Header = new PreferenceActivity$Header();
                    if (TextUtils.isEmpty((CharSequence)j.getDisplayName()) || TextUtils.equals((CharSequence)j.getDisplayName(), (CharSequence)j.lw())) {
                        preferenceActivity$Header.title = j.lw();
                    }
                    else {
                        preferenceActivity$Header.title = j.getDisplayName();
                        preferenceActivity$Header.summary = j.lw();
                    }
                    preferenceActivity$Header.fragment = j.ayE;
                    final Bundle fragmentArguments = new Bundle(1);
                    fragmentArguments.putString("email", j.lw());
                    preferenceActivity$Header.fragmentArguments = fragmentArguments;
                    list.add(preferenceActivity$Header);
                }
            } while (this.aOT.moveToNext());
        }
        this.A(list);
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setIcon(17170445);
            actionBar.setDisplayUseLogoEnabled(false);
        }
        this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)new e(this, (byte)0));
    }
}
