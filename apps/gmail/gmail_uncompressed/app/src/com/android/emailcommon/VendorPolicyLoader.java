package com.android.emailcommon;

import java.lang.reflect.*;
import android.os.*;
import android.content.*;
import com.android.mail.utils.*;
import android.content.pm.*;

public final class VendorPolicyLoader
{
    private static final Class<?>[] VX;
    private static VendorPolicyLoader VY;
    private final Method VZ;
    
    static {
        VX = new Class[] { String.class, Bundle.class };
    }
    
    private VendorPolicyLoader(final Context context) {
        this(context, "com.android.email.policy", "com.android.email.policy.EmailPolicy");
    }
    
    private VendorPolicyLoader(final Context context, final String s, final String s2) {
        if (!o(context, s)) {
            this.VZ = null;
            return;
        }
        while (true) {
            try {
                final Method method = context.createPackageContext(s, 3).getClassLoader().loadClass(s2).getMethod("getPolicy", VendorPolicyLoader.VX);
                this.VZ = method;
            }
            catch (ClassNotFoundException ex) {
                E.e(b.mW, "VendorPolicyLoader: " + ex, new Object[0]);
                final Method method = null;
                continue;
            }
            catch (NoSuchMethodException ex2) {
                E.e(b.mW, "VendorPolicyLoader: " + ex2, new Object[0]);
                final Method method = null;
                continue;
            }
            catch (PackageManager$NameNotFoundException ex3) {
                final Method method = null;
                continue;
            }
            break;
        }
    }
    
    public static VendorPolicyLoader W(final Context context) {
        if (VendorPolicyLoader.VY == null) {
            VendorPolicyLoader.VY = new VendorPolicyLoader(context);
        }
        return VendorPolicyLoader.VY;
    }
    
    private Bundle a(final String s, final Bundle bundle) {
        while (true) {
            Label_0057: {
                if (this.VZ == null) {
                    break Label_0057;
                }
                try {
                    final Bundle bundle2 = (Bundle)this.VZ.invoke(null, s, bundle);
                    if (bundle2 != null) {
                        return bundle2;
                    }
                    return Bundle.EMPTY;
                }
                catch (Exception ex) {
                    E.e(b.mW, "VendorPolicyLoader", ex);
                }
            }
            final Bundle bundle2 = null;
            continue;
        }
    }
    
    private static boolean o(final Context context, final String s) {
        try {
            final int n = context.getPackageManager().getApplicationInfo(s, 0).flags & 0x1;
            boolean b = false;
            if (n != 0) {
                b = true;
            }
            return b;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return false;
        }
    }
    
    public final VendorPolicyLoader$Provider U(final String domain) {
        final Bundle bundle = new Bundle();
        bundle.putString("findProvider", domain);
        final Bundle a = this.a("findProvider", bundle);
        if (a != null && !a.isEmpty()) {
            final VendorPolicyLoader$Provider vendorPolicyLoader$Provider = new VendorPolicyLoader$Provider();
            vendorPolicyLoader$Provider.id = null;
            vendorPolicyLoader$Provider.label = null;
            vendorPolicyLoader$Provider.domain = domain;
            vendorPolicyLoader$Provider.incomingUriTemplate = a.getString("findProvider.inUri");
            vendorPolicyLoader$Provider.incomingUsernameTemplate = a.getString("findProvider.inUser");
            vendorPolicyLoader$Provider.outgoingUriTemplate = a.getString("findProvider.outUri");
            vendorPolicyLoader$Provider.outgoingUsernameTemplate = a.getString("findProvider.outUser");
            vendorPolicyLoader$Provider.note = a.getString("findProvider.note");
            return vendorPolicyLoader$Provider;
        }
        return null;
    }
    
    public final String b(final String s, final String s2, final String s3) {
        final Bundle bundle = new Bundle();
        bundle.putString("getImapId.user", s);
        bundle.putString("getImapId.host", s2);
        bundle.putString("getImapId.capabilities", s3);
        return this.a("getImapId", bundle).getString("getImapId");
    }
    
    public final boolean kN() {
        return this.a("useAlternateExchangeStrings", null).getBoolean("useAlternateExchangeStrings", false);
    }
}
