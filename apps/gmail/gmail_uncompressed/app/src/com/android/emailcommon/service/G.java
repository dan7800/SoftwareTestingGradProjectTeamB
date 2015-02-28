package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class g implements L
{
    final /* synthetic */ a aaq;
    final /* synthetic */ String aat;
    final /* synthetic */ String aau;
    
    g(final a aaq, final String aat, final String aau) {
        this.aaq = aaq;
        this.aat = aat;
        this.aau = aau;
    }
    
    @Override
    public final void run() {
        this.aaq.aak = this.aaq.aal.q(this.aat, this.aau);
    }
}
