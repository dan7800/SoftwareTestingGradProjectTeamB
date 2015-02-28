package com.android.mail;

import android.app.*;
import android.content.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;
import android.net.*;
import com.android.mail.utils.*;

public class f extends IntentService
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public f() {
        super("MailIntentService");
    }
    
    protected f(final String s) {
        super(s);
    }
    
    public static void aj(final Context context) {
        final Intent intent = new Intent("com.android.mail.action.BACKUP_DATA_CHANGED");
        intent.setPackage(context.getPackageName());
        context.startService(intent);
    }
    
    protected void onHandleIntent(final Intent intent) {
        E.b(f.mW, "Handling intent %s", intent);
        final String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            N.a((Context)this, this.oo());
        }
        else {
            if ("com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS".equals(action)) {
                final Account account = (Account)intent.getParcelableExtra("account");
                final Folder folder = (Folder)intent.getParcelableExtra("folder");
                N.a((Context)this, account, folder, true);
                a.oq().a("notification_dismiss", folder.va(), null, 0L);
                return;
            }
            if ("com.android.mail.action.RESEND_NOTIFICATIONS".equals(action)) {
                final Uri uri = (Uri)intent.getParcelableExtra("accountUri");
                final Uri uri2 = (Uri)intent.getParcelableExtra("folderUri");
                p p = null;
                if (uri2 != null) {
                    p = new p(uri2);
                }
                N.a((Context)this, false, uri, p, this.oo());
                return;
            }
            if ("com.android.mail.action.RESEND_NOTIFICATIONS_WEAR".equals(action)) {
                final Account account2 = (Account)intent.getParcelableExtra("account");
                final Folder folder2 = (Folder)intent.getParcelableExtra("folder");
                N.b((Context)this, (Uri)intent.getParcelableExtra("conversationUri"));
                N.a((Context)this, false, account2.uri, folder2.azZ, this.oo());
                return;
            }
            if ("com.android.mail.action.SEND_SET_NEW_EMAIL_INDICATOR".equals(action)) {
                N.a((Context)this, intent.getIntExtra("unread-count", 0), intent.getIntExtra("unseen-count", 0), (Account)intent.getParcelableExtra("account"), (Folder)intent.getParcelableExtra("folder"), intent.getBooleanExtra("get-attention", false), this.oo());
                return;
            }
            if ("android.intent.action.DEVICE_STORAGE_LOW".equals(action)) {
                aa.bG(true);
                return;
            }
            if ("android.intent.action.DEVICE_STORAGE_OK".equals(action)) {
                aa.bG(false);
            }
        }
    }
    
    public com.android.mail.g.a oo() {
        return null;
    }
}
