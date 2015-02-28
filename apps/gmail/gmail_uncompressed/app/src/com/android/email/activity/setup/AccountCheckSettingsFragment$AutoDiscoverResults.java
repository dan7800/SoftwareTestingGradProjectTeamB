package com.android.email.activity.setup;

import com.android.emailcommon.mail.*;
import com.android.emailcommon.provider.*;

public class AccountCheckSettingsFragment$AutoDiscoverResults extends MessagingException
{
    public final HostAuth mHostAuth;
    
    public AccountCheckSettingsFragment$AutoDiscoverResults(final boolean b, final HostAuth mHostAuth) {
        super((String)null);
        if (b) {
            this.mExceptionType = 11;
        }
        else {
            this.mExceptionType = 12;
        }
        this.mHostAuth = mHostAuth;
    }
}
