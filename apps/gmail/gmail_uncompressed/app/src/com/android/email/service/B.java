package com.android.email.service;

import com.android.email.*;
import android.app.*;
import com.android.emailcommon.service.*;
import android.content.*;
import android.os.*;
import java.io.*;

final class b implements Runnable
{
    final /* synthetic */ a TQ;
    
    b(final a tq) {
        this.TQ = tq;
    }
    
    @Override
    public final void run() {
        n.N(this.TQ.TP.mContext);
        com.android.email.b.l(this.TQ.TP.mContext);
    }
}
