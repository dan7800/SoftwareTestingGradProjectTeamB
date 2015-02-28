package com.android.email.service;

import com.android.mail.utils.*;
import android.app.*;
import java.util.*;
import java.util.concurrent.*;
import android.content.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.b.*;
import com.android.email.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.io.*;
import android.os.*;

public class AttachmentService$AttachmentWatchdog extends BroadcastReceiver
{
    private PendingIntent Ue;
    
    public final void L(final Context context) {
        this.g(context, 20000L);
    }
    
    final void a(final AttachmentService attachmentService, final int n) {
        AttachmentService.ky();
        for (final g g : attachmentService.TX.values()) {
            (new Object[1])[0] = g.Ul;
            AttachmentService.ky();
            int n2;
            if (System.currentTimeMillis() - g.Up > n) {
                E.c("AttachmentService", "Timeout for DownloadRequest #%d ", g.Ul);
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 != 0) {
                E.e("AttachmentService", "Cancelling DownloadRequest #%d", g.Ul);
                attachmentService.b(g);
            }
        }
        if (attachmentService.isConnected()) {
            attachmentService.kw();
        }
        if (!attachmentService.TX.isEmpty()) {
            AttachmentService.ky();
            this.L((Context)attachmentService);
        }
    }
    
    public final void g(final Context context, final long n) {
        if (this.Ue == null) {
            final Intent intent = new Intent(context, (Class)AttachmentService$AttachmentWatchdog.class);
            intent.putExtra("callback_timeout", 30000);
            this.Ue = PendingIntent.getBroadcast(context, 0, intent, 0);
        }
        ((AlarmManager)context.getSystemService("alarm")).set(0, n + System.currentTimeMillis(), this.Ue);
        (new Object[1])[0] = n;
        AttachmentService.ky();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        new Thread(new d(this, intent.getIntExtra("callback_timeout", 30000)), "AttachmentService AttachmentWatchdog").start();
    }
}
