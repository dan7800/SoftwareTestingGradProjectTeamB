package com.android.email.service;

import com.android.mail.utils.*;
import android.app.*;
import java.util.concurrent.*;
import android.content.*;
import com.android.emailcommon.service.*;
import java.util.*;
import com.android.emailcommon.b.*;
import com.android.email.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.io.*;
import android.os.*;

final class e
{
    private final int Uh;
    final PriorityQueue<g> Ui;
    final ConcurrentHashMap<Long, g> Uj;
    private final Object fK;
    
    e() {
        this.Uh = 10;
        this.fK = new Object();
        this.Ui = new PriorityQueue<g>(10, new f((byte)0));
        this.Uj = new ConcurrentHashMap<Long, g>();
    }
    
    public final boolean c(final g g) {
        if (g == null) {
            throw new NullPointerException();
        }
        final long ul = g.Ul;
        if (ul < 0L) {
            E.c("AttachmentService", "Not adding a DownloadRequest with an invalid attachment id", new Object[0]);
            return false;
        }
        (new Object[1])[0] = ul;
        AttachmentService.ky();
        synchronized (this.fK) {
            if (!this.Uj.containsKey(ul)) {
                this.Ui.offer(g);
                this.Uj.put(ul, g);
            }
            else {
                AttachmentService.ky();
            }
            return true;
        }
    }
    
    public final boolean d(final g g) {
        if (g == null) {
            return true;
        }
        (new Object[1])[0] = g.Ul;
        AttachmentService.ky();
        synchronized (this.fK) {
            final boolean remove = this.Ui.remove(g);
            if (remove) {
                this.Uj.remove(g.Ul);
            }
            return remove;
        }
    }
    
    public final int getSize() {
        synchronized (this.fK) {
            return this.Uj.size();
        }
    }
    
    public final boolean isEmpty() {
        synchronized (this.fK) {
            return this.Uj.isEmpty();
        }
    }
    
    public final g kA() {
        synchronized (this.fK) {
            final g g = this.Ui.poll();
            if (g != null) {
                this.Uj.remove(g.Ul);
            }
            // monitorexit(this.fK)
            if (g != null) {
                (new Object[1])[0] = g.Ul;
                AttachmentService.ky();
            }
            return g;
        }
    }
    
    public final g z(final long n) {
        if (n < 0L) {
            return null;
        }
        synchronized (this.fK) {
            return this.Uj.get(n);
        }
    }
}
