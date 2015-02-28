package com.google.android.gms.drive;

import com.google.android.gms.common.api.*;
import android.content.*;
import com.google.android.gms.common.internal.*;
import android.os.*;
import com.google.android.gms.drive.internal.*;

public final class n
{
    private String bGC;
    private String[] bGD;
    private DriveId bGE;
    
    public final IntentSender c(final com.google.android.gms.common.api.n n) {
        G.a(n.isConnected(), "Client must be connected");
        if (this.bGD == null) {
            this.bGD = new String[0];
        }
        final c mb = n.a(a.bBI).Mb();
        try {
            return mb.a(new OpenFileIntentSenderRequest(this.bGC, this.bGD, this.bGE));
        }
        catch (RemoteException ex) {
            throw new RuntimeException("Unable to connect Drive Play Service", (Throwable)ex);
        }
    }
}
