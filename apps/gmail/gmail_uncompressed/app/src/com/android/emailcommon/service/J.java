package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class j implements L
{
    final /* synthetic */ a aaq;
    final /* synthetic */ long aav;
    final /* synthetic */ int aaw;
    
    j(final a aaq, final long aav, final int aaw) {
        this.aaq = aaq;
        this.aav = aav;
        this.aaw = aaw;
    }
    
    @Override
    public final void run() {
        this.aaq.aal.e(this.aav, this.aaw);
    }
}
