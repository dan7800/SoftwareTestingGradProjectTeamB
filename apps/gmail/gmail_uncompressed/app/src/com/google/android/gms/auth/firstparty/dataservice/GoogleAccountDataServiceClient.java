package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.*;
import com.google.android.gms.auth.*;
import com.google.android.gms.common.*;
import android.content.*;
import android.util.*;
import android.os.*;

public final class GoogleAccountDataServiceClient
{
    private final Context mContext;
    
    public GoogleAccountDataServiceClient(final Context context) {
        this.mContext = G.ae(context);
    }
    
    private <R> R a(final b<R> b) {
        final Intent putExtra = new Intent().setPackage("com.google.android.gms").setAction("com.google.android.gms.auth.DATA_PROXY").addCategory("android.intent.category.DEFAULT").putExtra(d.KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        final long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final h h = new h();
            if (this.mContext.bindService(putExtra, (ServiceConnection)h, 1)) {
                try {
                    return b.a(H.f(h.Kn()));
                }
                catch (InterruptedException ex) {
                    Log.w("GoogleAccountDataServiceClient", "[GoogleAccountDataServiceClient]  Interrupted when getting service: " + ex.getMessage());
                    throw new GoogleAccountDataServiceClient$RuntimeInterruptedException(ex);
                }
                catch (RemoteException ex2) {
                    Log.w("GoogleAccountDataServiceClient", "[GoogleAccountDataServiceClient]  RemoteException when executing call!", (Throwable)ex2);
                    throw new GoogleAccountDataServiceClient$RuntimeRemoteException(ex2);
                }
                finally {
                    this.mContext.unbindService((ServiceConnection)h);
                }
            }
        }
        finally {}
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return null;
    }
    
    public final TokenResponse a(final TokenRequest tokenRequest) {
        G.f("TokenRequest cannot be null!", (Object)tokenRequest);
        return this.a((b<TokenResponse>)new a(this, tokenRequest));
    }
}
