package com.google.android.gm.welcome;

import android.content.*;
import java.util.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.android.mail.utils.*;
import android.text.*;
import com.google.android.gms.auth.firstparty.dataservice.*;

final class g implements Runnable
{
    private final String Tz;
    private final Context mContext;
    
    g(final Context mContext, final String tz) {
        this.mContext = mContext;
        this.Tz = tz;
    }
    
    @Override
    public final void run() {
        while (true) {
            final GoogleAccountDataServiceClient googleAccountDataServiceClient = new GoogleAccountDataServiceClient(this.mContext);
            final String string = UUID.randomUUID().toString();
            final TokenRequest fl = new TokenRequest().JT().a(new AppDescription(this.mContext.getPackageName(), this.mContext.getApplicationInfo().uid, string, string)).fK(this.Tz).fL("oauth2:https://www.googleapis.com/auth/gmail.readonly");
            E.c("WelcomeTour", "Token request created", new Object[0]);
            while (true) {
                try {
                    final TokenResponse a = googleAccountDataServiceClient.a(fl);
                    CharSequence ju = null;
                    if (a != null) {
                        ju = a.JU();
                    }
                    if (!TextUtils.isEmpty(ju)) {
                        E.d("WelcomeTour", "Successfully obtained token forcing email check", new Object[0]);
                        return;
                    }
                    final Object[] array = { null };
                    if (a == null) {
                        final String s = "response";
                        array[0] = s;
                        E.e("WelcomeTour", "Failed to obtain token - %s was null", array);
                        return;
                    }
                }
                catch (RuntimeException ex) {
                    E.f("WelcomeTour", "Failed to obtain token - %s", ex.getMessage());
                    return;
                }
                final String s = "token";
                continue;
            }
        }
    }
}
