package com.google.android.gm.provider.uiprovider;

import android.net.*;
import com.google.common.collect.*;
import android.database.*;
import java.util.*;
import com.android.mail.utils.*;
import com.google.android.gm.provider.*;

public final class j extends i
{
    private static final Set<String> boG;
    private static final Set<String> boH;
    private static final Set<String> boI;
    private static final Set<String> boJ;
    private static final Set<String> boK;
    private static final Set<String> boL;
    private static final Set<String> boM;
    private Uri aAw;
    private final MailEngine bdz;
    private String bgH;
    private long bhV;
    private final int bhj;
    private final int bhl;
    private final int bhm;
    private final int bhn;
    private final Set<String> boN;
    private final int boO;
    private final int boP;
    private final int boQ;
    private final int boR;
    private String boS;
    private final String boT;
    private final String mAccount;
    
    static {
        boG = new z<String>().aH("^i").aH("^iim").e(Gmail.bdE).Zy();
        boH = ImmutableSet.t("^k", "^r");
        boI = new z<String>().aH("^i").aH("^iim").e(Gmail.bdE).Zy();
        boJ = ImmutableSet.a("^k", "^b", "^^out", "^r", "^all");
        boL = (boK = ImmutableSet.aG("^s"));
        boM = ImmutableSet.aG("^s");
    }
    
    public j(final Cursor cursor, final MailEngine bdz, final String mAccount, final String[] array, final String boT) {
        super(cursor, array);
        this.mAccount = mAccount;
        this.bdz = bdz;
        ImmutableSet<String> l;
        if (this.bdz != null) {
            l = ImmutableSet.L((Collection<? extends String>)this.bdz.Gx());
        }
        else {
            l = null;
        }
        this.boN = l;
        this.boT = boT;
        this.boO = cursor.getColumnIndex("_id");
        this.boP = cursor.getColumnIndex("name");
        this.bhj = cursor.getColumnIndex("canonicalName");
        this.bhl = cursor.getColumnIndex("numConversations");
        this.bhm = cursor.getColumnIndex("numUnreadConversations");
        this.bhn = cursor.getColumnIndex("numUnseenConversations");
        this.boQ = cursor.getColumnIndex("color");
        this.boR = cursor.getColumnIndex("lastMessageTimestamp");
    }
    
    private void If() {
        if (this.bgH == null) {
            this.bgH = super.getString(this.bhj);
            this.bhV = super.getLong(this.boO);
            if (this.bhV != -1L) {
                this.aAw = GmailProvider.i(this.mAccount, this.bhV);
            }
            else {
                this.aAw = GmailProvider.Q(this.mAccount, this.bgH);
            }
            this.boS = super.getString(this.boQ);
        }
    }
    
    @Override
    protected final void Ig() {
        super.Ig();
        this.bgH = null;
    }
    
    public final int getInt(final int n) {
        this.If();
        int int1 = 0;
        switch (n) {
            default: {
                E.e("Gmail", new Error(), "UILabelCursor.getInt(%d): Unexpected column", n);
                int1 = super.getInt(n);
                return int1;
            }
            case 4: {
                return int1;
            }
            case 0: {
                return this.bgH.hashCode();
            }
            case 9: {
                return super.getInt(this.bhn);
            }
            case 10: {
                return super.getInt(this.bhm);
            }
            case 11: {
                return super.getInt(this.bhl);
            }
            case 5: {
                final boolean contains = j.boG.contains(this.bgH);
                int1 = 0;
                if (contains) {
                    int1 = 16;
                }
                if (!j.boJ.contains(this.bgH)) {
                    int1 |= 0x200;
                }
                if (!j.boH.contains(this.bgH)) {
                    int1 |= 0x20;
                }
                if (!j.boK.contains(this.bgH)) {
                    int1 |= 0x40;
                }
                if (j.boL.contains(this.bgH)) {
                    int1 |= 0x80;
                }
                if (!j.boM.contains(this.bgH)) {
                    int1 |= 0x2000;
                }
                if (j.boI.contains(this.bgH)) {
                    int1 |= 0x100;
                }
                if (Gmail.ef(this.bgH)) {
                    int1 |= 0x8;
                }
                if (Gmail.eg(this.bgH)) {
                    int1 |= 0x4000;
                }
                if ("^io_im".equals(this.bgH) || "^iim".equals(this.bgH)) {
                    int1 |= 0x400;
                }
                if (!Gmail.bdE.contains(this.bgH)) {
                    int1 |= 0x8000;
                }
                if ("^all".equals(this.bgH)) {
                    int1 |= 0x10000;
                }
                if (Gmail.ee(this.bgH)) {
                    int1 |= 0x40000;
                }
                if (Gmail.ea(this.bgH) && !"^sq_ig_i_personal".equals(this.bgH)) {
                    return int1 | 0x80000;
                }
                return int1;
            }
            case 6: {
                int n2;
                if (this.boN != null && this.boN.contains(this.bgH)) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                int1 = 0;
                if (n2 != 0) {
                    return 1;
                }
                return int1;
            }
            case 13: {
                final MailEngine bdz = this.bdz;
                int1 = 0;
                if (bdz == null) {
                    return int1;
                }
                final boolean gi = this.bdz.Gi();
                int1 = 0;
                if (gi) {
                    int1 = 4;
                }
                if (this.bdz.Gj()) {
                    int1 |= 0x2;
                }
                if (this.bdz.Gk()) {
                    return int1 | 0x1;
                }
                return int1;
            }
            case 14: {
                final MailEngine bdz2 = this.bdz;
                int1 = 0;
                if (bdz2 != null) {
                    return this.bdz.Gl();
                }
                return int1;
            }
            case 15: {
                return GmailProvider.ey(this.bgH);
            }
            case 16: {
                return T.eA(this.bgH);
            }
        }
    }
    
    public final long getLong(final int n) {
        this.If();
        switch (n) {
            default: {
                E.e("Gmail", new Error(), "UILabelCursor.getLong(%d): Unexpected column", n);
                return super.getLong(n);
            }
            case 0: {
                return this.bgH.hashCode();
            }
            case 22: {
                return super.getLong(this.boR);
            }
        }
    }
    
    public final String getString(final int n) {
        this.If();
        String string = null;
        switch (n) {
            default: {
                E.e("Gmail", new Error(), "UILabelCursor.getString(%d): Unexpected column", n);
                string = super.getString(n);
                return string;
            }
            case 8:
            case 20:
            case 21: {
                return string;
            }
            case 1: {
                return this.bgH;
            }
            case 2: {
                final Uri o = GmailProvider.O(this.mAccount, this.bgH);
                if (this.boT != null) {
                    return o.buildUpon().appendQueryParameter("defaultParent", this.boT).build().toString();
                }
                return o.toString();
            }
            case 3: {
                return super.getString(this.boP);
            }
            case 7: {
                return this.aAw.toString();
            }
            case 12: {
                return GmailProvider.c(this.mAccount, this.bhV, this.bgH, null);
            }
            case 18: {
                return new StringBuilder().append(T.e(this.mAccount, this.bgH, this.boS)).toString();
            }
            case 19: {
                return new StringBuilder().append(T.f(this.mAccount, this.bgH, this.boS)).toString();
            }
            case 23: {
                final String boT = this.boT;
                string = null;
                if (boT != null) {
                    return this.boT.toString();
                }
                return string;
            }
        }
    }
}
