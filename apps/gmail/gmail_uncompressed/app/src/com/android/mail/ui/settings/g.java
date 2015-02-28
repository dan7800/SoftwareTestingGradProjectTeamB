package com.android.mail.ui.settings;

import android.preference.*;
import android.text.*;

public final class g
{
    public static void a(final Preference preference, final String summary) {
        if (!TextUtils.isEmpty((CharSequence)summary)) {
            preference.setSummary((CharSequence)summary);
            return;
        }
        preference.setSummary(2131296623);
    }
}
