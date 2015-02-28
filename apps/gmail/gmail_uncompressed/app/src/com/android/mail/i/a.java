package com.android.mail.i;

import java.util.*;
import com.google.common.collect.*;
import android.content.*;
import com.android.mail.providers.*;

public class a extends l
{
    private static Map<String, a> axM;
    
    static {
        a.axM = (Map<String, a>)Maps.aan();
    }
    
    public a(final Context context, final String s) {
        super(context, "Account-" + s);
    }
    
    public static a c(final Context context, final Account account) {
        synchronized (a.class) {
            final String accountId = account.getAccountId();
            a a = com.android.mail.i.a.axM.get(accountId);
            if (a == null) {
                a = new a(context, accountId);
                com.android.mail.i.a.axM.put(accountId, a);
            }
            return a;
        }
    }
    
    public final void aV(final boolean b) {
        this.getEditor().putBoolean("inbox-notifications-enabled", b).apply();
    }
    
    public final void aW(final boolean b) {
        this.getEditor().putBoolean("notifications-enabled", b).apply();
        this.ua();
    }
    
    @Override
    protected final boolean bB(final String s) {
        return b.axN.contains(s);
    }
    
    @Override
    protected final void cq(final int n) {
        if (n > 4) {
            throw new IllegalStateException("You appear to have downgraded your app. Please clear app data.");
        }
    }
    
    public final void cr(final int n) {
        this.getEditor().putInt("last-seen-outbox-count", n).apply();
    }
    
    public final boolean tl() {
        return this.getSharedPreferences().contains("inbox-notifications-enabled");
    }
    
    public final boolean tm() {
        return this.getSharedPreferences().getBoolean("inbox-notifications-enabled", true);
    }
    
    public final void tn() {
        this.getEditor().remove("inbox-notifications-enabled").apply();
    }
    
    public final boolean to() {
        return this.getSharedPreferences().getBoolean("notifications-enabled", true);
    }
    
    public final int tp() {
        return this.getSharedPreferences().getInt("num-of-dismisses-account-sync-off", 0);
    }
    
    public final void tq() {
        if (this.getSharedPreferences().getInt("num-of-dismisses-account-sync-off", 0) != 0) {
            this.getEditor().putInt("num-of-dismisses-account-sync-off", 0).apply();
        }
    }
    
    public final void tr() {
        this.getEditor().putInt("num-of-dismisses-account-sync-off", this.getSharedPreferences().getInt("num-of-dismisses-account-sync-off", 0) + 1).apply();
    }
    
    public final int ts() {
        return this.getSharedPreferences().getInt("last-seen-outbox-count", 0);
    }
}
