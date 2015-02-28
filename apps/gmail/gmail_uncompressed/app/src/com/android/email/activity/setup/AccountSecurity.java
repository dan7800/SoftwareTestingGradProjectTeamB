package com.android.email.activity.setup;

import android.content.*;
import com.android.email.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import android.net.*;
import android.app.*;
import android.text.*;

public class AccountSecurity extends Activity
{
    private boolean MD;
    private boolean ME;
    private boolean MF;
    protected boolean MG;
    private boolean MH;
    private t MI;
    private Bundle MJ;
    private Account Ml;
    private Handler mHandler;
    
    private static void a(final Account account, final SecurityPolicy securityPolicy) {
        if (account == null) {
            return;
        }
        new r(securityPolicy, account).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
    }
    
    public static Intent b(final Context context, final long n, final boolean b) {
        final Intent intent = new Intent(context, (Class)AccountSecurity.class);
        intent.putExtra("ACCOUNT_ID", n);
        intent.putExtra("SHOW_DIALOG", b);
        return intent;
    }
    
    public static Intent c(final Context context, final long n, final boolean b) {
        final ForwardingIntent forwardingIntent = new ForwardingIntent(context, AccountSecurity.class);
        forwardingIntent.putExtra("ACCOUNT_ID", n);
        String s;
        if (b) {
            s = "EXPIRED";
        }
        else {
            s = "EXPIRING";
        }
        forwardingIntent.putExtra(s, true);
        return forwardingIntent;
    }
    
    private void g(final Account account) {
        final SecurityPolicy w = SecurityPolicy.w((Context)this);
        if (!w.hj()) {
            if (this.MD) {
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "Not active admin: repost notification", new Object[0]);
                }
                a(account, w);
                this.finish();
                return;
            }
            this.MD = true;
            final HostAuth xl = account.XL;
            if (xl == null) {
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "No HostAuth: repost notification", new Object[0]);
                }
                a(account, w);
                this.finish();
                return;
            }
            if (b.DEBUG) {
                E.c("Email/AccountSecurity", "Not active admin: post initial notification", new Object[0]);
            }
            final Intent intent = new Intent("android.app.action.ADD_DEVICE_ADMIN");
            intent.putExtra("android.app.extra.DEVICE_ADMIN", (Parcelable)w.hk());
            intent.putExtra("android.app.extra.ADD_EXPLANATION", this.getString(2131296903, new Object[] { xl.WA }));
            this.startActivityForResult(intent, 1);
        }
        else {
            if (w.a(null)) {
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "Security active; clear holds", new Object[0]);
                }
                Account.ab((Context)this);
                w.d(account);
                w.hh();
                this.finish();
                return;
            }
            w.hg();
            final int b = w.b(null);
            if ((b & 0x4) != 0x0) {
                if (this.ME) {
                    if (com.android.email.b.DEBUG) {
                        E.c("Email/AccountSecurity", "Password needed; repost notification", new Object[0]);
                    }
                    a(account, w);
                    this.finish();
                    return;
                }
                if (com.android.email.b.DEBUG) {
                    E.c("Email/AccountSecurity", "Password needed; request it via DPM", new Object[0]);
                }
                this.ME = true;
                this.startActivityForResult(new Intent("android.app.action.SET_NEW_PASSWORD"), 2);
            }
            else {
                if ((b & 0x8) == 0x0) {
                    if (com.android.email.b.DEBUG) {
                        E.c("Email/AccountSecurity", "Policies enforced; clear holds", new Object[0]);
                    }
                    Account.ab((Context)this);
                    w.d(account);
                    w.hh();
                    this.finish();
                    return;
                }
                if (this.MF) {
                    if (com.android.email.b.DEBUG) {
                        E.c("Email/AccountSecurity", "Encryption needed; repost notification", new Object[0]);
                    }
                    a(account, w);
                    this.finish();
                    return;
                }
                if (com.android.email.b.DEBUG) {
                    E.c("Email/AccountSecurity", "Encryption needed; request it via DPM", new Object[0]);
                }
                this.MF = true;
                this.startActivityForResult(new Intent("android.app.action.START_ENCRYPTION"), 3);
            }
        }
    }
    
    private void hy() {
        if (!this.MG) {
            this.getLoaderManager().initLoader(0, this.MJ, (LoaderManager$LoaderCallbacks)this.MI);
        }
    }
    
    public static Uri l(final long n) {
        final Uri$Builder buildUpon = Uri.parse("auth://" + EmailContent.XX + ".ACCOUNT_SECURITY/").buildUpon();
        k.a(buildUpon, n);
        buildUpon.appendQueryParameter("SHOW_DIALOG", Boolean.toString(true));
        return buildUpon.build();
    }
    
    protected final void a(final Account ml, final boolean b, final boolean b2, final boolean b3) {
        this.Ml = ml;
        if (b2 || b3) {
            final FragmentManager fragmentManager = this.getFragmentManager();
            if (fragmentManager.findFragmentByTag("password_expiration") == null) {
                final v a = v.a(this.Ml.getDisplayName(), b3);
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "Showing password expiration dialog", new Object[0]);
                }
                a.show(fragmentManager, "password_expiration");
            }
        }
        else {
            if (this.Ml.XJ == 0L) {
                this.finish();
                return;
            }
            if (!b) {
                this.g(this.Ml);
                return;
            }
            final FragmentManager fragmentManager2 = this.getFragmentManager();
            if (fragmentManager2.findFragmentByTag("security_needed") == null) {
                final w p4 = w.p(this.Ml.getDisplayName());
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "Showing security needed dialog", new Object[0]);
                }
                p4.show(fragmentManager2, "security_needed");
            }
        }
    }
    
    protected final boolean hx() {
        return this.MH;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.g(this.Ml);
        super.onActivityResult(n, n2, intent);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        final Intent intent = this.getIntent();
        Bundle mj;
        long b;
        if (intent.getExtras() == null) {
            mj = new Bundle();
            b = k.b(intent);
            mj.putLong("ACCOUNT_ID", b);
            final String queryParameter = intent.getData().getQueryParameter("SHOW_DIALOG");
            mj.putBoolean("SHOW_DIALOG", !TextUtils.isEmpty((CharSequence)queryParameter) && Boolean.getBoolean(queryParameter));
        }
        else {
            final long longExtra = intent.getLongExtra("ACCOUNT_ID", -1L);
            final Bundle extras = intent.getExtras();
            b = longExtra;
            mj = extras;
        }
        SecurityPolicy.w((Context)this).hh();
        if (b == -1L) {
            this.finish();
        }
        else {
            if (bundle != null) {
                this.MG = bundle.getBoolean("initialized", false);
                this.MD = bundle.getBoolean("triedAddAdministrator", false);
                this.ME = bundle.getBoolean("triedSetpassword", false);
                this.MF = bundle.getBoolean("triedSetEncryption", false);
                this.Ml = (Account)bundle.getParcelable("account");
            }
            if (!this.MG) {
                this.MJ = mj;
                this.MI = new t(this, (byte)0);
                this.hy();
            }
        }
    }
    
    protected void onPause() {
        super.onPause();
        this.MH = false;
    }
    
    protected void onResume() {
        super.onResume();
        this.MH = true;
        this.hy();
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("initialized", this.MG);
        bundle.putBoolean("triedAddAdministrator", this.MD);
        bundle.putBoolean("triedSetpassword", this.ME);
        bundle.putBoolean("triedSetEncryption", this.MF);
        bundle.putParcelable("account", (Parcelable)this.Ml);
    }
}
