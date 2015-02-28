package com.google.android.gm.drive;

import com.android.mail.ui.*;
import android.content.*;
import android.os.*;
import com.google.android.gsf.*;
import com.google.android.gms.g.*;
import com.google.android.apiary.*;
import com.google.api.client.http.*;
import com.google.api.a.a.a.*;
import com.android.mail.utils.*;
import java.util.*;

public final class c extends cp<d>
{
    private static final String mW;
    private final ArrayList<String> awz;
    private final ArrayList<String> bam;
    private final String mAccount;
    
    static {
        mW = D.AU();
    }
    
    public c(final Context context, final Bundle bundle) {
        super(context);
        this.mAccount = bundle.getString("account");
        this.awz = (ArrayList<String>)bundle.getStringArrayList("recipients");
        this.bam = (ArrayList<String>)bundle.getStringArrayList("fileIds");
    }
    
    private d Dl() {
        try {
            if (com.google.android.gsf.c.a(this.getContext().getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
                a.ai(this.getContext());
            }
            final GoogleRequestInitializer googleRequestInitializer = new GoogleRequestInitializer(this.getContext().getApplicationContext(), "oauth2:https://www.googleapis.com/auth/drive", c.mW);
            googleRequestInitializer.w(this.mAccount);
            final com.google.api.a.a.a yd = new com.google.api.a.a.d(new com.google.api.client.http.a.c(), new com.google.api.client.extensions.android.json.a(), googleRequestInitializer).hF("Android Gmail").YD();
            final b b = new b();
            b.W(this.awz);
            b.V(this.bam);
            b.hI("READER");
            final boolean loggable = E.isLoggable(c.mW, 2);
            if (loggable) {
                E.b(c.mW, "check permissions request: %s", b.Yc());
            }
            final com.google.api.a.a.a.c c = yd.YC().a(b).Xe();
            if (loggable) {
                E.b(com.google.android.gm.drive.c.mW, "check permissions response: %s", c.Yc());
            }
            if (c != null) {
                final List<com.google.api.a.a.a.d> ye = c.YE();
                final ArrayList<PotentialFix> list = new ArrayList<PotentialFix>();
                if (ye != null) {
                    for (final com.google.api.a.a.a.d d : ye) {
                        if (PotentialFix.dG(d.Dq())) {
                            list.add(new PotentialFix(d));
                        }
                    }
                    return new d(c.YF(), list);
                }
                return new d(c.YF(), list);
            }
        }
        catch (Exception ex) {
            E.e(c.mW, ex, "problem checking Drive permission", new Object[0]);
        }
        return null;
    }
}
