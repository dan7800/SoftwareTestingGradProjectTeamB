package com.google.android.gm.ui;

import com.google.android.gms.f.*;
import com.google.android.gm.c.*;
import com.android.mail.b.*;
import android.app.*;
import com.google.android.gm.welcome.*;
import android.content.*;
import com.android.mail.i.*;
import com.google.android.gsf.*;
import com.android.mail.utils.*;
import android.text.*;
import android.os.*;
import android.net.*;
import java.util.*;
import com.google.android.gm.provider.*;
import android.view.*;
import com.google.android.gm.persistence.*;
import com.android.mail.ui.*;
import com.android.mail.providers.*;
import com.google.android.gm.*;

public class MailActivityGmail extends MailActivity implements e
{
    private static final UriMatcher ajR;
    private a aXb;
    private com.google.android.gm.c.a aXj;
    private h bqB;
    
    static {
        (ajR = new UriMatcher(-1)).addURI("gmail-ls", "account/*/label/*", 1);
        MailActivityGmail.ajR.addURI("com.google.android.gm", "*/label/#", 2);
        MailActivityGmail.ajR.addURI("com.android.gmail.ui", "*/label/*", 3);
    }
    
    public MailActivityGmail() {
        this.aLa = new n();
    }
    
    @Override
    public final j a(final ContentResolver contentResolver, final com.android.a.a a) {
        return new l(this.bqB.ID(), this.yd().oN().lw(), a);
    }
    
    @Override
    public final void a(final Account account, final int n) {
        int n2;
        if (dD.dl(n)) {
            n2 = 2131296356;
        }
        else if (dD.dk(n)) {
            n2 = 2131296355;
        }
        else {
            n2 = 2131297015;
        }
        ay.a(this, account, this.getString(n2));
    }
    
    @Override
    public final void dy(final int n) {
        if (n == 1000) {
            this.finish();
            return;
        }
        this.bqB.DE();
    }
    
    @Override
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        if (!this.bqB.U(n, n2)) {
            super.onActivityResult(n, n2, intent);
        }
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        if (WelcomeTourActivity.d((Context)this, this.getIntent())) {
            super.onCreate(bundle);
            this.finish();
            return;
        }
        com.android.mail.i.g.ao((Context)this).cx(c.getInt(this.getContentResolver(), "gmail_required_sanitizer_version_number", 1));
        final Intent intent = this.getIntent();
        final String action = intent.getAction();
        String s = null;
        String stringExtra = null;
        Label_0090: {
            if (action == null && intent.hasExtra("label") && intent.hasExtra("account")) {
                s = intent.getStringExtra("label");
                stringExtra = intent.getStringExtra("account");
            }
            else {
                if ("android.intent.action.VIEW".equals(action) && intent.getData() != null) {
                    final Uri data = intent.getData();
                    switch (MailActivityGmail.ajR.match(data)) {
                        case 1: {
                            final List pathSegments = intent.getData().getPathSegments();
                            stringExtra = pathSegments.get(1);
                            s = pathSegments.get(3);
                            break Label_0090;
                        }
                        case 2: {
                            while (true) {
                                E.c(ay.mW, "Public content provider view intent", new Object[0]);
                                final List pathSegments2 = intent.getData().getPathSegments();
                                stringExtra = pathSegments2.get(0);
                                final String s2 = pathSegments2.get(2);
                                while (true) {
                                    int n = 0;
                                    Label_0399: {
                                        try {
                                            final long long1 = Long.parseLong(s2);
                                            if (TextUtils.isEmpty((CharSequence)stringExtra)) {
                                                break;
                                            }
                                            final U c = Y.c((Context)this, stringExtra, false);
                                            final int size = c.size();
                                            n = 0;
                                            if (n >= size) {
                                                break;
                                            }
                                            final com.google.android.gm.provider.T dp = c.dP(n);
                                            if (dp == null || dp.getId() != long1) {
                                                break Label_0399;
                                            }
                                            s = dp.getCanonicalName();
                                        }
                                        catch (NumberFormatException ex) {
                                            E.e(ay.mW, ex, "problem parsing labelId", new Object[0]);
                                            s = null;
                                        }
                                        break Label_0090;
                                    }
                                    ++n;
                                    continue;
                                }
                            }
                            s = null;
                            break Label_0090;
                        }
                        case 3: {
                            final Uri build = data.buildUpon().appendQueryParameter("inboxFallback", Boolean.TRUE.toString()).build();
                            intent.setData(build);
                            intent.putExtra("folderUri", (Parcelable)build);
                            break;
                        }
                    }
                }
                stringExtra = null;
                s = null;
            }
        }
        Intent g;
        if (stringExtra != null && s != null) {
            g = ay.g((Context)this, stringExtra, s);
        }
        else {
            g = intent;
        }
        this.setIntent(g);
        this.bqB = new G(this, this, bundle, "state-resolving-people-error", "Contacts");
        super.onCreate(bundle);
        this.aXb = ay.aX((Context)this);
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return ay.dA(n) || super.onKeyDown(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (ay.dA(n)) {
            this.openOptionsMenu();
            return true;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    @Override
    public void onPause() {
        super.onPause();
        if (this.aXj != null) {
            this.aXj.cancel(true);
        }
    }
    
    @Override
    public void onResume() {
        super.onResume();
        if (this.aXb != null) {
            this.aXb.g(this.getPackageName(), "activity", "main");
        }
        if (c.a(this.getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
            (this.aXj = new com.google.android.gm.c.a(this)).execute((Object[])new Void[0]);
        }
    }
    
    @Override
    public void onSaveInstanceState(final Bundle bundle) {
        this.bqB.onSaveInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }
    
    @Override
    protected void onStart() {
        super.onStart();
        this.bqB.onStart();
    }
    
    @Override
    protected void onStop() {
        final Account[] uo = this.yd().uo();
        if (uo != null && b.DD().bS((Context)this) > 0) {
            final com.android.mail.i.g ao = com.android.mail.i.g.ao((Context)this);
            final long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - ao.tW() > 86400000L) {
                ao.R(currentTimeMillis);
                for (final Account account : uo) {
                    com.android.mail.a.a.oq().a("account_present", com.google.android.gm.c.c.fu(com.google.android.gm.c.c.ft(account.lw())), account.getType(), 0L);
                }
            }
        }
        this.bqB.onStop();
        super.onStop();
    }
    
    @Override
    public final ar yj() {
        return new com.google.android.gm.ui.k((Context)this, this.bqB.ID(), this.yd().oN().lw());
    }
    
    @Override
    public final z zJ() {
        return new com.google.android.gm.as((Context)this);
    }
}
