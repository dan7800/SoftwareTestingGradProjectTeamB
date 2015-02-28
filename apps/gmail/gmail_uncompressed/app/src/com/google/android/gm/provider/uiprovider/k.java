package com.google.android.gm.provider.uiprovider;

import com.android.mail.i.*;
import android.content.*;
import com.google.common.collect.*;
import android.database.*;
import android.text.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.*;
import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import java.util.*;

public final class k extends i
{
    private static final Map<String, Integer> boD;
    private static final String mW;
    private final List<GmailAttachment> aBE;
    private final g aHo;
    private long aPP;
    private long aPQ;
    private long aXn;
    private final int bdZ;
    private final int bdu;
    private final int bea;
    private final int beb;
    private final int bec;
    private final int beo;
    private final TextUtils$StringSplitter beq;
    private final int bgw;
    private final String boU;
    private final String boV;
    private final int boW;
    private final int boX;
    private final int boY;
    private final int boZ;
    private final int bpa;
    private final int bpb;
    private final int bpc;
    private final int bpd;
    private final int bpe;
    private final int bpf;
    private final int bpg;
    private final int bph;
    private final int bpi;
    private final int bpj;
    private final int bpk;
    private final int bpl;
    private final int bpm;
    private final int bpn;
    private final int bpo;
    private final int bpp;
    private final int bpq;
    private String bpr;
    private String bps;
    private int bpt;
    private boolean bpu;
    private final Bundle cV;
    private final String mAccount;
    private final Context mContext;
    
    static {
        mW = D.AU();
        boD = new y<String, Integer>().p(Gmail$CursorStatus.bez.toString(), 2).p(Gmail$CursorStatus.beA.toString(), 1).p(Gmail$CursorStatus.beD.toString(), 1).p(Gmail$CursorStatus.beC.toString(), 4).p(Gmail$CursorStatus.beB.toString(), 8).Zo();
    }
    
    public k(final Context mContext, final Cursor cursor, final String mAccount, final String boU, final g aHo, final String boV, final String[] array) {
        int intValue = 2;
        super(cursor, array);
        this.aBE = new ArrayList<GmailAttachment>();
        this.bpu = false;
        this.beq = Gmail.DY();
        this.mAccount = mAccount;
        this.boU = boU;
        this.aHo = aHo;
        this.mContext = mContext;
        this.boV = boV;
        this.bgw = cursor.getColumnIndexOrThrow("_id");
        this.boW = cursor.getColumnIndexOrThrow("messageId");
        this.bdZ = cursor.getColumnIndexOrThrow("conversation");
        this.bea = cursor.getColumnIndexOrThrow("subject");
        this.beb = cursor.getColumnIndexOrThrow("snippet");
        this.bec = cursor.getColumnIndexOrThrow("fromAddress");
        this.boX = cursor.getColumnIndexOrThrow("customFromAddress");
        this.boY = cursor.getColumnIndexOrThrow("toAddresses");
        this.boZ = cursor.getColumnIndexOrThrow("ccAddresses");
        this.bpa = cursor.getColumnIndexOrThrow("bccAddresses");
        this.bpb = cursor.getColumnIndexOrThrow("replyToAddresses");
        this.bpc = cursor.getColumnIndexOrThrow("dateReceivedMs");
        this.bdu = cursor.getColumnIndexOrThrow("body");
        this.bpd = cursor.getColumnIndexOrThrow("bodyEmbedsExternalResources");
        this.beo = cursor.getColumnIndexOrThrow("labelIds");
        this.bpe = cursor.getColumnIndexOrThrow("refMessageId");
        this.bpf = cursor.getColumnIndexOrThrow("isDraft");
        this.bpg = cursor.getColumnIndexOrThrow("forward");
        this.bph = cursor.getColumnIndexOrThrow("joinedAttachmentInfos");
        this.bpi = cursor.getColumnIndexOrThrow("isUnread");
        this.bpj = cursor.getColumnIndexOrThrow("isStarred");
        this.bpk = cursor.getColumnIndexOrThrow("isInOutbox");
        this.bpl = cursor.getColumnIndexOrThrow("isInRetry");
        this.bpm = cursor.getColumnIndexOrThrow("isInFailed");
        this.bpn = cursor.getColumnIndexOrThrow("quoteStartPos");
        this.bpo = cursor.getColumnIndexOrThrow("spamDisplayedReasonType");
        this.bpp = cursor.getColumnIndexOrThrow("clipped");
        this.bpq = cursor.getColumnIndexOrThrow("permalink");
        final Bundle extras = super.getExtras();
        final Bundle cv = new Bundle();
        if (extras.containsKey("status")) {
            final String string = extras.getString("status");
            if (k.boD.containsKey(string)) {
                intValue = k.boD.get(string);
            }
        }
        cv.putInt("cursor_status", intValue);
        this.cV = cv;
    }
    
    private void Ih() {
        if (!this.bpu) {
            this.aBE.addAll(GmailAttachment.fp(super.getString(this.bph)));
            this.aXn = super.getLong(this.boW);
            this.aPQ = super.getLong(this.bgw);
            this.aPP = super.getLong(this.bdZ);
            final String eb = this.eb(this.bec);
            while (true) {
                Label_0124: {
                    if (!TextUtils.isEmpty((CharSequence)eb)) {
                        break Label_0124;
                    }
                    final String eb2 = this.eb(this.boX);
                    if (TextUtils.isEmpty((CharSequence)eb2)) {
                        break Label_0124;
                    }
                    this.bpr = eb2;
                    this.bpt = super.getInt(this.bpo);
                    this.bpu = true;
                    return;
                }
                final String eb2 = eb;
                continue;
            }
        }
    }
    
    private boolean Ii() {
        if (this.boU == null) {
            return true;
        }
        final String ei = Gmail.ei(this.boU);
        MailEngine mailEngine;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            mailEngine = MailEngine.eO(this.mAccount);
            if (mailEngine == null) {
                E.g(k.mW, "UIMessageCursor#getIsSeen() - main thread, MailEngine did not exist", new Object[0]);
                return true;
            }
        }
        else {
            mailEngine = MailEngine.W(this.mContext, this.mAccount);
        }
        try {
            final long ej = mailEngine.Fn().ej(ei);
            String string = super.getString(this.beo);
            final TextUtils$StringSplitter beq = this.beq;
            if (string == null) {
                string = "";
            }
            beq.setString(string);
            if (!Gmail.a(this.beq).contains(ej)) {
                return true;
            }
        }
        catch (IllegalArgumentException ex) {
            return true;
        }
        return false;
    }
    
    private long Ij() {
        return super.getLong(this.bpe);
    }
    
    private int Ik() {
        int int1 = super.getInt(this.bpn);
        if (int1 <= 0) {
            final String messageBody = this.getMessageBody();
            if (!TextUtils.isEmpty((CharSequence)messageBody)) {
                return messageBody.indexOf(this.boV);
            }
            int1 = -1;
        }
        return int1;
    }
    
    private String[] ec(final int n) {
        return TextUtils.split(this.eb(n), Gmail.bdF);
    }
    
    private String getMessageBody() {
        if (this.bps == null) {
            this.bps = super.getString(this.bdu);
        }
        return this.bps;
    }
    
    private String[] vu() {
        return this.ec(this.boY);
    }
    
    private String[] vw() {
        return this.ec(this.boZ);
    }
    
    private String[] vy() {
        return this.ec(this.bpa);
    }
    
    @Override
    protected final void Ig() {
        super.Ig();
        this.aBE.clear();
        this.bps = null;
        this.bpu = false;
    }
    
    public final Bundle getExtras() {
        return this.cV;
    }
    
    public final int getInt(final int n) {
        int n2 = 2;
        int n3 = 1;
        this.Ih();
        int n4;
        if (this.aBE.size() > 0) {
            n4 = n3;
        }
        else {
            n4 = 0;
        }
        int int1 = 0;
        switch (n) {
            default: {
                final Object[] array = new Object[n3];
                array[0] = n;
                E.f("Gmail", "UIMessageCursor.getInt(%d): Unexpected column", array);
                int1 = super.getInt(n);
                break;
            }
            case 14: {
                return super.getInt(this.bpd);
            }
            case 16: {
                int n5;
                if (super.getLong(this.bpf) != 0L) {
                    n5 = n3;
                }
                else {
                    n5 = 0;
                }
                if (n5 != 0) {
                    final long n6 = lcmp(super.getLong(this.bpg), 0L);
                    int n7 = 0;
                    if (n6 != 0) {
                        n7 = n3;
                    }
                    if (n7 != 0) {
                        n2 = 4;
                    }
                    else if (this.Ij() != 0L) {
                        if (this.vu().length + this.vw().length + this.vy().length > n3) {
                            n2 = 3;
                        }
                    }
                    else {
                        n2 = n3;
                    }
                }
                else {
                    n2 = 0;
                }
                return n2;
            }
            case 18: {
                int1 = 0;
                if (n4 != 0) {
                    return n3;
                }
                break;
            }
            case 23: {
                int n8;
                if (super.getLong(this.bpi) != 0L) {
                    n8 = n3;
                }
                else {
                    n8 = 0;
                }
                int1 = 0;
                if (n8 == 0) {
                    return n3;
                }
                break;
            }
            case 24: {
                final boolean ii = this.Ii();
                int1 = 0;
                if (ii) {
                    return n3;
                }
                break;
            }
            case 25: {
                int n9;
                if (super.getLong(this.bpj) != 0L) {
                    n9 = n3;
                }
                else {
                    n9 = 0;
                }
                int1 = 0;
                if (n9 != 0) {
                    return n3;
                }
                break;
            }
            case 35: {
                int n10;
                if (super.getLong(this.bpm) != 0L) {
                    n10 = n3;
                }
                else {
                    n10 = 0;
                }
                if (n10 != 0) {
                    return -1;
                }
                int n11;
                if (super.getLong(this.bpl) != 0L) {
                    n11 = n3;
                }
                else {
                    n11 = 0;
                }
                if (n11 != 0) {
                    return 4;
                }
                if (super.getLong(this.bpk) == 0L) {
                    n3 = 0;
                }
                int1 = 0;
                if (n3 != 0) {
                    return n2;
                }
                break;
            }
            case 22: {
                final String address = d.aY(this.bpr).getAddress();
                if (!this.aHo.bG(address)) {
                    final boolean equals = "mail-noreply@google.com".equals(address);
                    int1 = 0;
                    if (!equals) {
                        break;
                    }
                }
                return n3;
            }
            case 17: {
                final int ik = this.Ik();
                int1 = 0;
                if (ik >= 0) {
                    return n3;
                }
                break;
            }
            case 26: {
                return this.Ik();
            }
            case 32: {
                final int bpt = this.bpt;
                int1 = 0;
                if (bpt == -1) {
                    break;
                }
                if (bz.bnf.contains(this.bpt)) {
                    return n2;
                }
                return n3;
            }
            case 33: {
                final Integer n12 = bz.bng.get(this.bpt);
                int1 = 0;
                if (n12 != null) {
                    return n12;
                }
                break;
            }
            case 36: {
                return super.getInt(this.bpp);
            }
        }
        return int1;
    }
    
    public final long getLong(final int n) {
        switch (n) {
            default: {
                E.f("Gmail", "UIMessageCursor.getLong(%d): Unexpected column", n);
                return super.getLong(n);
            }
            case 0: {
                return super.getLong(this.bgw);
            }
            case 11: {
                return super.getLong(this.bpc);
            }
            case 21: {
                return 0L;
            }
        }
    }
    
    public final String getString(final int n) {
        int n2 = 1;
        this.Ih();
        switch (n) {
            default: {
                final Object[] array = new Object[n2];
                array[0] = n;
                E.f("Gmail", "UIMessageCursor.getString(%d): Unexpected column", array);
                return super.getString(n);
            }
            case 1: {
                return Long.toString(this.aXn);
            }
            case 2: {
                return GmailProvider.h(this.mAccount, this.aPQ).toString();
            }
            case 3: {
                return GmailProvider.j(this.mAccount, this.aPP);
            }
            case 4: {
                return super.getString(this.bea);
            }
            case 5: {
                return super.getString(this.beb);
            }
            case 6: {
                return this.bpr;
            }
            case 28: {
                return super.getString(this.boX);
            }
            case 7: {
                return TextUtils.join((CharSequence)", ", (Object[])this.vu());
            }
            case 8: {
                return TextUtils.join((CharSequence)", ", (Object[])this.vw());
            }
            case 9: {
                return TextUtils.join((CharSequence)", ", (Object[])this.vy());
            }
            case 10: {
                return TextUtils.join((CharSequence)", ", (Object[])this.ec(this.bpb));
            }
            case 12: {
                return this.getMessageBody();
            }
            case 13: {
                return null;
            }
            case 15: {
                return GmailProvider.l(this.mAccount, this.Ij()).toString();
            }
            case 19: {
                if (this.aBE.size() <= 0) {
                    n2 = 0;
                }
                if (n2 != 0) {
                    return GmailProvider.a(this.mAccount, this.aPP, this.aXn, this.aPQ).toString();
                }
                return null;
            }
            case 20: {
                return null;
            }
            case 27: {
                final List<GmailAttachment> abe = this.aBE;
                final String mAccount = this.mAccount;
                final long app = this.aPP;
                final long aXn = this.aXn;
                final long apq = this.aPQ;
                if (abe == null) {
                    return null;
                }
                for (final GmailAttachment gmailAttachment : abe) {
                    gmailAttachment.uri = GmailProvider.a(mAccount, app, aXn, apq, gmailAttachment.partId, gmailAttachment.getContentType());
                }
                return Attachment.n(abe);
            }
            case 29: {
                return null;
            }
            case 30: {
                return null;
            }
            case 31: {
                final Integer n3 = bz.bne.get(this.bpt);
                if (n3 == null || n3 == 0) {
                    return null;
                }
                return this.mContext.getResources().getString((int)n3);
            }
            case 34: {
                return null;
            }
            case 37: {
                return super.getString(this.bpq);
            }
        }
    }
}
