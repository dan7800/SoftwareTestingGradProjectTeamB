package com.android.email.service;

import com.android.emailcommon.service.*;
import com.android.emailcommon.mail.*;
import android.os.*;

public final class m implements f
{
    private final long Ul;
    private final u Ux;
    final /* synthetic */ l Uy;
    private final long mMessageId;
    
    public m(final l uy, final long mMessageId, final long ul, final u ux) {
        this.Uy = uy;
        this.mMessageId = mMessageId;
        this.Ul = ul;
        this.Ux = ux;
    }
    
    @Override
    public final void b(final Message message) {
    }
    
    @Override
    public final void be(final int n) {
        try {
            this.Ux.a(this.mMessageId, this.Ul, 1, n);
        }
        catch (RemoteException ex) {}
    }
}
