package com.google.android.gms.auth;

import android.content.*;

public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException
{
    private final int Fu;
    
    GooglePlayServicesAvailabilityException(final int fu, final String s, final Intent intent) {
        super(s, intent);
        this.Fu = fu;
    }
    
    public final int JR() {
        return this.Fu;
    }
}
