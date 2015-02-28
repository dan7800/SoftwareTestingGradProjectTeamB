package com.google.android.gms.g;

import java.lang.reflect.*;
import android.content.*;
import com.google.android.gms.common.internal.*;
import android.util.*;
import com.google.android.gms.common.*;

public final class a
{
    private static final Object ckB;
    private static Method ckC;
    
    static {
        ckB = new Object();
        a.ckC = null;
    }
    
    public static void ai(final Context context) {
        G.f(context, "Context must not be null");
        f.ce(context);
        final Context cg = f.cg(context);
        if (cg == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (a.ckB) {
            try {
                if (a.ckC == null) {
                    a.ckC = cg.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                }
                a.ckC.invoke(null, cg);
            }
            catch (Exception ex) {
                Log.e("ProviderInstaller", "Failed to install provider: " + ex.getMessage());
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }
}
