package com.android.email.activity.setup;

import com.android.emailcommon.mail.*;
import android.content.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.provider.*;
import com.android.email.mail.*;
import android.os.*;
import com.android.email.service.*;
import android.app.*;
import com.android.emailcommon.b.*;

final class a extends AsyncTask<Void, Integer, MessagingException>
{
    final int Mf;
    final AccountCheckSettingsFragment Mj;
    final SetupDataFragment Mk;
    final Account Ml;
    final String Mm;
    final String Mn;
    final String Mo;
    final Context mContext;
    
    public a(final Context mContext, final AccountCheckSettingsFragment mj, final int mf, final SetupDataFragment mk) {
        this.mContext = mContext;
        this.Mj = mj;
        this.Mf = mf;
        this.Mk = mk;
        this.Ml = mk.iB();
        if (this.Ml.XL != null) {
            this.Mm = this.Ml.XL.WA;
            this.Mn = this.Ml.XL.Qd;
        }
        else {
            this.Mm = null;
            this.Mn = null;
        }
        this.Mo = this.Ml.NP;
    }
    
    private MessagingException hm() {
        while (true) {
            while (true) {
                try {
                    if ((0x4 & this.Mf) != 0x0) {
                        if (this.isCancelled()) {
                            return null;
                        }
                        E.c(b.mW, "Begin auto-discover for %s", this.Mo);
                        this.publishProgress((Object[])new Integer[] { 1 });
                        final com.android.email.mail.b a = com.android.email.mail.b.a(this.Ml, this.mContext);
                        final Context mContext = this.mContext;
                        final Bundle b = a.b(this.Mo, this.Mn);
                        if (b == null) {
                            return new AccountCheckSettingsFragment$AutoDiscoverResults(false, null);
                        }
                        final int int1 = b.getInt("autodiscover_error_code");
                        if (int1 == 11) {
                            return new AccountCheckSettingsFragment$AutoDiscoverResults(true, null);
                        }
                        if (int1 != -1) {
                            return new AccountCheckSettingsFragment$AutoDiscoverResults(false, null);
                        }
                        final HostAuthCompat hostAuthCompat = (HostAuthCompat)b.getParcelable("autodiscover_host_auth");
                        HostAuth ly = null;
                        if (hostAuthCompat != null) {
                            ly = hostAuthCompat.lY();
                        }
                        return new AccountCheckSettingsFragment$AutoDiscoverResults(false, ly);
                    }
                    else {
                        if ((0x1 & this.Mf) != 0x0) {
                            if (this.isCancelled()) {
                                return null;
                            }
                            E.c(b.mW, "Begin check of incoming email settings", new Object[0]);
                            this.publishProgress((Object[])new Integer[] { 2 });
                            final Bundle il = com.android.email.mail.b.a(this.Ml, this.mContext).iL();
                            if (il == null) {
                                return new MessagingException(0);
                            }
                            this.Ml.XG = il.getString("validate_protocol_version");
                            int int2 = il.getInt("validate_result_code");
                            final String string = il.getString("validate_redirect_address", (String)null);
                            if (string != null) {
                                this.Ml.XL.WA = string;
                            }
                            if (int2 == 7 && this.Ml.lF()) {
                                int2 = -1;
                            }
                            if (int2 == 7) {
                                this.Mk.c((Policy)il.getParcelable("validate_policy_set"));
                                return new MessagingException(int2, this.Mm);
                            }
                            if (int2 == 8) {
                                return new MessagingException(int2, this.Mm, ((Policy)il.getParcelable("validate_policy_set")).aag.split("\u0001"));
                            }
                            if (int2 != -1) {
                                return new MessagingException(int2, il.getString("validate_error_message"));
                            }
                        }
                        if (this.Ml.XL != null) {
                            final o l = n.l(this.mContext, this.Ml.XL.Zh);
                            if ((l == null || l.UK) && (0x2 & this.Mf) != 0x0) {
                                if (this.isCancelled()) {
                                    return null;
                                }
                                E.c(b.mW, "Begin check of outgoing email settings", new Object[0]);
                                this.publishProgress((Object[])new Integer[] { 3 });
                                final com.android.email.mail.a f = com.android.email.mail.a.f(this.mContext, this.Ml);
                                f.close();
                                f.open();
                                f.close();
                            }
                            return null;
                        }
                    }
                }
                catch (MessagingException ex) {
                    return ex;
                }
                final o l = null;
                continue;
            }
        }
    }
}
