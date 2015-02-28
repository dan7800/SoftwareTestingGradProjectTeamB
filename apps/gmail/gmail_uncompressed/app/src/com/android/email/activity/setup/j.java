package com.android.email.activity.setup;

import com.android.email.service.*;
import com.android.mail.providers.*;
import android.text.*;
import android.net.*;
import android.provider.*;
import com.android.mail.i.*;
import com.android.mail.utils.*;
import com.android.mail.ui.settings.*;
import com.android.emailcommon.provider.*;
import android.media.*;
import android.os.*;
import android.app.*;
import android.view.*;
import android.content.*;
import com.android.email.provider.*;
import android.preference.*;

final class J implements Preference$OnPreferenceClickListener
{
    final /* synthetic */ AccountSettingsFragment Nu;
    
    J(final AccountSettingsFragment nu) {
        this.Nu = nu;
    }
    
    public final boolean onPreferenceClick(final Preference preference) {
        this.Nu.h(this.Nu.Ml);
        return true;
    }
}
