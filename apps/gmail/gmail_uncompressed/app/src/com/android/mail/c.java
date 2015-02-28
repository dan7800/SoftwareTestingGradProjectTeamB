package com.android.mail;

import android.content.*;
import com.android.mail.providers.*;
import com.google.common.base.*;
import android.text.*;
import android.os.*;

public final class c
{
    private static final UriMatcher ajR;
    public final Account account;
    public final Folder ajS;
    public final String ajT;
    
    static {
        (ajR = new UriMatcher(-1)).addURI("com.android.mail.providers", "account/*/folder/*", 0);
    }
    
    private c(final Account account, final String ajT, final Folder ajS) {
        this.account = account;
        this.ajT = ajT;
        this.ajS = ajS;
    }
    
    public static c a(final Account account, final Folder folder) {
        return new c(account, null, folder);
    }
    
    public static c a(final Account account, final Folder folder, final String s) {
        return new c(account, i.ak(s), folder);
    }
    
    public static final boolean a(final c c) {
        return c != null && !TextUtils.isEmpty((CharSequence)c.ajT);
    }
    
    public static c j(final Bundle bundle) {
        return new c((Account)bundle.getParcelable("account"), bundle.getString("query"), (Folder)bundle.getParcelable("folder"));
    }
    
    public final Bundle toBundle() {
        final Bundle bundle = new Bundle();
        bundle.putParcelable("account", (Parcelable)this.account);
        bundle.putString("query", this.ajT);
        bundle.putParcelable("folder", (Parcelable)this.ajS);
        return bundle;
    }
}
