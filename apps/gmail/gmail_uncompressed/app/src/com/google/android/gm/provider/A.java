package com.google.android.gm.provider;

import android.accounts.*;
import com.google.common.a.a.*;
import android.content.*;
import com.google.android.gm.persistence.*;
import java.util.*;
import android.net.*;
import android.util.*;

public final class a
{
    private Account account;
    private Context bcb;
    private ConnectivityManager bcc;
    
    public a(final Context bcb, final Account account) {
        this.bcb = bcb;
        this.account = account;
        this.bcc = (ConnectivityManager)bcb.getSystemService("connectivity");
    }
    
    public final void a(final com.google.common.a.a.a a) {
        if (!Gmail.c(this.bcb.getContentResolver())) {
            a.q(1, false);
            return;
        }
        a.q(1, true);
        final com.google.common.a.a.a a2 = new com.google.common.a.a.a(com.google.android.gm.provider.a.a.bnx);
        a2.q(1, true);
        a2.q(2, true);
        a.a(11, a2);
        if (this.bcc != null) {
            final NetworkInfo activeNetworkInfo = this.bcc.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                switch (activeNetworkInfo.getType()) {
                    default: {
                        a.setInt(2, 0);
                        break;
                    }
                    case 0: {
                        a.setInt(2, 2);
                        break;
                    }
                    case 1: {
                        a.setInt(2, 1);
                        break;
                    }
                }
                a.q(3, activeNetworkInfo.isRoaming());
            }
        }
        a.q(4, ContentResolver.isSyncActive(this.account, "gmail-ls"));
        final Gmail$Settings p = Gmail.P(this.bcb, this.account.name);
        boolean b = false;
        Label_0195: {
            if (!p.EA().contains("^sq_ig_i_promo")) {
                final boolean contains = p.EB().contains("^sq_ig_i_promo");
                b = false;
                if (!contains) {
                    break Label_0195;
                }
            }
            b = true;
        }
        a.q(5, b);
        a.q(6, com.google.android.gm.persistence.b.bP(this.bcb).dK(this.account.name));
        a.setString(7, Locale.getDefault().toString());
        final DisplayMetrics displayMetrics = this.bcb.getResources().getDisplayMetrics();
        a.setInt(8, Math.min(Math.round(displayMetrics.widthPixels / displayMetrics.density), Math.round(displayMetrics.heightPixels / displayMetrics.density)));
    }
}
