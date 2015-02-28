package com.android.emailcommon.b;

import android.content.*;
import com.android.emailcommon.provider.*;
import javax.net.ssl.*;
import com.android.mail.utils.*;
import java.security.*;

public final class o
{
    private static SSLSocketFactory abC;
    private static p abD;
    
    public static SSLSocketFactory a(final Context context, final HostAuth hostAuth, final boolean b) {
        while (true) {
            synchronized (o.class) {
                if (o.abD != null) {
                    o.abD.ai(context);
                }
                Label_0056: {
                    if (!b) {
                        break Label_0056;
                    }
                    try {
                        return n.a(null, new TrustManager[] { new q(context, hostAuth) });
                        // iftrue(Label_0072:, o.abC != null)
                        o.abC = n.a(null);
                        Label_0072: {
                            abC = o.abC;
                        }
                    }
                    catch (NoSuchAlgorithmException ex) {
                        E.f("Email.Ssl", ex, "Unable to acquire SSLSocketFactory", new Object[0]);
                    }
                    catch (KeyManagementException ex2) {
                        E.f("Email.Ssl", ex2, "Unable to acquire SSLSocketFactory", new Object[0]);
                    }
                }
            }
            return null;
        }
    }
    
    public static void a(final p abD) {
        o.abD = abD;
    }
}
