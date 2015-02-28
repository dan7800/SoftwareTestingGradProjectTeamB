package com.google.android.gm.provider;

import com.google.android.gms.common.*;
import android.os.*;
import android.accounts.*;
import com.google.android.gm.preference.*;
import android.net.*;
import android.content.*;
import android.database.*;

public final class DisableNotificationsProvider extends ContentProvider
{
    private boolean DW() {
        if (f.cf(this.getContext()) != 0) {
            return false;
        }
        f.a(this.getContext().getPackageManager(), Binder.getCallingUid());
        return true;
    }
    
    public final Bundle call(final String s, final String s2, final Bundle bundle) {
        boolean b = true;
        if (!this.DW()) {
            return null;
        }
        if ("areNotificationOperationsSupported".equals(s)) {
            final Bundle bundle2 = new Bundle((int)(b ? 1 : 0));
            bundle2.putBoolean("supported", b);
            return bundle2;
        }
        if ("areNotificationsEnabled".equals(s)) {
            final Bundle bundle3 = new Bundle((int)(b ? 1 : 0));
            final boolean masterSyncAutomatically = ContentResolver.getMasterSyncAutomatically();
            final boolean syncAutomatically = ContentResolver.getSyncAutomatically(new Account(s2, "com.google"), "gmail-ls");
            final boolean b2 = masterSyncAutomatically && syncAutomatically && b;
            final boolean to = new i(this.getContext(), s2).to();
            if (!b2 || !to) {
                b = false;
            }
            bundle3.putBoolean("enabled", b);
            return bundle3;
        }
        if ("disableNotifications".equals(s)) {
            final i i = new i(this.getContext(), s2);
            final boolean to2 = i.to();
            if (to2) {
                i.aW(false);
                A.O(this.getContext(), s2);
            }
            final Bundle bundle4 = new Bundle((int)(b ? 1 : 0));
            bundle4.putBoolean("disabled", to2);
            return bundle4;
        }
        return super.call(s, s2, bundle);
    }
    
    public final int delete(final Uri uri, final String s, final String[] array) {
        if (!this.DW()) {
            return 0;
        }
        return 0;
    }
    
    public final String getType(final Uri uri) {
        if (!this.DW()) {
            return null;
        }
        return null;
    }
    
    public final Uri insert(final Uri uri, final ContentValues contentValues) {
        if (!this.DW()) {
            return null;
        }
        return null;
    }
    
    public final boolean onCreate() {
        return true;
    }
    
    public final Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        if (!this.DW()) {
            return null;
        }
        return null;
    }
    
    public final int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        if (!this.DW()) {
            return 0;
        }
        return 0;
    }
}
