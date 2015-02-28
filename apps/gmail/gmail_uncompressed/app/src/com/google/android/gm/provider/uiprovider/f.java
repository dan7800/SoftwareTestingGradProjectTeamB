package com.google.android.gm.provider.uiprovider;

import android.content.*;
import com.google.common.collect.*;
import com.android.mail.utils.*;
import java.util.*;
import com.google.android.gm.provider.*;

public final class f
{
    private static final String mW;
    private final long aPP;
    private final long aPQ;
    private final List<GmailAttachment> bot;
    boolean bou;
    private final String mAccount;
    private final Context mContext;
    private final long mMessageId;
    
    static {
        mW = D.AU();
    }
    
    public f(final Context mContext, final String mAccount, final long app, final long mMessageId, final long apq) {
        this.bot = new ArrayList<GmailAttachment>();
        this.bou = false;
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.aPP = app;
        this.mMessageId = mMessageId;
        this.aPQ = apq;
    }
    
    public final List<GmailAttachment> Ic() {
        synchronized (this.bot) {
            return (List<GmailAttachment>)ImmutableList.J((Collection<?>)this.bot);
        }
    }
    
    final boolean Id() {
        return this.bou;
    }
    
    public final void Ie() {
        final HashSet<String> set = new HashSet<String>();
        final Iterator<GmailAttachment> iterator = this.Ic().iterator();
        while (iterator.hasNext()) {
            set.add(iterator.next().partId);
        }
        E.b(f.mW, "Notifying about attachment change conversation message %d/%d", this.aPP, this.mMessageId);
        GmailProvider.a(this.mContext, this.mAccount, this.aPP, this.mMessageId, this.aPQ, set);
    }
    
    public final void L(final List<GmailAttachment> list) {
    Label_0183_Outer:
        while (true) {
            while (true) {
            Label_0226:
                while (true) {
                    Label_0220: {
                        synchronized (this.bot) {
                            this.bot.clear();
                            for (final GmailAttachment gmailAttachment : list) {
                                if (gmailAttachment.uri == null) {
                                    gmailAttachment.uri = GmailProvider.a(this.mAccount, this.aPP, this.mMessageId, this.aPQ, gmailAttachment.partId, gmailAttachment.getContentType());
                                }
                                if (gmailAttachment.ayP == null) {
                                    final String mAccount = this.mAccount;
                                    final long apq = this.aPQ;
                                    final String partId = gmailAttachment.partId;
                                    if (gmailAttachment.ayN != 1) {
                                        break Label_0220;
                                    }
                                    final boolean b = true;
                                    gmailAttachment.ayP = Gmail.a(mAccount, apq, partId, 1, b);
                                }
                                if (gmailAttachment.ayQ == null) {
                                    final String mAccount2 = this.mAccount;
                                    final long apq2 = this.aPQ;
                                    final String partId2 = gmailAttachment.partId;
                                    if (gmailAttachment.ayN != 1) {
                                        break Label_0226;
                                    }
                                    final boolean b2 = true;
                                    gmailAttachment.ayQ = Gmail.a(mAccount2, apq2, partId2, 0, b2);
                                }
                                this.bot.add(gmailAttachment);
                            }
                            break;
                        }
                    }
                    final boolean b = false;
                    continue Label_0183_Outer;
                }
                final boolean b2 = false;
                continue;
            }
        }
        // monitorexit(list2)
        this.bou = true;
    }
    
    final void b(final bm bm) {
        this.L(bm.blT);
    }
    
    final void c(final bm bm) {
        if (!this.bou) {
            this.b(bm);
        }
    }
    
    public final GmailAttachment fq(final String s) {
        Label_0063: {
            if (s == null) {
                break Label_0063;
            }
            synchronized (this.bot) {
                for (final GmailAttachment gmailAttachment : this.bot) {
                    if (s.equalsIgnoreCase(gmailAttachment.partId)) {
                        return gmailAttachment;
                    }
                }
                return null;
            }
        }
    }
}
