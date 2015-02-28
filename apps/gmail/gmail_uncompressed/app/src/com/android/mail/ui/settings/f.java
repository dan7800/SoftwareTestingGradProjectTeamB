package com.android.mail.ui.settings;

import android.preference.*;
import android.os.*;
import android.view.*;

public class f extends PreferenceFragment
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setHasOptionsMenu(true);
    }
    
    public void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        menu.clear();
        menuInflater.inflate(2131755026, menu);
    }
}
