package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class h implements L
{
    final /* synthetic */ long To;
    final /* synthetic */ a aaq;
    
    h(final a aaq, final long to) {
        this.aaq = aaq;
        this.To = to;
    }
    
    @Override
    public final void run() {
        this.aaq.aal.B(this.To);
    }
}
