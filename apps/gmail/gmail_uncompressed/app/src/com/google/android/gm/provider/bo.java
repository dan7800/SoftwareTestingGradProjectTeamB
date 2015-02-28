package com.google.android.gm.provider;

import com.google.common.a.a.*;
import android.text.*;
import com.google.android.gm.provider.uiprovider.*;
import com.google.android.mail.common.base.*;
import com.google.android.gsf.*;
import android.os.*;
import android.database.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.google.android.gm.persistence.*;
import java.util.zip.*;
import android.util.*;
import android.net.http.*;
import org.apache.http.util.*;
import org.apache.http.*;
import android.content.*;
import java.util.*;
import com.google.android.common.http.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.client.methods.*;
import com.google.common.collect.*;

final class bo extends bg
{
    private ArrayList<g> Xt;
    final /* synthetic */ MailSync blx;
    a bmk;
    
    bo(final MailSync blx, final a bmk) {
        this.blx = blx;
        super(blx, (byte)0);
        this.bmk = bmk;
        this.Xt = null;
    }
    
    private static boolean aN(final long n) {
        return n == 0L;
    }
    
    private a aO(final long n) {
        final a fv = this.bmk.fv(1);
        fv.setLong(1, n);
        return fv;
    }
    
    @Override
    public final int HB() {
        return this.bmk.fA(1);
    }
    
    public final boolean HF() {
        return this.Xt != null && this.Xt.size() > 0;
    }
    
    public final ArrayList<g> HG() {
        return this.Xt;
    }
    
    @Override
    public final void a(final long n, final int n2, final long n3, final int n4) {
        E.b(MailSync.TAG, "MailSync posting operation %d (emptySpamOrTrash): folderType=%d messageSequenceNumber=%d maxCount=%d", n, n2, n3, n4);
        final a fc = this.aO(n).fC(9);
        fc.setInt(1, n2);
        fc.setLong(2, n3);
        fc.setInt(3, n4);
    }
    
    @Override
    public final void a(final long n, final int n2, final String s, final String s2, final String s3, final String s4, final boolean b, final String s5, final String s6) {
        E.b(MailSync.TAG, "Ad uphill sync for id: " + s + ", type: " + n2, new Object[0]);
        final a fc = this.aO(n).fC(10);
        fc.setInt(1, n2);
        fc.setString(2, s);
        fc.setString(4, s2);
        fc.setString(3, s3);
        fc.setString(5, s4);
        fc.q(6, b);
        fc.setString(7, s5);
        fc.setString(8, s6);
    }
    
    @Override
    public final void a(final long n, final long n2, final long n3, final boolean b) {
        if (aN(n3)) {
            return;
        }
        final a fc = this.aO(n).fC(3);
        fc.q(3, b);
        fc.setLong(1, n2);
        if (!ae.au(n3)) {
            fc.setLong(2, n3);
            return;
        }
        fc.setString(4, Gmail.bdN.get(n3));
    }
    
    @Override
    public final void a(final long n, final long n2, final String s) {
        E.b(MailSync.TAG, "MailSync posting operation %d (resetUnseenCount):  messageSequenceNumber=%d query=%s", n, n2, s);
        final a fc = this.aO(n).fC(7);
        fc.setLong(2, n2);
        fc.setString(1, s);
    }
    
    @Override
    public final void a(final long n, final bm bm, final long n2, final long n3, final boolean b) {
        E.b(MailSync.TAG, "MailSync posting operation %d (messageSavedOrSent)", n);
        final a fc = this.aO(n).fC(4);
        fc.q(10, b);
        fc.setLong(1, n2);
        fc.setLong(2, n3);
        fc.setString(16, bm.bmg);
        Label_0202: {
            if (TextUtils.isEmpty((CharSequence)bm.bmg)) {
                break Label_0202;
            }
            final Cursor d = MailEngine.W(this.blx.mContext, bm.blK).d(Gmail.bdS, bm.bmg);
            Label_0489: {
                if (d == null) {
                    break Label_0489;
                }
                int columnIndex;
                int columnIndex2;
                String ayV;
                String bck;
                Iterator<GmailAttachment> iterator;
                int n4 = 0;
                GmailAttachment gmailAttachment = null;
                String s = null;
                int n5;
                byte[] array;
                com.google.android.common.http.a a;
                a fv;
                ba a2;
                long bkt;
                InputStream b2;
                ByteArrayOutputStream byteArrayOutputStream;
                byte[] array2;
                int read;
                Label_0282_Outer:Label_0339_Outer:Label_0411_Outer:
                while (true) {
                Label_0610_Outer:
                    while (true) {
                        Label_0566: {
                        Label_0551:
                            while (true) {
                            Label_0540:
                                while (true) {
                                Label_0532:
                                    while (true) {
                                        try {
                                            if (d.moveToFirst()) {
                                                columnIndex = d.getColumnIndex("send_body");
                                                columnIndex2 = d.getColumnIndex("body");
                                                if (columnIndex != -1 && columnIndex2 != -1 && d.getInt(columnIndex) == 1) {
                                                    fc.setString(17, d.getString(columnIndex2));
                                                }
                                            }
                                            else {
                                                E.f("Failed to find an entry for ad event id: %s", bm.bmg, new Object[0]);
                                            }
                                            if (d != null) {
                                                d.close();
                                            }
                                            fc.setString(3, TextUtils.join((CharSequence)", ", (Iterable)bm.blN));
                                            fc.setString(4, TextUtils.join((CharSequence)", ", (Iterable)bm.blO));
                                            fc.setString(5, TextUtils.join((CharSequence)", ", (Iterable)bm.blP));
                                            if (bm.ayV != null) {
                                                ayV = bm.ayV;
                                                fc.setString(6, ayV);
                                                if (bm.bck == null) {
                                                    break Label_0532;
                                                }
                                                bck = bm.bck;
                                                fc.setString(7, bck);
                                                if (!bm.blY || !bm.blW) {
                                                    break Label_0540;
                                                }
                                                fc.q(11, true);
                                                fc.setLong(13, bm.blX);
                                                if (bm.blV) {
                                                    fc.q(12, true);
                                                }
                                                if (!TextUtils.isEmpty((CharSequence)bm.bma)) {
                                                    fc.q(14, true);
                                                    fc.setString(15, bm.bma);
                                                    E.b(MailSync.TAG, "Uphill Sync operation with custom from address: %s", bm.bma);
                                                }
                                                iterator = bm.blT.iterator();
                                                n4 = 1;
                                                if (!iterator.hasNext()) {
                                                    break;
                                                }
                                                gmailAttachment = iterator.next();
                                                switch (gmailAttachment.bom) {
                                                    default: {
                                                        throw new IllegalArgumentException("Unknown origin: " + gmailAttachment.bom);
                                                    }
                                                    case 0: {
                                                        break Label_0551;
                                                    }
                                                    case 1: {
                                                        break Label_0566;
                                                    }
                                                }
                                            }
                                        }
                                        finally {
                                            if (d != null) {
                                                d.close();
                                            }
                                        }
                                        ayV = "";
                                        continue Label_0282_Outer;
                                    }
                                    bck = "";
                                    continue Label_0339_Outer;
                                }
                                fc.q(11, false);
                                continue Label_0411_Outer;
                            }
                            fc.i(8, gmailAttachment.Ia());
                            continue;
                        }
                        Label_0865: {
                            Label_0753: {
                                if (!K.gK(gmailAttachment.partId)) {
                                    break Label_0753;
                                }
                                s = bm.bkt + "-" + n4;
                                ++n4;
                            Label_0630_Outer:
                                while (true) {
                                    Label_0789: {
                                        if (c.getInt(this.blx.Hb, "gmail_use_multipart_protobuf", 1) == 0) {
                                            break Label_0789;
                                        }
                                        n5 = 1;
                                        while (true) {
                                            array = null;
                                            if (n5 == 0) {
                                                break Label_0865;
                                            }
                                            try {
                                                a = new com.google.android.common.http.a(s, new bh(this.blx, bm.bkt, gmailAttachment), gmailAttachment.getContentType());
                                                if (this.Xt == null) {
                                                    this.Xt = new ArrayList<g>();
                                                }
                                                this.Xt.add(a);
                                                fv = fc.fv(9);
                                                fv.setString(1, s);
                                                fv.setString(2, gmailAttachment.getName());
                                                fv.setString(3, gmailAttachment.getContentType());
                                                if (n5 == 0) {
                                                    fv.p(array);
                                                    continue Label_0610_Outer;
                                                }
                                                continue Label_0610_Outer;
                                                n5 = 0;
                                                continue;
                                                s = bm.bkt + "-" + gmailAttachment.partId;
                                                continue Label_0630_Outer;
                                            }
                                            catch (IOException ex) {
                                                E.e(MailSync.TAG, ex, "IO error while reading attachment: %s", s);
                                                this.a(bm, ex, b);
                                                continue Label_0610_Outer;
                                            }
                                            catch (SecurityException ex2) {
                                                E.e(MailSync.TAG, ex2, "SecurityException while reading attachment: %s", s);
                                                this.a(bm, ex2, b);
                                                continue Label_0610_Outer;
                                            }
                                            break;
                                        }
                                    }
                                    break;
                                }
                            }
                            try {
                                a2 = this.blx.blr;
                                bkt = bm.bkt;
                                b2 = a2.b(gmailAttachment);
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                array2 = new byte[1024];
                                do {
                                    read = b2.read(array2);
                                    if (read < 0) {
                                        goto Label_0994;
                                    }
                                    byteArrayOutputStream.write(array2, 0, read);
                                } while (SystemClock.elapsedRealtime() - SystemClock.elapsedRealtime() <= 3600000L);
                                throw new IOException("Timed out reading attachment");
                            }
                            catch (IOException ex3) {
                                E.e(MailSync.TAG, ex3, "IO error while reading attachment: %s", s);
                                this.a(bm, ex3, b);
                                continue;
                            }
                            catch (SecurityException ex4) {
                                E.e(MailSync.TAG, ex4, "Security exception while reading attachment: %s", s);
                                this.a(bm, ex4, b);
                                continue;
                            }
                        }
                        break;
                    }
                    break;
                }
            }
        }
        E.b(MailSync.TAG, "messageSavedOrSent: message = %s", fc);
    }
    
    @Override
    public final void a(final long n, final String s, final String s2, final boolean b) {
        E.b(MailSync.TAG, "MailSync posting operation %d (Pref change): name: %s, stringValue: %s, isDelete=%b", n, s, s2, b);
        final a fc = this.aO(n).fC(11);
        fc.setString(1, s);
        fc.setString(2, s2);
        fc.p(null);
        fc.q(3, b);
    }
    
    @Override
    public final void a(final long n, final Set<Integer> set, final boolean b) {
        E.b(MailSync.TAG, "MailSync posting operation %d (configureSectionedInbox):  sections=%s showStarredInPersonal=%b", n, set, b);
        final a fc = this.aO(n).fC(8);
        final Iterator<Integer> iterator = set.iterator();
        while (iterator.hasNext()) {
            fc.fu(iterator.next());
        }
        fc.q(2, b);
    }
    
    @Override
    public final void d(final long n, final long n2, final long n3) {
        if (aN(n3)) {
            return;
        }
        final a fc = this.aO(n).fC(2);
        fc.q(3, true);
        fc.setLong(1, n2);
        if (!ae.au(n3)) {
            fc.setLong(2, n3);
            return;
        }
        fc.setString(4, Gmail.bdN.get(n3));
    }
    
    @Override
    public final void e(final long n, final long n2, final long n3) {
        if (aN(n3)) {
            return;
        }
        final a fc = this.aO(n).fC(2);
        fc.q(3, false);
        fc.setLong(1, n2);
        fc.setLong(2, n3);
    }
    
    @Override
    public final void k(final long n, final long n2) {
        this.aO(n).setLong(5, n2);
    }
}
