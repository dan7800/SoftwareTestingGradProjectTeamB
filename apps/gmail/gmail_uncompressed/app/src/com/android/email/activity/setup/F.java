package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import com.android.email.service.*;
import com.android.emailcommon.service.*;
import android.os.*;
import android.app.*;
import android.content.*;

final class f implements Runnable
{
    final /* synthetic */ Account Ms;
    final /* synthetic */ d Mt;
    
    f(final d mt, final Account ms) {
        this.Mt = mt;
        this.Ms = ms;
    }
    
    @Override
    public final void run() {
        if (this.Ms == null || !this.Mt.Mr.isResumed()) {
            return;
        }
        final j j = (j)this.Mt.Mr.getActivity();
        j.e(this.Ms);
        j.hs();
        final a i = n.i(this.Mt.Mr.Mq, this.Ms.Ln);
        try {
            i.B(this.Ms.Ln);
        }
        catch (RemoteException ex) {}
    }
}
