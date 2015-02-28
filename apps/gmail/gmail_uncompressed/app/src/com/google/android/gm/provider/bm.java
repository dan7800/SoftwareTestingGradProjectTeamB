package com.google.android.gm.provider;

import com.google.android.gm.provider.uiprovider.*;
import java.util.*;
import android.text.*;

public final class bm
{
    public long aBf;
    public String aBw;
    public String aBy;
    public String abh;
    public String ayV;
    public String bck;
    public long bkt;
    public long bku;
    public String blC;
    public Gmail$PersonalLevel blF;
    public Set<Long> blG;
    public String blK;
    public long blL;
    public long blM;
    public List<String> blN;
    public List<String> blO;
    public List<String> blP;
    public List<String> blQ;
    public long blR;
    public String blS;
    public List<GmailAttachment> blT;
    public boolean blU;
    public boolean blV;
    public boolean blW;
    public long blX;
    public boolean blY;
    public long blZ;
    public String bma;
    public int bmb;
    public int bmc;
    public int bmd;
    public int bme;
    public String bmf;
    public String bmg;
    public int bmh;
    
    public bm() {
        this.blC = "";
        this.blN = Collections.emptyList();
        this.blO = Collections.emptyList();
        this.blP = Collections.emptyList();
        this.blQ = Collections.emptyList();
        this.blG = new HashSet<Long>();
        this.blT = new ArrayList<GmailAttachment>();
        this.bmb = -1;
    }
    
    public final GmailAttachment ff(final String s) {
        final GmailAttachment a = GmailProvider.a(this.blK, this.bku, this.bkt, s);
        if (a != null) {
            return a;
        }
        for (final GmailAttachment gmailAttachment : this.blT) {
            if (s.equals(gmailAttachment.partId)) {
                return gmailAttachment;
            }
        }
        return null;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Message: ").append(this.bkt);
        sb.append(", ").append(this.bku);
        sb.append(", from: ").append(this.blC);
        sb.append(", to: ").append(TextUtils.join((CharSequence)", ", (Iterable)this.blN));
        if (this.blO.size() != 0) {
            sb.append(", cc: ").append(TextUtils.join((CharSequence)", ", (Iterable)this.blO));
        }
        if (this.blP.size() != 0) {
            sb.append(", bcc: ").append(TextUtils.join((CharSequence)", ", (Iterable)this.blP));
        }
        if (this.blQ.size() != 0) {
            sb.append(", replyTo: ").append(TextUtils.join((CharSequence)", ", (Iterable)this.blQ));
        }
        sb.append(", subject: ").append(this.ayV);
        sb.append(", snippet: ").append(this.abh);
        sb.append(", forward: ").append(this.blV);
        sb.append(", includeQuotedText: ").append(this.blW);
        sb.append(", quoteStartPos: ").append(this.blX);
        sb.append(", clientCreated: ").append(this.blY);
        return sb.toString();
    }
    
    public final List<GmailAttachment> vC() {
        final List<GmailAttachment> a = GmailProvider.a(this.blK, this.bku, this.bkt);
        if (a != null && !a.isEmpty()) {
            return a;
        }
        return this.blT;
    }
}
