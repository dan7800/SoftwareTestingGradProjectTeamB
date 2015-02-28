package com.android.mail.ui;

import com.android.mail.utils.*;
import android.content.*;
import com.android.mail.*;
import android.net.*;
import com.android.mail.providers.*;
import android.text.*;

public final class da extends BroadcastReceiver
{
    private static final String mW;
    private String Ym;
    private a aEC;
    private Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public final boolean Ac() {
        return this.mContext != null;
    }
    
    public final boolean a(final Context mContext, final a aec) {
        final Account vk = aec.vK();
        this.mContext = mContext;
        this.aEC = aec;
        final IntentFilter intentFilter = new IntentFilter("com.android.mail.action.update_notification");
        intentFilter.setPriority(0);
        while (true) {
            Label_0097: {
                if (vk == null) {
                    break Label_0097;
                }
                this.Ym = vk.mimeType;
                try {
                    intentFilter.addDataType(this.Ym);
                    mContext.registerReceiver((BroadcastReceiver)this, intentFilter);
                    return true;
                }
                catch (IntentFilter$MalformedMimeTypeException ex) {
                    E.g(da.mW, "Malformed mimetype: %s", this.Ym);
                    continue;
                }
            }
            E.c(da.mW, "Registering receiver with no mime type", new Object[0]);
            continue;
        }
    }
    
    public final void deactivate() {
        try {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver((BroadcastReceiver)this);
                this.mContext = null;
                this.Ym = null;
            }
        }
        catch (IllegalArgumentException ex) {}
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        if ("com.android.mail.action.update_notification".equals(intent.getAction()) && this.aEC.vP()) {
            final c vl = this.aEC.vL();
            if (vl == null) {
                E.f(da.mW, "unexpected null context", new Object[0]);
                return;
            }
            if (!c.a(vl)) {
                final Account account = vl.account;
                final Folder ajS = vl.ajS;
                if (account == null || ajS == null) {
                    E.f(da.mW, "SuppressNotificationReceiver.onReceive: account=%s, folder=%s", account, ajS);
                    return;
                }
                if (account.uri.equals((Object)intent.getParcelableExtra("notification_extra_account"))) {
                    final Uri uri = (Uri)intent.getParcelableExtra("notification_extra_folder");
                    if (ajS.azZ.equals(uri) && intent.getIntExtra("notification_updated_unread_count", 0) != 0) {
                        E.d(da.mW, "Aborting broadcast of intent %s, folder uri is %s", intent, uri);
                        this.abortBroadcast();
                    }
                }
            }
        }
    }
    
    public final boolean w(final Account account) {
        return this.mContext != null && TextUtils.equals((CharSequence)account.mimeType, (CharSequence)this.Ym);
    }
}
