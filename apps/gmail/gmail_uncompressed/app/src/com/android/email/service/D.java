package com.android.email.service;

import android.app.*;
import java.util.concurrent.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.emailcommon.service.*;
import java.util.*;
import com.android.emailcommon.b.*;
import com.android.email.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.io.*;
import android.os.*;

final class d implements Runnable
{
    final /* synthetic */ int Uf;
    final /* synthetic */ AttachmentService$AttachmentWatchdog Ug;
    
    d(final AttachmentService$AttachmentWatchdog ug, final int uf) {
        this.Ug = ug;
        this.Uf = uf;
    }
    
    @Override
    public final void run() {
        final AttachmentService ts = AttachmentService.TS;
        if (ts == null || ts.Lz) {
            return;
        }
        this.Ug.a(ts, this.Uf);
    }
}
