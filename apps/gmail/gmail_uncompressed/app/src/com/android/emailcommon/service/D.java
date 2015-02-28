package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class d implements L
{
    final /* synthetic */ long To;
    final /* synthetic */ a aaq;
    final /* synthetic */ Bundle aar;
    
    d(final a aaq, final long to, final Bundle aar) {
        this.aaq = aaq;
        this.To = to;
        this.aar = aar;
    }
    
    @Override
    public final void run() {
        this.aaq.aak = this.aaq.aal.a(this.To, this.aar);
    }
}
