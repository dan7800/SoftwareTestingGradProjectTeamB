package com.android.email.service;

import com.android.mail.utils.*;
import android.app.*;
import android.content.*;
import java.util.concurrent.*;
import com.android.emailcommon.service.*;
import java.util.*;
import com.android.emailcommon.b.*;
import com.android.email.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.io.*;
import android.os.*;

final class h extends v
{
    final /* synthetic */ AttachmentService Us;
    
    h(final AttachmentService us) {
        this.Us = us;
    }
    
    public final void a(final long n, final long n2, final int un, final int uo) {
        final Object[] array = { "ServiceCallback for attachment #%d", n2 };
        AttachmentService.ky();
        final g g = this.Us.TX.get(n2);
        if (g != null) {
            final long currentTimeMillis = System.currentTimeMillis();
            final Object[] array2 = { g.Un, un };
            AttachmentService.ky();
            final Object[] array3 = { g.Uo, uo };
            AttachmentService.ky();
            final Object[] array4 = { g.Up, currentTimeMillis };
            AttachmentService.ky();
            g.Un = un;
            g.Uo = uo;
            g.Up = currentTimeMillis;
            final EmailContent$Attachment o = EmailContent$Attachment.o((Context)this.Us, n2);
            final ContentValues contentValues = new ContentValues();
            if (o != null && un == 1) {
                contentValues.put("uiState", 2);
                contentValues.put("uiDownloadedSize", o.Lo * uo / 100L);
            }
            if (contentValues.size() > 0) {
                o.a((Context)this.Us, contentValues);
            }
            switch (un) {
                default: {
                    E.c("AttachmentService", "Attachment #%d is done", n2);
                    this.Us.d(n2, un);
                    break;
                }
                case 1: {
                    break;
                }
            }
        }
    }
}
