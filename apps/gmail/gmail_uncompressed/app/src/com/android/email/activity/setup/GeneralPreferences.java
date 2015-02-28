package com.android.email.activity.setup;

import com.android.mail.ui.settings.*;
import android.os.*;
import android.preference.*;

public class GeneralPreferences extends GeneralPrefsFragment
{
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final PreferenceScreen preferenceScreen = this.getPreferenceScreen();
        final Preference preference = this.findPreference((CharSequence)"removal-action");
        if (preference != null) {
            preferenceScreen.removePreference(preference);
        }
        final Preference preference2 = this.findPreference((CharSequence)"confirm-archive");
        final PreferenceGroup preferenceGroup = (PreferenceGroup)this.findPreference((CharSequence)"removal-actions-group");
        if (preference2 != null) {
            preferenceGroup.removePreference(preference2);
        }
    }
}
