package com.android.email;

import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.database.*;
import android.content.*;
import java.util.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

public final class d implements m
{
    private static j LC;
    private static Handler LD;
    private static d LE;
    private static boolean LI;
    private static boolean LJ;
    private static final HashSet<Long> LK;
    private static final Object LL;
    private static final String mW;
    private final com.android.mail.utils.d LF;
    private final Map<Long, ContentObserver> LG;
    private ContentObserver LH;
    private final NotificationManager eg;
    private final Context mContext;
    
    static {
        mW = D.AU();
        LK = new HashSet<Long>();
        LL = new Object();
    }
    
    private d(final Context context, final com.android.mail.utils.d lf) {
        this.LG = new HashMap<Long, ContentObserver>();
        this.mContext = context.getApplicationContext();
        EmailContent.g(context);
        this.eg = (NotificationManager)context.getSystemService("notification");
        this.LF = lf;
    }
    
    private ab a(final long n, final String s, final CharSequence charSequence, final String s2, final Intent intent, final boolean b) {
        PendingIntent activity = null;
        if (intent != null) {
            activity = PendingIntent.getActivity(this.mContext, 0, intent, 134217728);
        }
        while (true) {
            final ab h = new ab(this.mContext).b(charSequence).c(s2).a(activity).i(0).h(2130837727);
            final com.android.mail.utils.d lf = this.LF;
            final ab c = h.a(com.android.mail.utils.d.getTime()).e((CharSequence)s).c(b);
            final Account k = Account.k(this.mContext, n);
            final String string = Settings$System.DEFAULT_NOTIFICATION_URI.toString();
            final Cursor query = this.mContext.getContentResolver().query(EmailProvider.a("uiaccount", k.Ln), E.aCr, (String)null, (String[])null, (String)null);
        Label_0260_Outer:
            while (true) {
                Label_0483: {
                    while (true) {
                        String s3 = null;
                    Label_0473:
                        while (true) {
                            Label_0429: {
                                com.android.mail.providers.Account j;
                                Cursor query2;
                                try {
                                    if (!query.moveToFirst()) {
                                        break Label_0483;
                                    }
                                    com.android.mail.providers.Account.ue();
                                    j = com.android.mail.providers.c.j(query);
                                    query.close();
                                    if (j == null) {
                                        break Label_0429;
                                    }
                                    query2 = this.mContext.getContentResolver().query(j.ayw.aBX, E.aCv, (String)null, (String[])null, (String)null);
                                    if (query2 == null) {
                                        com.android.mail.utils.E.e(d.mW, "Null folder cursor for mailbox %s", j.ayw.aBX);
                                        final int n2 = 0;
                                        s3 = string;
                                        int n3 = 4;
                                        if (n2 != 0) {
                                            n3 = 6;
                                        }
                                        if (TextUtils.isEmpty((CharSequence)s3)) {
                                            final Uri parse = null;
                                            c.a(parse).j(n3);
                                            return c;
                                        }
                                        break Label_0473;
                                    }
                                }
                                finally {
                                    query.close();
                                }
                                try {
                                    final boolean moveToFirst = query2.moveToFirst();
                                    Folder folder = null;
                                    if (moveToFirst) {
                                        folder = new Folder(query2);
                                    }
                                    query2.close();
                                    if (folder != null) {
                                        final e e = new e(this.mContext, j.lw(), folder, true);
                                        final String tu = e.tu();
                                        final boolean tv = e.tv();
                                        s3 = tu;
                                        final int n2 = tv ? 1 : 0;
                                        continue Label_0260_Outer;
                                    }
                                }
                                finally {
                                    query2.close();
                                }
                                com.android.mail.utils.E.f(d.mW, "Null folder for mailbox %s", j.ayw.aBX);
                                s3 = string;
                                final int n2 = 0;
                                continue Label_0260_Outer;
                            }
                            com.android.mail.utils.E.f(d.mW, "Null uiAccount for account id %d", k.Ln);
                            s3 = string;
                            final int n2 = 0;
                            continue Label_0260_Outer;
                        }
                        final Uri parse = Uri.parse(s3);
                        continue;
                    }
                }
                com.android.mail.providers.Account j = null;
                continue;
            }
        }
    }
    
    private void a(final long n, final String s, final String s2, final String s3, final Intent intent, final int n2) {
        this.eg.notify(n2, this.a(n, s, (CharSequence)s2, s3, intent, (0xF0000000 & n2) == 0x30000000).build());
    }
    
    private static void a(final Context context, final long n) {
        final Uri a = EmailProvider.a("uiaccount", n);
        final Cursor query = context.getContentResolver().query(ContentUris.withAppendedId(EmailContent.Yc, n), (String[])null, (String)null, (String[])null, (String)null);
        while (true) {
            while (true) {
                Label_0239: {
                    try {
                        while (query.moveToNext()) {
                            final long long1 = query.getLong(0);
                            if (long1 != 0L) {
                                final int int1 = query.getInt(2);
                                if (int1 != 0) {
                                    break Label_0239;
                                }
                                final int int2 = 0;
                                final Uri a2 = EmailProvider.a("uifolder", long1);
                                com.android.mail.utils.E.c(d.mW, "Changes to account " + n + ", folder: " + long1 + ", unreadCount: " + int2 + ", unseenCount: " + int1, new Object[0]);
                                final Intent intent = new Intent("com.android.mail.action.update_notification");
                                intent.setPackage(context.getPackageName());
                                intent.setType(EmailProvider.Si);
                                intent.putExtra("notification_extra_account", (Parcelable)a);
                                intent.putExtra("notification_extra_folder", (Parcelable)a2);
                                intent.putExtra("notification_updated_unread_count", int2);
                                intent.putExtra("notification_updated_unseen_count", int1);
                                context.sendOrderedBroadcast(intent, (String)null);
                            }
                        }
                        break;
                    }
                    finally {
                        query.close();
                    }
                }
                final int int2 = query.getInt(1);
                continue;
            }
        }
        query.close();
    }
    
    private void e(final long n) {
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        if (n == 1152921504606846976L) {
            final Cursor query = contentResolver.query(Account.CONTENT_URI, EmailContent.XT, (String)null, (String[])null, (String)null);
            try {
                while (query.moveToNext()) {
                    this.e(query.getLong(0));
                }
            }
            finally {
                query.close();
            }
            query.close();
        }
        else if (this.LG.get(n) == null) {
            com.android.mail.utils.E.d(d.mW, "Registering for notifications for account " + n, new Object[0]);
            final i i = new i(d.LD, this.mContext, n);
            contentResolver.registerContentObserver(g.Xx, true, (ContentObserver)i);
            this.LG.put(n, i);
            i.onChange(true);
        }
    }
    
    private static void gH() {
        synchronized (d.class) {
            if (d.LC == null) {
                d.LC = new j();
                d.LD = new Handler(d.LC.getLooper(), (Handler$Callback)new f());
            }
        }
    }
    
    public static d n(final Context context) {
        synchronized (d.class) {
            if (d.LE == null) {
                d.LE = new d(context, com.android.mail.utils.d.aOX);
            }
            return d.LE;
        }
    }
    
    private static void o(final Context context) {
        N.a(context, false, null, null, null);
    }
    
    @Override
    public final void a(final long n, final boolean b) {
        final Account k = Account.k(this.mContext, n);
        if (k != null) {
            final Mailbox d = Mailbox.d(this.mContext, n, 0);
            if (d != null) {
                Intent intent;
                if (b) {
                    intent = new Intent("android.intent.action.VIEW", EmailProvider.w(n));
                }
                else {
                    intent = new Intent("android.intent.action.VIEW", HeadlessAccountSettingsLoader.m(n));
                }
                this.a(d.Lq, this.mContext.getString(2131296787, new Object[] { k.Xy }), this.mContext.getString(2131296788), k.getDisplayName(), intent, 536870912 + (int)n);
            }
        }
    }
    
    @Override
    public final void a(final Context context, final Intent intent) {
        final Uri uri = (Uri)intent.getParcelableExtra("notification_extra_account");
        final Uri uri2 = (Uri)intent.getParcelableExtra("notification_extra_folder");
        final int intExtra = intent.getIntExtra("notification_updated_unread_count", 0);
        final int intExtra2 = intent.getIntExtra("notification_updated_unseen_count", 0);
        final ContentResolver contentResolver = context.getContentResolver();
        final Cursor query = contentResolver.query(uri, E.aCr, (String)null, (String[])null, (String)null);
        if (query == null) {
            com.android.mail.utils.E.f(d.mW, "Null account cursor for account " + uri, new Object[0]);
            return;
        }
        while (true) {
            while (true) {
                Label_0336: {
                    com.android.mail.providers.Account j;
                    try {
                        if (!query.moveToFirst()) {
                            break Label_0336;
                        }
                        com.android.mail.providers.Account.ue();
                        j = c.j(query);
                        query.close();
                        if (j == null) {
                            com.android.mail.utils.E.c(d.mW, "Tried to create a notification for a missing account " + uri, new Object[0]);
                            return;
                        }
                    }
                    finally {
                        query.close();
                    }
                    final Cursor query2 = contentResolver.query(uri2, E.aCv, (String)null, (String[])null, (String)null);
                    if (query2 == null) {
                        break;
                    }
                    try {
                        if (query2.moveToFirst()) {
                            final Folder folder = new Folder(query2);
                            query2.close();
                            N.a(context, intExtra, intExtra2, j, folder, true);
                            return;
                        }
                        com.android.mail.utils.E.f(d.mW, "Empty folder cursor for account " + uri + ", mailbox " + uri2, new Object[0]);
                        return;
                    }
                    finally {
                        query2.close();
                    }
                }
                com.android.mail.providers.Account j = null;
                continue;
            }
        }
        com.android.mail.utils.E.f(d.mW, "Null folder cursor for account " + uri + ", mailbox " + uri2, new Object[0]);
    }
    
    @Override
    public final void a(final Context context, final Account account) {
        final o j = n.j(context, account.Ln);
        if (j == null) {
            com.android.mail.utils.E.c(d.mW, "Can't cancel notification for missing account %d", account.Ln);
            return;
        }
        N.a(context, account.at(j.accountType));
        final NotificationManager eg = n(context).eg;
        eg.cancel((int)(536870912L + account.Ln));
        eg.cancel((int)(805306368L + account.Ln));
        eg.cancel((int)(1073741824L + account.Ln));
    }
    
    @Override
    public final void a(final Account account) {
        final Intent b = AccountSecurity.b(this.mContext, account.Ln, true);
        final String displayName = account.getDisplayName();
        this.a(account.Ln, this.mContext.getString(2131296897, new Object[] { displayName }), this.mContext.getString(2131296899), displayName, b, (int)(805306368L + account.Ln));
    }
    
    @Override
    public final void a(final EmailContent$Attachment emailContent$Attachment) {
        final g t = g.t(this.mContext, emailContent$Attachment.Yq);
        if (t == null) {
            return;
        }
        this.a(Mailbox.v(this.mContext, t.YR).Lq, this.mContext.getString(2131296785), this.mContext.getString(2131296786), emailContent$Attachment.Yl, null, 3);
    }
    
    @Override
    public final void b(final Account account) {
        final Intent intent = new Intent("android.intent.action.VIEW", EmailProvider.w(account.getId()));
        final String displayName = account.getDisplayName();
        this.a(account.Ln, this.mContext.getString(2131296898, new Object[] { displayName }), this.mContext.getString(2131296900), displayName, intent, (int)(1073741824L + account.Ln));
    }
    
    @Override
    public final void c(final Account account) {
        final Intent intent = new Intent("android.intent.action.VIEW", EmailProvider.w(account.getId()));
        final String displayName = account.getDisplayName();
        this.a(account.Ln, this.mContext.getString(2131296896, new Object[] { displayName }), this.mContext.getString(2131296901), displayName, intent, (int)(805306368L + account.Ln));
    }
    
    @Override
    public final void f(final long n) {
        this.eg.cancel(536870912 + (int)n);
    }
    
    @Override
    public final void g(final long n) {
        final Account k = Account.k(this.mContext, n);
        if (k == null) {
            return;
        }
        final Intent c = AccountSecurity.c(this.mContext, n, false);
        final String displayName = k.getDisplayName();
        this.a(n, this.mContext.getString(2131296905, new Object[] { displayName }), this.mContext.getString(2131296906), displayName, c, 4);
    }
    
    @Override
    public final void gG() {
        gH();
        d.LD.post((Runnable)new com.android.email.e(this));
    }
    
    @Override
    public final void gI() {
        this.eg.cancel(4);
        this.eg.cancel(5);
    }
    
    @Override
    public final void gJ() {
        com.android.emailcommon.b.g.a(new com.android.email.g(this));
    }
    
    @Override
    public final void h(final long n) {
        final Account k = Account.k(this.mContext, n);
        if (k == null) {
            return;
        }
        this.a(n, this.mContext.getString(2131296907), this.mContext.getString(2131296908), k.getDisplayName(), AccountSecurity.c(this.mContext, n, true), 5);
    }
}
