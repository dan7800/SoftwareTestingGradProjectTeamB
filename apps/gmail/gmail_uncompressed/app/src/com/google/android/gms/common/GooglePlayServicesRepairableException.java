package com.google.android.gms.common;

import android.content.*;

public class GooglePlayServicesRepairableException extends UserRecoverableException
{
    private final int Fu;
    
    GooglePlayServicesRepairableException(final int fu, final String s, final Intent intent) {
        super(s, intent);
        this.Fu = fu;
    }
    
    public final int JR() {
        return this.Fu;
    }
}
