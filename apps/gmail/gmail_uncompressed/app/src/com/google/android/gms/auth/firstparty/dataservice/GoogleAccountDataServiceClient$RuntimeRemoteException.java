package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;

public class GoogleAccountDataServiceClient$RuntimeRemoteException extends RuntimeException
{
    private final RemoteException GE;
    
    public GoogleAccountDataServiceClient$RuntimeRemoteException(final RemoteException ge) {
        super((Throwable)ge);
        this.GE = ge;
    }
}
