package com.android.mail.compose;

import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
import android.net.*;
import com.android.b.*;
import android.text.util.*;
import android.content.res.*;
import com.android.emailcommon.mail.*;
import android.view.inputmethod.*;
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import android.text.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

final class l implements v
{
    final /* synthetic */ g awi;
    
    l(final g awi) {
        this.awi = awi;
    }
    
    @Override
    public final void a(final w w, final Message message) {
        synchronized (this.awi.avT) {
            this.awi.avQ = message.id;
            this.awi.avR = message;
            if (g.avm != null) {
                g.avm.put(w.awc, this.awi.avQ);
            }
            final g awi = this.awi;
            g.sI();
            // monitorexit(g.d(this.awi))
            if (g.avl != null) {
                g.avl.a(w, message);
            }
        }
    }
    
    @Override
    public final void a(final w w, final boolean b) {
        if (this.awi.Nc != null) {
            t.vi().bV(this.awi.Nc.uri.toString());
        }
        Label_0096: {
            if (!b) {
                break Label_0096;
            }
            this.awi.sB();
            while (true) {
                synchronized (g.avo) {
                    if (g.avo.addAndGet(-1) == 0) {
                        this.awi.stopService(new Intent((Context)this.awi, (Class)EmptyService.class));
                    }
                    // monitorexit(g.avo)
                    if (g.avl != null) {
                        g.avl.a(w, b);
                    }
                    return;
                    Toast.makeText((Context)this.awi, 2131296504, 0).show();
                }
            }
        }
    }
    
    @Override
    public final void sL() {
        final Intent intent = new Intent((Context)this.awi, (Class)EmptyService.class);
        if (ag.Be()) {
            final ClipDescription clipDescription = new ClipDescription((CharSequence)"attachment_uris", new String[] { "text/uri-list" });
            final Iterator<Attachment> iterator = this.awi.avw.sc().iterator();
            ClipData clipData = null;
            while (iterator.hasNext()) {
                final Attachment attachment = iterator.next();
                if (attachment != null && !ag.D(attachment.ayP)) {
                    final ClipData$Item clipData$Item = new ClipData$Item(attachment.ayP);
                    if (clipData == null) {
                        clipData = new ClipData(clipDescription, clipData$Item);
                    }
                    else {
                        clipData.addItem(clipData$Item);
                    }
                }
            }
            intent.setClipData(clipData);
            intent.setFlags(1);
        }
        synchronized (g.avo) {
            if (g.avo.getAndAdd(1) == 0) {
                this.awi.startService(intent);
            }
            // monitorexit(g.avo)
            if (g.avl != null) {
                g.avl.sL();
            }
        }
    }
    
    @Override
    public final long sM() {
        synchronized (this.awi.avT) {
            return this.awi.avQ;
        }
    }
}
