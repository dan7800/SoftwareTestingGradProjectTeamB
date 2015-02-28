package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class l implements L
{
    final /* synthetic */ long To;
    final /* synthetic */ long Vr;
    final /* synthetic */ a aaq;
    final /* synthetic */ SearchParams aay;
    
    l(final a aaq, final long to, final SearchParams aay, final long vr) {
        this.aaq = aaq;
        this.To = to;
        this.aay = aay;
        this.Vr = vr;
    }
    
    @Override
    public final void run() {
        this.aaq.aak = this.aaq.aal.a(this.To, this.aay, this.Vr);
    }
}
