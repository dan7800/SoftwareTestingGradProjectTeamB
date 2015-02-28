package com.android.email.service;

import android.app.*;
import android.accounts.*;
import android.text.*;
import android.os.*;
import com.google.common.collect.*;
import android.database.*;
import java.util.*;
import com.android.email.provider.*;
import com.android.emailcommon.provider.*;
import android.content.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import com.android.email.*;

public class EmailBroadcastProcessorService extends IntentService
{
    private static final String[] Uv;
    
    static {
        Uv = new String[] { "emailAddress", "syncInterval" };
    }
    
    public EmailBroadcastProcessorService() {
        super(EmailBroadcastProcessorService.class.getName());
        this.setIntentRedelivery(true);
    }
    
    public static void M(final Context context) {
        final Intent intent = new Intent(context, (Class)EmailBroadcastProcessorService.class);
        intent.setAction("upgrade_broadcast_receiver");
        context.startService(intent);
    }
    
    private static void a(final Account account, final String s) {
        final Iterator<PeriodicSync> iterator = ContentResolver.getPeriodicSyncs(account, s).iterator();
        while (iterator.hasNext()) {
            ContentResolver.removePeriodicSync(account, s, iterator.next().extras);
        }
    }
    
    private void a(final Class<?> clazz) {
        this.getPackageManager().setComponentEnabledSetting(new ComponentName((Context)this, (Class)clazz), 2, 1);
    }
    
    private void a(final String s, final Map<String, String> map) {
        final Account[] accountsByType = AccountManager.get((Context)this).getAccountsByType(s);
        for (int length = accountsByType.length, i = 0; i < length; ++i) {
            n.a((Context)this, accountsByType[i], map);
        }
    }
    
    private static void a(final Map<String, String> map) {
        for (final String s : new HashSet<String>(map.keySet())) {
            if (TextUtils.equals((CharSequence)s, (CharSequence)map.get(s))) {
                map.remove(s);
            }
        }
    }
    
    public static void b(final Context context, final Intent intent) {
        final Intent intent2 = new Intent(context, (Class)EmailBroadcastProcessorService.class);
        intent2.setAction("broadcast_receiver");
        intent2.putExtra("android.intent.extra.INTENT", (Parcelable)intent);
        context.startService(intent2);
    }
    
    private void b(final String s, final Map<String, Integer> map) {
        for (final Account account : AccountManager.get((Context)this).getAccountsByType(s)) {
            a(account, EmailContent.AUTHORITY);
            a(account, "com.android.calendar");
            a(account, "com.android.contacts");
            final Integer n = map.get(account.name);
            if (n != null && n > 0) {
                ContentResolver.addPeriodicSync(account, EmailContent.AUTHORITY, Bundle.EMPTY, 60000L * n / 1000L);
            }
        }
    }
    
    public static void e(final Context context, final int n) {
        final Intent intent = new Intent(context, (Class)EmailBroadcastProcessorService.class);
        intent.setAction("com.android.email.devicepolicy");
        intent.putExtra("message_code", n);
        context.startService(intent);
    }
    
    private Map<String, Integer> kB() {
        final Cursor query = this.getContentResolver().query(com.android.emailcommon.provider.Account.CONTENT_URI, EmailBroadcastProcessorService.Uv, (String)null, (String[])null, (String)null);
        if (query != null) {
            final HashMap<Object, Object> fq = Maps.fq(query.getCount());
            try {
                while (query.moveToNext()) {
                    fq.put(query.getString(0), query.getInt(1));
                }
            }
            finally {
                query.close();
            }
            query.close();
            return (Map<String, Integer>)fq;
        }
        return Collections.emptyMap();
    }
    
    private void kC() {
        int n;
        if (this.getPackageManager().getComponentEnabledSetting(new ComponentName((Context)this, (Class)EmailUpgradeBroadcastReceiver.class)) == 2) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            return;
        }
        final HashMap<Object, Object> fq = Maps.fq(4);
        fq.put("imap", this.getString(2131296997));
        fq.put("pop3", this.getString(2131296999));
        a((Map<String, String>)fq);
        if (!fq.isEmpty()) {
            fq.put("imap_type", this.getString(2131296987));
            fq.put("pop3_type", this.getString(2131296985));
            this.a("com.android.email", (Map<String, String>)fq);
        }
        fq.clear();
        fq.put("eas", this.getString(2131297000));
        a((Map<String, String>)fq);
        if (!fq.isEmpty()) {
            fq.put("eas_type", this.getString(2131296984));
            this.a("com.android.exchange", (Map<String, String>)fq);
        }
        this.a(LegacyEmailAuthenticatorService.class);
        this.a(LegacyEasAuthenticatorService.class);
        final Map<String, Integer> kb = this.kB();
        final Iterator<o> iterator = com.android.email.service.n.P((Context)this).iterator();
        while (iterator.hasNext()) {
            this.b(iterator.next().accountType, kb);
        }
        this.a(EmailUpgradeBroadcastReceiver.class);
    }
    
    private void kD() {
        this.kC();
        b.F((Context)this);
        n.N((Context)this);
    }
    
    protected void onHandleIntent(final Intent intent) {
        final String action = intent.getAction();
        if ("broadcast_receiver".equals(action)) {
            final Intent intent2 = (Intent)intent.getParcelableExtra("android.intent.extra.INTENT");
            final String action2 = intent2.getAction();
            if ("android.intent.action.BOOT_COMPLETED".equals(action2)) {
                final r s = r.s((Context)this);
                final int gy = s.gY();
                int n;
                if (gy <= 0) {
                    E.d(com.android.emailcommon.b.mW, "Onetime initialization: 1", new Object[0]);
                    n = 1;
                    com.android.email.service.n.R((Context)this);
                }
                else {
                    n = gy;
                }
                if (n < 2) {
                    E.d(com.android.emailcommon.b.mW, "Onetime initialization: 2", new Object[0]);
                    final ContentResolver contentResolver = ((Context)this).getContentResolver();
                    final Cursor query = contentResolver.query(com.android.emailcommon.provider.Account.CONTENT_URI, com.android.emailcommon.provider.Account.XO, (String)null, (String[])null, (String)null);
                    try {
                        while (query.moveToNext()) {
                            if (((Context)this).getString(2131296997).equals(HostAuth.u((Context)this, query.getLong(6)).Zh)) {
                                final int n2 = 0x8 | (0xFFFFFFF3 & query.getInt(8));
                                final ContentValues contentValues = new ContentValues();
                                contentValues.put("flags", n2);
                                contentResolver.update(ContentUris.withAppendedId(com.android.emailcommon.provider.Account.CONTENT_URI, query.getLong(0)), contentValues, (String)null, (String[])null);
                            }
                        }
                    }
                    finally {
                        query.close();
                    }
                    query.close();
                    n = 2;
                }
                if (n != gy) {
                    s.gZ();
                    E.d(com.android.emailcommon.b.mW, "Onetime initialization: completed.", new Object[0]);
                }
                this.kD();
            }
            else {
                if ("android.accounts.LOGIN_ACCOUNTS_CHANGED".equals(action2)) {
                    E.d(com.android.emailcommon.b.mW, "System accounts updated.", new Object[0]);
                    this.kD();
                    NotificationActionUtils.a(this.getApplicationContext(), null, null);
                    return;
                }
                if ("android.intent.action.LOCALE_CHANGED".equals(action2) || "com.android.mail.action.update_notification".equals(action2)) {
                    intent2.setClass((Context)this, (Class)EmailIntentService.class);
                    this.startService(intent2);
                }
            }
        }
        else {
            if ("com.android.email.devicepolicy".equals(action)) {
                SecurityPolicy.b((Context)this, intent.getIntExtra("message_code", -1));
                return;
            }
            if ("upgrade_broadcast_receiver".equals(action)) {
                this.kC();
            }
        }
    }
}
