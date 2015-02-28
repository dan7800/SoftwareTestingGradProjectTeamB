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

public class AttachmentService extends Service implements Runnable
{
    static volatile AttachmentService TS;
    private static final Queue<long[]> TZ;
    private volatile boolean Lz;
    final h TR;
    c TT;
    final AttachmentService$AttachmentWatchdog TU;
    final ConcurrentHashMap<Long, Long> TV;
    final ConcurrentHashMap<Long, Integer> TW;
    final ConcurrentHashMap<Long, g> TX;
    final e TY;
    com.android.email.service.c Ua;
    private final HashMap<Long, Intent> Ub;
    private final Object fK;
    
    static {
        AttachmentService.TS = null;
        TZ = new ConcurrentLinkedQueue<long[]>();
    }
    
    public AttachmentService() {
        this.TR = new h(this);
        this.Lz = false;
        this.TU = new AttachmentService$AttachmentWatchdog();
        this.fK = new Object();
        this.TV = new ConcurrentHashMap<Long, Long>();
        this.TW = new ConcurrentHashMap<Long, Integer>();
        this.TX = new ConcurrentHashMap<Long, g>();
        this.TY = new e();
        this.Ub = new HashMap<Long, Intent>();
    }
    
    public static void a(final Context context, final long n, final int n2) {
        E.c("AttachmentService", "Attachment with id: %d will potentially be queued for download", n);
        final Intent intent = new Intent(context, (Class)AttachmentService.class);
        final Object[] array = { n, n2 };
        intent.putExtra("com.android.email.AttachmentService.attachment_id", n);
        intent.putExtra("com.android.email.AttachmentService.attachment_flags", n2);
        context.startService(intent);
    }
    
    private void a(final Context context, final EmailContent$Attachment emailContent$Attachment) {
        while (true) {
            while (true) {
                g z = null;
                Label_0127: {
                    synchronized (this) {
                        (new Object[1])[0] = emailContent$Attachment.Ln;
                        z = this.TY.z(emailContent$Attachment.Ln);
                        if (b(emailContent$Attachment) == -1L) {
                            E.c("AttachmentService", "Attachment #%d has no priority and will not be downloaded", emailContent$Attachment.Ln);
                            if (z != null) {
                                this.TY.d(z);
                            }
                            this.kv();
                        }
                        else {
                            if (!this.TX.containsKey(emailContent$Attachment.Ln)) {
                                break Label_0127;
                            }
                            (new Object[1])[0] = emailContent$Attachment.Ln;
                        }
                        return;
                    }
                }
                if (z == null) {
                    E.c("AttachmentService", "Attachment #%d is a new download request", emailContent$Attachment.Ln);
                    z = new g(context, emailContent$Attachment, (byte)0);
                    if (!new a(context, emailContent$Attachment).gA()) {
                        E.e("AttachmentService", "Attachment #%d is not eligible for download", emailContent$Attachment.Ln);
                        if ((0x2 & emailContent$Attachment.dM) != 0x0 || (0x200 & emailContent$Attachment.dM) != 0x0) {
                            E.e("AttachmentService", "Attachment #%d cannot be downloaded ever", emailContent$Attachment.Ln);
                            final ContentValues contentValues = new ContentValues();
                            final int dm = 0xFFFFFFF9 & emailContent$Attachment.dM;
                            emailContent$Attachment.dM = dm;
                            contentValues.put("flags", dm);
                            contentValues.put("uiState", 1);
                            emailContent$Attachment.a((Context)this, contentValues);
                            return;
                        }
                    }
                    this.TY.c(z);
                }
                E.c("AttachmentService", "Attachment #%d queued for download, priority: %d, created time: %d", emailContent$Attachment.Ln, z.do, z.Uk);
                continue;
            }
        }
    }
    
    private boolean a(final g g) {
        synchronized (this) {
            final com.android.emailcommon.service.a i = n.i((Context)this, g.LN);
            int n;
            if (this.TX.get(g.Ul) != null) {
                n = 1;
            }
            else {
                n = 0;
            }
            boolean b = false;
            if (n != 0) {
                (new Object[1])[0] = g.Ul;
                b = false;
            }
            else {
                try {
                    E.c("AttachmentService", "Starting download for Attachment #%d", g.Ul);
                    g.ky = System.currentTimeMillis();
                    g.Um = true;
                    this.TX.put(g.Ul, g);
                    final h tr = this.TR;
                    final long ln = g.LN;
                    final long ul = g.Ul;
                    final int do1 = g.do;
                    boolean b2 = false;
                    if (do1 != 0) {
                        b2 = true;
                    }
                    i.a(tr, ln, ul, b2);
                    this.TU.L((Context)this);
                    b = true;
                }
                catch (RemoteException ex) {
                    this.b(g);
                }
            }
            return b;
        }
    }
    
    private static int b(final EmailContent$Attachment emailContent$Attachment) {
        int n = -1;
        final int dm = emailContent$Attachment.dM;
        if ((dm & 0x4) != 0x0) {
            n = 1;
        }
        else if ((dm & 0x2) != 0x0) {
            return 0;
        }
        return n;
    }
    
    private void kv() {
        synchronized (this.fK) {
            this.fK.notify();
        }
    }
    
    private void kx() {
        while (true) {
            while (true) {
                Label_0439: {
                    synchronized (this) {
                        E.c("AttachmentService", "Advanced logging not configured.", new Object[0]);
                        E.c("AttachmentService", "Here are the in-progress downloads...", new Object[0]);
                        for (final g g : this.TX.values()) {
                            E.c("AttachmentService", "--BEGIN DownloadRequest DUMP--", new Object[0]);
                            E.c("AttachmentService", "Account: #%d", g.LN);
                            E.c("AttachmentService", "Message: #%d", g.mMessageId);
                            E.c("AttachmentService", "Attachment: #%d", g.Ul);
                            E.c("AttachmentService", "Created Time: %d", g.Uk);
                            E.c("AttachmentService", "Priority: %d", g.do);
                            if (!g.Um) {
                                break Label_0439;
                            }
                            E.c("AttachmentService", "This download is in progress", new Object[0]);
                            E.c("AttachmentService", "Start Time: %d", g.ky);
                            E.c("AttachmentService", "Retry Count: %d", g.Uq);
                            E.c("AttachmentService", "Retry Start Tiome: %d", g.Ur);
                            E.c("AttachmentService", "Last Status Code: %d", g.Un);
                            E.c("AttachmentService", "Last Progress: %d", g.Uo);
                            E.c("AttachmentService", "Last Callback Time: %d", g.Up);
                            E.c("AttachmentService", "------------------------------", new Object[0]);
                        }
                        break;
                    }
                }
                E.c("AttachmentService", "This download is not in progress", new Object[0]);
                continue;
            }
        }
        E.c("AttachmentService", "Done reporting in-progress downloads...", new Object[0]);
    }
    // monitorexit(this)
    
    private int y(final long n) {
        while (true) {
            // monitorenter(this)
            int n2 = 0;
            while (true) {
                Label_0072: {
                    try {
                        final Iterator<g> iterator = this.TX.values().iterator();
                        while (iterator.hasNext()) {
                            if (iterator.next().LN != n) {
                                break Label_0072;
                            }
                            final int n3 = n2 + 1;
                            n2 = n3;
                        }
                        return n2;
                    }
                    finally {
                    }
                    // monitorexit(this)
                }
                final int n3 = n2;
                continue;
            }
        }
    }
    
    final void b(final g g) {
        synchronized (this) {
            E.c("AttachmentService", "Cancelling download for Attachment #%d", g.Ul);
            g.Um = false;
            this.TX.remove(g.Ul);
            this.TY.d(g);
            ++g.Uq;
            if (g.Uq > 10L) {
                E.e("AttachmentService", "Too many failures giving up on Attachment #%d", g.Ul);
            }
            else {
                (new Object[1])[0] = g.Ul;
                this.TY.c(new g(g, SystemClock.elapsedRealtime(), (byte)0));
            }
        }
    }
    
    final void d(final long n, final int n2) {
        while (true) {
            final g z;
            Label_0348: {
                Label_0292: {
                    synchronized (this) {
                        E.c("AttachmentService", "Finishing download #%d", n);
                        this.TX.remove(n);
                        Integer value = this.TW.remove(n);
                        if (n2 != 0) {
                            if (value == null) {
                                value = 0;
                            }
                            final Integer value2 = 1 + value;
                            E.e("AttachmentService", "This attachment failed, adding #%d to failure map", n);
                            this.TW.put(n, value2);
                        }
                        z = this.TY.z(n);
                        if (n2 == 32) {
                            if (z != null) {
                                ++z.Uq;
                                if (z.Uq > 10L) {
                                    E.e("AttachmentService", "Too many tried for connection errors, giving up #%d", n);
                                    this.TY.d(z);
                                }
                                else {
                                    if (z.Uq <= 5L) {
                                        break Label_0292;
                                    }
                                    E.e("AttachmentService", "ConnectionError #%d, retried %d times, adding delay", n, z.Uq);
                                    z.Um = false;
                                    z.Ur = 10000L + SystemClock.elapsedRealtime();
                                    this.TU.g((Context)this, 10000L);
                                }
                            }
                            return;
                        }
                        break Label_0348;
                    }
                }
                E.e("AttachmentService", "ConnectionError for #%d, retried %d times, adding delay", n, z.Uq);
                z.Um = false;
                z.Ur = 0L;
                this.kv();
                return;
            }
            if (z != null) {
                this.TY.d(z);
            }
            final EmailContent$Attachment o = EmailContent$Attachment.o((Context)this, n);
        Label_0654:
            while (true) {
                if (o == null) {
                    break Label_0654;
                }
                final long lq = o.Lq;
                Long value3 = this.TV.get(lq);
                if (value3 == null) {
                    value3 = 0L;
                }
                this.TV.put(lq, value3 + o.Lo);
                final int n3 = 0x4 & o.dM;
                boolean b = false;
            Label_0582:
                while (true) {
                    if (n3 == 0) {
                        break Label_0582;
                    }
                    b = false;
                    if (n2 == 17) {
                        EmailContent.a((Context)this, EmailContent$Attachment.CONTENT_URI, o.Ln);
                        final m r = com.android.email.o.r((Context)this);
                        if (r != null) {
                            r.a(o);
                        }
                        b = true;
                        E.e("AttachmentService", "Deleting forwarded attachment #%d for message #%d", n, o.Yq);
                    }
                    if (z == null || s.D((Context)this, o.Yq)) {
                        break Label_0582;
                    }
                    while (true) {
                        (new Object[1])[0] = z.mMessageId;
                        final com.android.emailcommon.service.a i = n.i((Context)this, lq);
                        Label_0752: {
                            try {
                                i.D(lq);
                                if (n2 != 16) {
                                    break Label_0752;
                                }
                                if (com.android.emailcommon.provider.g.t((Context)this, o.Yq) == null) {
                                    E.e("AttachmentService", "Deleting attachment #%d with no associated message #%d", o.Ln, o.Yq);
                                    EmailContent.a((Context)this, EmailContent$Attachment.CONTENT_URI, o.Ln);
                                    this.kv();
                                    return;
                                }
                            }
                            catch (RemoteException ex) {
                                E.f("AttachmentService", "RemoteException while trying to send message: #%d, %s", z.mMessageId, ex.toString());
                                continue Label_0582;
                            }
                            break;
                        }
                        if (!b) {
                            E.c("AttachmentService", "Attachment #%d successfully downloaded!", o.Ln);
                            final ContentValues contentValues = new ContentValues();
                            final int dm = 0xFFFFFFF9 & o.dM;
                            o.dM = dm;
                            contentValues.put("flags", dm);
                            contentValues.put("uiState", 3);
                            o.a((Context)this, contentValues);
                            continue Label_0654;
                        }
                        continue Label_0654;
                    }
                    break;
                }
                break;
            }
            E.e("AttachmentService", "Retrying attachment #%d with associated message #%d", o.Ln, o.Yq);
            this.kv();
        }
    }
    
    public void dump(final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        long currentTimeMillis;
        StringBuilder append;
        String s;
        EmailContent$Attachment o = null;
        String yl;
        int lastIndex;
        String substring;
        Label_0178_Outer:Label_0215_Outer:
        while (true) {
            printWriter.println("AttachmentService");
            currentTimeMillis = System.currentTimeMillis();
            while (true) {
            Label_0406:
                while (true) {
                    Label_0398: {
                        synchronized (this.TY) {
                            printWriter.println("  Queue, " + this.TY.getSize() + " entries");
                            for (final g g : this.TY.Uj.values()) {
                                printWriter.println("    Account: " + g.LN + ", Attachment: " + g.Ul);
                                append = new StringBuilder("      Priority: ").append(g.do).append(", Time: ").append(g.Uk);
                                if (!g.Um) {
                                    break Label_0398;
                                }
                                s = " [In progress]";
                                printWriter.println(append.append(s).toString());
                                o = EmailContent$Attachment.o((Context)this, g.Ul);
                                if (o != null) {
                                    break Label_0406;
                                }
                                printWriter.println("      Attachment not in database?");
                                if (!g.Um) {
                                    continue Label_0178_Outer;
                                }
                                printWriter.println("      Status: " + g.Un + ", Progress: " + g.Uo);
                                printWriter.println("      Started: " + g.ky + ", Callback: " + g.Up);
                                printWriter.println("      Elapsed: " + (currentTimeMillis - g.ky) / 1000L + "s");
                                if (g.Up <= 0L) {
                                    continue Label_0178_Outer;
                                }
                                printWriter.println("      CB: " + (currentTimeMillis - g.Up) / 1000L + "s");
                            }
                            break;
                        }
                    }
                    s = "";
                    continue Label_0215_Outer;
                }
                if (o.Yl != null) {
                    yl = o.Yl;
                    lastIndex = yl.lastIndexOf(46);
                    if (lastIndex >= 0) {
                        substring = yl.substring(lastIndex);
                    }
                    else {
                        substring = "[none]";
                    }
                    printWriter.print("      Suffix: " + substring);
                    if (o.lL() != null) {
                        printWriter.print(" ContentUri: " + o.lL());
                    }
                    printWriter.print(" Mime: ");
                    if (o.Ym != null) {
                        printWriter.print(o.Ym);
                    }
                    else {
                        printWriter.print(com.android.emailcommon.b.a.u(yl, null));
                        printWriter.print(" [inferred]");
                    }
                    printWriter.println(" Size: " + o.Lo);
                    continue;
                }
                continue;
            }
        }
    }
    // monitorexit(e)
    
    final boolean isConnected() {
        return this.TT != null && this.TT.gD();
    }
    
    final void kw() {
        while (true) {
            while (true) {
                long n2 = 0L;
                EmailContent$Attachment o = null;
                Label_0089: {
                    synchronized (this) {
                        (new Object[1])[0] = AttachmentService.TZ.size();
                        final long[] array = AttachmentService.TZ.poll();
                        while (array != null) {
                            final long n = array[0];
                            n2 = array[1];
                            o = EmailContent$Attachment.o((Context)this, n);
                            if (o != null) {
                                break Label_0089;
                            }
                            E.e("AttachmentService", "Could not restore attachment #%d", n);
                        }
                        break;
                    }
                }
                o.dM = (int)n2;
                this.a((Context)this, o);
                final long[] array = AttachmentService.TZ.poll();
                continue;
            }
        }
        (new Object[1])[0] = this.TY.getSize();
        while (this.TX.size() < 2) {
            final g ka = this.TY.kA();
            if (ka == null) {
                break;
            }
            if (this.y(ka.LN) > 0) {
                E.e("AttachmentService", "Skipping #%d; maxed for acct %d", ka.Ul, ka.LN);
            }
            else if (EmailContent$Attachment.o((Context)this, ka.Ul) == null) {
                E.f("AttachmentService", "Could not load attachment: #%d", ka.Ul);
            }
            else {
                if (ka.Um) {
                    continue;
                }
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                if (ka.Uq > 0L && ka.Ur > elapsedRealtime) {
                    (new Object[1])[0] = ka.Ul;
                    this.TU.g((Context)this, 10000L);
                }
                else {
                    this.a(ka);
                }
            }
        }
        final c tt = this.TT;
        if (tt == null || !c.gB() || tt.gE() != 1) {
            E.c("AttachmentService", "Skipping opportunistic downloads since WIFI is not available", new Object[0]);
        }
        else {
            final int n3 = 2 - this.TX.size();
            if (n3 <= 0) {
                E.c("AttachmentService", "Skipping opportunistic downloads, %d threads available", n3);
                this.kx();
            }
            else {
                (new Object[1])[0] = n3;
                final Cursor query = this.getContentResolver().query(EmailContent.c(EmailContent$Attachment.CONTENT_URI, 25), EmailContent$Attachment.XO, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))", (String[])null, "_id DESC");
                final File cacheDir = this.getCacheDir();
                while (true) {
                    EmailContent$Attachment emailContent$Attachment = null;
                    Account k = null;
                    Label_0559: {
                        try {
                            while (query.moveToNext()) {
                                emailContent$Attachment = new EmailContent$Attachment();
                                emailContent$Attachment.b(query);
                                k = Account.k((Context)this, emailContent$Attachment.Lq);
                                if (k != null) {
                                    break Label_0559;
                                }
                                (new Object[1])[0] = emailContent$Attachment.Ln;
                                EmailContent.a((Context)this, EmailContent$Attachment.CONTENT_URI, emailContent$Attachment.Ln);
                            }
                            break;
                        }
                        finally {
                            query.close();
                        }
                    }
                    if (new a((Context)this, emailContent$Attachment).gA()) {
                        if (emailContent$Attachment.Yn == null) {
                            int n4;
                            if (k == null) {
                                n4 = 0;
                            }
                            else if ((0x100 & k.dM) == 0x0) {
                                (new Object[1])[0] = k.getId();
                                n4 = 0;
                            }
                            else {
                                final long totalSpace = cacheDir.getTotalSpace();
                                if (cacheDir.getUsableSpace() < (long)(0.25f * totalSpace)) {
                                    n4 = 0;
                                }
                                else {
                                    final long n5 = (long)(0.25f * totalSpace / this.Ua.kz());
                                    Long value = this.TV.get(k.Ln);
                                    if (value == null || value > n5) {
                                        value = 0L;
                                        final File[] listFiles = cacheDir.listFiles();
                                        if (listFiles != null) {
                                            Long value2;
                                            for (int length = listFiles.length, i = 0; i < length; ++i, value = value2) {
                                                value2 = value + listFiles[i].length();
                                            }
                                        }
                                        this.TV.put(k.Ln, value);
                                    }
                                    if (value >= n5) {
                                        final Object[] array2 = { k.Ln, value, n5 };
                                        n4 = 0;
                                    }
                                    else {
                                        n4 = 1;
                                    }
                                }
                            }
                            if (n4 == 0) {
                                continue;
                            }
                        }
                        final Integer n6 = this.TW.get(emailContent$Attachment.Ln);
                        if (n6 == null || n6 <= 5) {
                            this.a(new g((Context)this, emailContent$Attachment, (byte)0));
                            break;
                        }
                        E.e("AttachmentService", "Too many failed attempts for attachment #%d ", emailContent$Attachment.Ln);
                    }
                    else {
                        E.e("AttachmentService", "Skipping attachment #%d, it is ineligible", emailContent$Attachment.Ln);
                    }
                }
                query.close();
            }
        }
    }
    // monitorexit(this)
    
    public IBinder onBind(final Intent intent) {
        return null;
    }
    
    public void onCreate() {
        new Thread(this, "AttachmentService").start();
    }
    
    public void onDestroy() {
        this.kx();
        this.Lz = true;
        if (AttachmentService.TS != null) {
            this.kv();
            AttachmentService.TS = null;
        }
        if (this.TT != null) {
            this.TT.unregister();
            this.TT.gC();
            this.TT = null;
        }
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        if (AttachmentService.TS == null) {
            AttachmentService.TS = this;
        }
        if (intent != null) {
            final long longExtra = intent.getLongExtra("com.android.email.AttachmentService.attachment_id", -1L);
            final int intExtra = intent.getIntExtra("com.android.email.AttachmentService.attachment_flags", -1);
            if (longExtra < 0L || intExtra < 0) {
                final Object[] array = { longExtra, intExtra };
                return 1;
            }
            AttachmentService.TZ.add(new long[] { longExtra, intExtra });
            this.kv();
        }
        return 1;
    }
    
    public void run() {
    Label_0209_Outer:
        while (true) {
            this.TT = new c((Context)this, "AttachmentService");
            this.Ua = new com.android.email.service.c((Context)this);
            final Cursor query = this.getContentResolver().query(EmailContent$Attachment.CONTENT_URI, EmailContent.XT, "(flags & ?) != 0", new String[] { Integer.toString(6) }, (String)null);
            while (true) {
                Label_0248: {
                    try {
                        while (true) {
                            Label_0226: {
                                try {
                                    E.c("AttachmentService", "Count of previous downloads to resume (from db): %d", query.getCount());
                                    while (query.moveToNext()) {
                                        final EmailContent$Attachment o = EmailContent$Attachment.o((Context)this, query.getLong(0));
                                        if (o != null) {
                                            (new Object[1])[0] = o.Ln;
                                            this.a((Context)this, o);
                                        }
                                    }
                                    break Label_0226;
                                }
                                catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                                if (!this.Lz) {
                                    final c tt = this.TT;
                                    if (tt != null) {
                                        tt.gF();
                                    }
                                    if (!this.Lz) {
                                        break Label_0248;
                                    }
                                    E.c("AttachmentService", "AttachmentService has been instructed to stop", new Object[0]);
                                }
                                final c tt2 = this.TT;
                                if (tt2 != null) {
                                    tt2.unregister();
                                }
                                return;
                            }
                            query.close();
                            continue Label_0209_Outer;
                        }
                    }
                    finally {
                        query.close();
                    }
                }
                this.kx();
                this.kw();
                this.kx();
                if (this.TY.isEmpty() && this.TX.size() <= 0) {
                    E.c("AttachmentService", "Shutting down service. No in-progress or pending downloads.", new Object[0]);
                    this.stopSelf();
                    continue;
                }
                break;
            }
            final Object fk = this.fK;
            // monitorenter(fk)
            while (true) {
                try {
                    try {
                        this.fK.wait(1800000L);
                    }
                    finally {
                    }
                    // monitorexit(fk)
                }
                catch (InterruptedException ex2) {
                    continue;
                }
                break;
            }
        }
    }
}
