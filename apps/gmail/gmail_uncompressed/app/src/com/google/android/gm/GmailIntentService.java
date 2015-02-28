package com.google.android.gm;

import com.android.mail.*;
import com.google.android.gm.b.*;
import android.content.*;
import android.os.*;
import java.io.*;
import android.accounts.*;
import android.app.*;
import android.database.*;
import com.android.mail.utils.*;
import com.google.android.gm.preference.*;
import com.google.android.gm.provider.*;
import com.google.android.gm.persistence.*;
import com.android.mail.providers.*;

public class GmailIntentService extends f
{
    public GmailIntentService() {
        super("GmailIntentService");
    }
    
    private void a(final Intent intent, final boolean b) {
        final String stringExtra = intent.getStringExtra("account");
        final String stringExtra2 = intent.getStringExtra("extraMessageSubject");
        final long longExtra = intent.getLongExtra("extraConversationId", -1L);
        int n;
        if (b) {
            n = 2131820573;
        }
        else {
            n = 2131820572;
        }
        ay.a(this.getBaseContext(), stringExtra, stringExtra2, longExtra, n);
    }
    
    private void i(final boolean b, final boolean b2) {
        int i = 0;
        if (b) {
            a.tg();
        }
        final AccountManagerFuture accountsByTypeAndFeatures = AccountManager.get((Context)this).getAccountsByTypeAndFeatures("com.google", com.google.android.gm.a.aWC, (AccountManagerCallback)null, (Handler)null);
        try {
            final Account[] array = (Account[])accountsByTypeAndFeatures.getResult();
            if (b2) {
                MailEngine.d(this.getBaseContext(), array);
            }
            else {
                ay.a((Context)this, array);
                if (b) {
                    while (i < array.length) {
                        MailEngine.W((Context)this, array[i].name).bW(true);
                        ++i;
                    }
                }
            }
            if (b) {
                a.th();
            }
            GmailProvider.ca((Context)this);
        }
        catch (OperationCanceledException ex) {
            E.d(ay.mW, (Throwable)ex, "Unexpected exception trying to get accounts.", new Object[0]);
        }
        catch (IOException ex2) {
            E.d(ay.mW, ex2, "Unexpected exception trying to get accounts.", new Object[0]);
        }
        catch (AuthenticatorException ex3) {
            E.d(ay.mW, (Throwable)ex3, "Unexpected exception trying to get accounts.", new Object[0]);
        }
        finally {
            if (b) {
                a.th();
            }
        }
    }
    
    @Override
    protected void onHandleIntent(final Intent intent) {
        super.onHandleIntent(intent);
        String action = null;
        Label_0209: {
            String aa;
            try {
                action = intent.getAction();
                E.b("GmailIS", "Handling %s // %s", action, intent);
                if ("android.intent.action.BOOT_COMPLETED".equals(action) || "android.intent.action.DEVICE_STORAGE_OK".equals(action) || "android.intent.action.MY_PACKAGE_REPLACED".equals(action)) {
                    this.i(true, false);
                    ay.bh((Context)this);
                    return;
                }
                if (!"android.intent.action.DOWNLOAD_COMPLETE".equals(action)) {
                    break Label_0209;
                }
                final Long value = intent.getLongExtra("extra_download_id", -1L);
                aa = g.aa(value);
                if (aa == null) {
                    E.c(ay.mW, "DownloadManager account = null for download %d ", value);
                    ((DownloadManager)this.getSystemService("download")).remove(new long[] { value });
                    return;
                }
            }
            catch (SQLException ex) {
                E.e(ay.mW, (Throwable)ex, "Error handling intent %s", intent);
                return;
            }
            final MailEngine w = MailEngine.W((Context)this, aa);
            w.g(new B(this, w, intent));
            return;
        }
        if ("com.google.android.gm.intent.CLEAR_ALL_NEW_MAIL_NOTIFICATIONS".equals(action)) {
            N.az((Context)this);
            return;
        }
        if ("com.android.mail.action.update_notification".equals(action)) {
            final String string = intent.getExtras().getString("account");
            final MailEngine w2 = MailEngine.W((Context)this, string);
            final com.android.mail.providers.Account g = GmailProvider.g((Context)this, string);
            if (new i((Context)this, string).to()) {
                final String string2 = intent.getExtras().getString("notificationLabel");
                if (!w2.el(string2)) {
                    E.f("GmailIS", "Tried to notify for a hidden label", new Object[0]);
                    E.c("GmailIS", "    %s / %s", string, string2);
                    b.DD();
                    b.n((Context)this, string, string2);
                    return;
                }
                final Folder i = ay.i((Context)this, string, string2);
                if (new j((Context)this, string, i, b.I((Context)this, string).equals(string2)).to()) {
                    N.a((Context)this, intent.getIntExtra("count", 0), intent.getIntExtra("unseenCount", 0), g, i, intent.getBooleanExtra("getAttention", false), new com.google.android.gm.photo.a());
                }
            }
        }
        else {
            if ("android.accounts.LOGIN_ACCOUNTS_CHANGED".equals(action)) {
                E.d("GmailIS", "Receive LOGIN_ACCOUNTS_CHANGED intent: %s", intent);
                ay.bf((Context)this);
                this.i(false, true);
                return;
            }
            if ("com.google.android.gm.intent.VALIDATE_ACCOUNT_NOTIFICATIONS".equals(action)) {
                N.d((Context)this, GmailProvider.g((Context)this, intent.getStringExtra("account")));
                return;
            }
            if ("com.google.android.gm.intent.ACTION_POST_SEND_ERROR".equals(action)) {
                this.a(intent, false);
                return;
            }
            if ("com.google.android.gm.intent.ACTION_POST_SAVE_ERROR".equals(action)) {
                this.a(intent, true);
                return;
            }
            if ("com.google.android.gm.intent.ACTION_PROVIDER_CREATED".equals(action)) {
                final Intent intent2 = new Intent("com.android.mail.ACTION_NOTIFY_DATASET_CHANGED");
                intent2.putExtra("update-all-widgets", true);
                intent2.setType("application/gmail-ls");
                this.sendBroadcast(intent2);
                return;
            }
            if ("com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW".equals(action)) {
                if (MailEngine.W((Context)this, intent.getStringExtra("account")).Gc().Ey() < Gmail.bY((Context)this)) {
                    b.DD().bN((Context)this);
                    this.sendBroadcast(new Intent("com.google.android.gm.intent.ACTION_DISPLAY_SYNC_WINDOW_UPGRADE"));
                }
            }
            else if ("com.android.mail.action.BACKUP_DATA_CHANGED".equals(action)) {
                GmailBackupAgent.dataChanged("Broadcast - preferences");
            }
        }
    }
    
    @Override
    public final com.android.mail.g.a oo() {
        return new com.google.android.gm.photo.a();
    }
}
