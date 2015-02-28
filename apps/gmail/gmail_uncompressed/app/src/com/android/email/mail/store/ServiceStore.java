package com.android.email.mail.store;

import com.android.email.mail.*;
import com.android.emailcommon.provider.*;
import android.content.*;
import com.android.email.service.*;
import android.os.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.mail.*;

public class ServiceStore extends b
{
    protected final HostAuth mHostAuth;
    
    private ServiceStore(final Account account, final Context mContext) {
        this.mContext = mContext;
        this.mHostAuth = account.Z(this.mContext);
    }
    
    private r jr() {
        return n.k(this.mContext, this.mHostAuth.Zh);
    }
    
    public static b newInstance(final Account account, final Context context) {
        return new ServiceStore(account, context);
    }
    
    @Override
    public final Bundle b(final String s, final String s2) {
        try {
            return this.jr().q(s, s2);
        }
        catch (RemoteException ex) {
            return null;
        }
    }
    
    @Override
    public final Bundle iL() {
        try {
            final r jr = this.jr();
            if (jr instanceof a) {
                ((a)jr).lZ();
            }
            return jr.a(new HostAuthCompat(this.mHostAuth));
        }
        catch (RemoteException ex) {
            throw new MessagingException("Call to validate generated an exception", (Throwable)ex);
        }
    }
}
