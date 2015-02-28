package com.google.android.gm.drive;

import android.content.*;
import com.google.android.gsf.*;
import com.google.android.gms.g.*;
import com.google.android.apiary.*;
import com.google.api.a.a.*;
import com.google.api.client.http.*;
import com.google.api.a.a.a.*;
import com.android.mail.utils.*;

public final class g implements Runnable
{
    private static final String mW;
    private final PotentialFix bat;
    private final String bau;
    private final String mAccount;
    private final Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public g(final Context mContext, final String mAccount, final PotentialFix bat, final String bau) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.bat = bat;
        this.bau = bau;
    }
    
    @Override
    public final void run() {
        try {
            if (c.a(this.mContext.getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
                a.ai(this.mContext);
            }
            final GoogleRequestInitializer googleRequestInitializer = new GoogleRequestInitializer(this.mContext.getApplicationContext(), "oauth2:https://www.googleapis.com/auth/drive", g.mW);
            googleRequestInitializer.w(this.mAccount);
            final com.google.api.a.a.a yd = new d(new com.google.api.client.http.a.c(), new com.google.api.client.extensions.android.json.a(), googleRequestInitializer).hF("Android Gmail").YD();
            final com.google.api.a.a.a.g g = new com.google.api.a.a.a.g();
            final String dq = this.bat.Dq();
            g.Y(this.bat.Dr());
            g.X(this.bat.Ds());
            g.hK(this.bau);
            g.hJ(dq);
            E.b(com.google.android.gm.drive.g.mW, "fix permissions request: %s", g);
            yd.YC().a(g).Xe();
        }
        catch (Exception ex) {
            E.e(g.mW, ex, "problem fixing Drive permission", new Object[0]);
        }
    }
}
