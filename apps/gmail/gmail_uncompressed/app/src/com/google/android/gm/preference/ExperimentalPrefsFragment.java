package com.google.android.gm.preference;

import com.android.mail.ui.settings.*;
import android.os.*;
import com.android.mail.i.*;
import android.content.*;
import com.google.android.gm.persistence.*;
import android.preference.*;
import android.view.*;

public class ExperimentalPrefsFragment extends f implements Preference$OnPreferenceChangeListener
{
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.getPreferenceManager().setSharedPreferencesName(g.ao((Context)this.getActivity()).getSharedPreferencesName());
        this.addPreferencesFromResource(2131099660);
        this.setHasOptionsMenu(true);
        final CheckBoxPreference checkBoxPreference = (CheckBoxPreference)this.findPreference((CharSequence)"notification-requires-us");
        checkBoxPreference.setChecked(b.DD().b((Context)this.getActivity(), null, "notification-requires-us", false));
        checkBoxPreference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        if ("notification-requires-us".equals(preference.getKey())) {
            b.DD().a((Context)this.getActivity(), null, "notification-requires-us", (Boolean)o);
            return true;
        }
        return false;
    }
    
    public void onPrepareOptionsMenu(final Menu menu) {
        menu.clear();
    }
}
