package com.android.mail.ui;

import android.animation.*;
import android.app.*;
import com.android.mail.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import com.android.mail.utils.*;
import android.view.*;
import android.content.*;
import android.os.*;
import android.support.v4.widget.*;

public final class cK extends a
{
    private boolean aME;
    private int aMF;
    private int aMG;
    private boolean aMH;
    private final AnimatorListenerAdapter aMI;
    
    public cK(final MailActivity mailActivity, final dD dd) {
        super(mailActivity, dd);
        this.aME = false;
        this.aMF = -1;
        this.aMG = -1;
        this.aMH = true;
        this.aMI = new cL(this);
    }
    
    private int a(final Fragment fragment, final int transition, final String s) {
        final FragmentManager fragmentManager = this.aCT.getFragmentManager();
        final FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.setTransition(transition);
        beginTransaction.replace(2131558843, fragment, s);
        final int commitAllowingStateLoss = beginTransaction.commitAllowingStateLoss();
        fragmentManager.executePendingTransactions();
        return commitAllowingStateLoss;
    }
    
    private static boolean a(final Account account, final c c) {
        return account != null && c != null && c.ajS != null && account.ayw != null && !c.a(c) && a(c.ajS.azZ, account);
    }
    
    private static boolean a(final p p2, final Account account) {
        return p2 != null && account != null && p2.equals(account.ayw.aBX);
    }
    
    private void zV() {
        final int mode = this.aDb.getMode();
        this.ws();
        this.aME = true;
        if (mode == 4) {
            this.aDb.AE();
        }
        else {
            this.aDb.AC();
        }
        Folder folder;
        if (this.aqp != null) {
            folder = this.aqp;
        }
        else {
            folder = this.aCQ;
        }
        this.a(folder, true);
        this.bn(false);
        this.bm(true);
    }
    
    @Override
    protected final ActionableToastBar a(final MailActivity mailActivity) {
        final ActionableToastBar a = super.a(mailActivity);
        a.aw(mailActivity.findViewById(2131558825));
        return a;
    }
    
    public final void a(final Fragment fragment, final int n) {
        this.a(fragment, 4097, "tag-custom-fragment");
    }
    
    @Override
    protected final void a(final Conversation conversation, final boolean b) {
        super.a(conversation, b);
        this.aME = false;
        if (conversation == null) {
            this.zV();
            return;
        }
        this.wr();
        if (com.android.mail.c.a(this.aCV)) {
            this.aDb.AF();
        }
        else {
            this.aDb.AD();
        }
        final Z aDz = this.aDz;
        final Account nc = this.Nc;
        final Folder aqp = this.aqp;
        AnimatorListenerAdapter ami;
        if (b) {
            ami = this.aMI;
        }
        else {
            ami = null;
        }
        aDz.a(nc, aqp, conversation, true, ami);
        this.bn(true);
        this.bm(false);
    }
    
    public final void a(final ToastBarOperation toastBarOperation) {
        if (toastBarOperation != null && this.Nc.cy(16384)) {
            final int mode = this.aDb.getMode();
            final aw vn = this.vN();
            switch (mode) {
                case 1:
                case 4: {
                    final ActionableToastBar aDy = this.aDy;
                    ae yp;
                    if (vn != null) {
                        yp = vn.yp();
                    }
                    else {
                        yp = null;
                    }
                    aDy.a(this.b(yp), ag.cG(toastBarOperation.au(this.aCT.xg())), 2131296515, true, true, toastBarOperation);
                }
                case 2:
                case 3: {
                    if (vn != null) {
                        this.aDy.a(this.b(vn.yp()), ag.cG(toastBarOperation.au(this.aCT.xg())), 2131296515, true, true, toastBarOperation);
                        return;
                    }
                    this.aCT.b(toastBarOperation);
                }
            }
        }
    }
    
    public final void a(final dy dy) {
    }
    
    public final boolean a(final KeyEvent keyEvent, final boolean b) {
        return false;
    }
    
    @Override
    protected final void b(final c c) {
        this.ws();
        this.aME = true;
        if (c.a(c)) {
            this.aDb.AE();
        }
        else {
            this.aDb.AC();
        }
        int n;
        if (this.aMH) {
            n = 4099;
        }
        else {
            n = 4097;
        }
        final aw c2 = aw.c(c);
        if (!a(this.Nc, c)) {
            this.aMF = this.a(c2, n, "tag-conversation-list");
        }
        else {
            this.aCQ = c.ajS;
            this.a(c2, n, "tag-conversation-list");
            this.aMF = -1;
        }
        this.aCT.getFragmentManager().executePendingTransactions();
        this.bn(false);
        this.bm(true);
        this.aMH = false;
    }
    
    @Override
    protected final void c(final StringBuilder sb) {
        sb.append(" lastConvListTransId=");
        sb.append(this.aMF);
    }
    
    @Override
    public final boolean cH(final int n) {
        return n != 2131559030 && n != 2131559031 && n != 2131559032 && n != 2131559033 && n != 2131559034 && n != 2131559039 && n != 2131559040 && n != 2131559041 && n != 2131559044 && n != 2131559045 && n != 2131559046 && n != 2131559052 && n != 2131559037;
    }
    
    @Override
    public final void cI(final int n) {
        super.cI(n);
        if (dD.dk(n)) {
            this.aDz.aB(true);
        }
        if (dD.do(n)) {
            this.bm(false);
        }
        if (!dD.dl(n)) {
            this.k((Conversation)null);
        }
    }
    
    public final boolean cM(final int n) {
        return n == 3;
    }
    
    public final void d(final Folder folder, final boolean b) {
        switch (this.aDb.getMode()) {
            default: {}
            case 2:
            case 3: {
                this.b(folder, b);
            }
        }
    }
    
    @Override
    public final void h(final Folder folder) {
        if (this.aDb.AK()) {
            final Intent intent = new Intent();
            intent.putExtra("extra-folder", (Parcelable)folder);
            this.aCT.setResult(-1, intent);
            this.aCT.finish();
            return;
        }
        this.k(folder);
        super.h(folder);
    }
    
    @Override
    public final void n(final Account account) {
        super.n(account);
        this.aMH = true;
        this.vX();
    }
    
    public final void o(final Conversation conversation) {
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        (this.aDP = (DrawerLayout)this.aCT.findViewById(2131558873)).i(this.aCT.xg().getString(2131296445));
        this.aDP.bI();
        (this.aDQ = this.aDP.findViewWithTag((Object)this.aCT.getString(2131296701))).setBackgroundResource(2131361933);
        this.aCT.findViewById(2131558771).setVisibility(8);
        super.onCreate(bundle);
    }
    
    @Override
    public final void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        this.aMF = bundle.getInt("conversation-list-transaction", -1);
        this.aMG = bundle.getInt("conversation-transaction", -1);
        this.aME = bundle.getBoolean("conversation-list-visible");
        this.aMH = bundle.getBoolean("conversation-list-never-shown");
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("conversation-list-transaction", this.aMF);
        bundle.putInt("conversation-transaction", this.aMG);
        bundle.putBoolean("conversation-list-visible", this.aME);
        bundle.putBoolean("conversation-list-never-shown", this.aMH);
    }
    
    @Override
    protected final boolean vP() {
        return this.aME;
    }
    
    public final boolean wL() {
        return true;
    }
    
    public final boolean wb() {
        while (true) {
            Label_0077: {
                if (this.aDb.getMode() == 3) {
                    break Label_0077;
                }
                if (this.aDb.AI() && !a(this.Nc, this.aCV)) {
                    this.wF();
                }
                else {
                    if (!this.aDb.AJ() && !this.aDb.AM()) {
                        break Label_0077;
                    }
                    this.zV();
                }
                this.aDy.f(false, false);
                return true;
            }
            this.aCT.finish();
            continue;
        }
    }
    
    public final boolean wc() {
        final int mode = this.aDb.getMode();
        if (mode == 3) {
            this.aCT.finish();
        }
        else if (mode == 2 || mode == 5) {
            if (Folder.g(this.aqp)) {
                this.wa();
                return true;
            }
            this.wF();
            return true;
        }
        else if (mode == 1 || mode == 4 || mode == 6) {
            this.wb();
            return true;
        }
        return true;
    }
    
    public final void wf() {
    }
    
    @Override
    protected final void wi() {
        super.wi();
        this.a(this.sF(), 4097, "wait-fragment");
    }
    
    @Override
    protected final void wj() {
        if (this.aCQ == null || !a(this.aCQ.azZ, this.Nc)) {
            this.vS();
        }
        else {
            this.a(this.aCQ, false);
        }
        super.wj();
    }
    
    public final int xh() {
        return 0;
    }
    
    public final boolean xq() {
        return false;
    }
    
    public final int xr() {
        return 2130968734;
    }
    
    public final boolean xs() {
        return this.aDb.getMode() == 2;
    }
    
    public final boolean zB() {
        return false;
    }
}
