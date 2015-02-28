package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class f implements L
{
    final /* synthetic */ a aaq;
    final /* synthetic */ HostAuthCompat aas;
    
    f(final a aaq, final HostAuthCompat aas) {
        this.aaq = aaq;
        this.aas = aas;
    }
    
    @Override
    public final void run() {
        this.aaq.aak = this.aaq.aal.a(this.aas);
    }
}
