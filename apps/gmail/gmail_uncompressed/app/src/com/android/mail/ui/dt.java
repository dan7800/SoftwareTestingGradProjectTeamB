package com.android.mail.ui;

import android.widget.*;
import android.animation.*;
import android.app.*;
import java.util.*;
import com.android.mail.*;
import com.android.mail.utils.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.providers.*;
import android.os.*;
import android.graphics.drawable.*;
import android.view.*;

public final class dt extends a implements bd
{
    private TwoPaneLayout aNQ;
    private ImageView aNR;
    private List<dy> aNS;
    private boolean aNT;
    private Conversation aNU;
    private dv aNV;
    private final Runnable aNW;
    private boolean aNX;
    private boolean aNY;
    private int aNZ;
    
    public dt(final MailActivity mailActivity, final dD dd) {
        super(mailActivity, dd);
        this.aNS = new ArrayList<dy>();
        this.aNW = new du(this);
        this.aNX = false;
        this.aNZ = -1;
    }
    
    private boolean Ap() {
        return (this.aDb.AJ() || this.aDb.AM()) && !this.aNQ.Az();
    }
    
    private int Ar() {
        if (this.Aq()) {
            return 16908298;
        }
        return 2131558833;
    }
    
    private void As() {
        if (this.aNV != null) {
            this.aDz.a(this.Nc, this.aqp, this.aNV.amQ, false, null);
            this.aNV = null;
        }
    }
    
    private void At() {
        if (this.aNQ.Ax()) {
            this.wr();
            return;
        }
        this.ws();
    }
    
    private boolean Au() {
        final boolean b = this.aDb.AJ() && this.aNT && this.aCW != null;
        if (b) {
            this.aNT = false;
            this.h(this.aCW);
        }
        return b;
    }
    
    private void a(final Conversation conversation, final boolean ant, final boolean b) {
        if (!ant && conversation != null && conversation.equals(this.aCW) && this.Au()) {
            E.d(dt.mW, "peek->normal: marking current CV seen. conv=%s", this.aCW);
        }
        else {
            super.b(conversation, this.aNT = ant);
            if (this.aCT != null) {
                if (conversation == null) {
                    this.bC(true);
                    return;
                }
                this.At();
                this.aNV = new dv(conversation, b);
                final int mode = this.aDb.getMode();
                E.d(dt.mW, "IN TPC.showConv, oldMode=%s conv=%s", this.aDb, this.aNV.amQ);
                if (mode == 3 || mode == 4) {
                    this.aDb.AF();
                }
                else {
                    this.aDb.AD();
                }
                if (!this.aNQ.Ay()) {
                    this.bn(true);
                    return;
                }
                E.d(dt.mW, "TPC.showConversation will wait for TPL.animationEnd to show!", new Object[0]);
            }
        }
    }
    
    private void bA(final boolean b) {
        final bB vo = this.vO();
        if (vo == null) {
            E.e(dt.mW, "no drawer to toggle open/closed", new Object[0]);
        }
        else {
            vo.bw(b);
            this.aNQ.bD(b);
            this.wf();
            final aw vn = this.vN();
            if (vn != null) {
                vn.cS(this.Ar());
                final SwipeableListView pf = vn.pF();
                if (pf != null) {
                    if (b) {
                        pf.Ai();
                        return;
                    }
                    pf.Ah();
                }
            }
        }
    }
    
    private boolean bC(final boolean b) {
        this.aDy.f(false, false);
        if (this.Aq()) {
            this.wa();
        }
        else {
            final int mode = this.aDb.getMode();
            if (mode == 3) {
                this.aCT.finish();
            }
            else if (dD.dl(mode) || this.aDb.AM()) {
                if (this.aNY && !b) {
                    this.aCT.finish();
                }
                else if (mode == 4) {
                    this.aDb.AE();
                }
                else {
                    this.aDb.AC();
                }
            }
            else {
                final bB vo = this.vO();
                if (mode == 2 && vo != null && !Folder.g(this.aqp)) {
                    this.wF();
                }
                else if (!b) {
                    this.aCT.finish();
                }
            }
        }
        return true;
    }
    
    public final boolean Aq() {
        final bB vo = this.vO();
        return vo != null && !vo.zj();
    }
    
    public final List<dy> Av() {
        return this.aNS;
    }
    
    public final void a(final Fragment fragment, final int n) {
        final FragmentManager fragmentManager = this.aCT.getFragmentManager();
        if (fragmentManager.findFragmentByTag("tag-custom-fragment") == null) {
            final FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            beginTransaction.addToBackStack((String)null);
            beginTransaction.replace(2131558966, fragment, "tag-custom-fragment");
            this.aNZ = beginTransaction.commitAllowingStateLoss();
            fragmentManager.executePendingTransactions();
        }
        if (n >= 0) {
            this.vN().i(n, true);
        }
    }
    
    @Override
    public final void a(final ConversationCheckedSet set) {
        int n = 1;
        super.a(set);
        if (this.Nc.ayw.aBS != n) {
            n = 0;
        }
        if (n == 0 && this.aDb.AI()) {
            this.vN().yq();
        }
    }
    
    public final void a(final ToastBarOperation toastBarOperation) {
        final int mode = this.aDb.getMode();
        final aw vn = this.vN();
        switch (mode) {
            case 1:
            case 2:
            case 3:
            case 4: {
                if (vn != null) {
                    this.aDy.a(this.b(vn.yp()), ag.cG(toastBarOperation.au(this.aCT.xg())), 2131296515, true, true, toastBarOperation);
                    return;
                }
                break;
            }
        }
    }
    
    public final void a(final dy dy) {
        this.aNS.add(dy);
    }
    
    @Override
    protected final void a(final Collection<Conversation> collection, final int n) {
        if (!this.aNY || n != 3) {
            super.a(collection, n);
            return;
        }
        final Conversation a = this.aDv.a(1, collection);
        E.d(dt.mW, "showNextConversation(2P-land): showing %s next.", a);
        this.a(a, true, false);
    }
    
    public final boolean a(final KeyEvent keyEvent, final boolean b) {
        if (b) {
            if (keyEvent.getAction() == 1) {
                final aw vn = this.vN();
                if (vn != null) {
                    vn.pF().requestFocus();
                }
            }
            return true;
        }
        return false;
    }
    
    @Override
    protected final void b(final c c) {
        if ("android.intent.action.SEARCH".equals(this.aCT.getIntent().getAction())) {
            if (this.wh()) {
                this.aDb.AF();
            }
            else {
                this.aDb.AE();
            }
        }
        if (this.aCT != null) {
            final FragmentTransaction beginTransaction = this.aCT.getFragmentManager().beginTransaction();
            beginTransaction.setTransition(4099);
            final aw c2 = aw.c(this.aCV);
            beginTransaction.replace(2131558962, (Fragment)c2, "tag-conversation-list");
            beginTransaction.commitAllowingStateLoss();
            c2.cS(this.Ar());
        }
    }
    
    @Override
    protected final void b(final Conversation conversation, final boolean b) {
        this.a(conversation, b, false);
    }
    
    protected final void bB(final boolean b) {
        this.bA(b);
    }
    
    @Override
    public final void bm(final boolean b) {
        super.bm(b);
        this.At();
    }
    
    @Override
    public final void bn(final boolean b) {
        super.bn(b);
        if (!b) {
            this.aDz.aB(false);
        }
        else if (this.aNV != null) {
            if (this.aNV.aOb) {
                this.mHandler.removeCallbacks(this.aNW);
                this.mHandler.postDelayed(this.aNW, 500L);
            }
            else {
                this.As();
            }
        }
        if (this.aNY) {
            final ImageView anr = this.aNR;
            int visibility = 0;
            if (b) {
                visibility = 8;
            }
            anr.setVisibility(visibility);
        }
    }
    
    @Override
    public final void c(final Conversation conversation, final boolean b) {
        if (this.Aq()) {
            this.wa();
        }
        super.c(conversation, b);
        if (!this.aNT) {
            this.aDz.qB();
        }
    }
    
    @Override
    protected final void c(final StringBuilder sb) {
        sb.append(" mPeeking=");
        sb.append(this.aNT);
        sb.append(" mSavedPeekConv=");
        sb.append(this.aNU);
        if (this.aNV != null) {
            sb.append(" mToShow.conv=");
            sb.append(this.aNV.amQ);
            sb.append(" mToShow.dueToKeyboard=");
            sb.append(this.aNV.aOb);
        }
        sb.append(" mLayout=");
        sb.append(this.aNQ);
    }
    
    @Override
    public final boolean c(final Folder folder, final boolean b) {
        if (this.aNY) {
            if (!b) {
                this.aNR.setImageResource(2130837696);
            }
            else {
                o.a(this.aNR, folder);
            }
            return true;
        }
        return false;
    }
    
    @Override
    public final boolean cH(final int n) {
        return n == 2131559020 || n == 2131558671 || n == 2131559021 || n == 2131558416;
    }
    
    @Override
    public final void cI(final int n) {
        if (!this.aNX && this.aNZ >= 0) {
            this.aCT.getFragmentManager().popBackStackImmediate(this.aNZ, 1);
            this.aNZ = -1;
        }
        this.aNX = false;
        super.cI(n);
        if (n != 5) {
            this.wj();
        }
        if (n == 1 || n == 2 || dD.do(n)) {
            this.At();
        }
    }
    
    public final boolean cM(final int n) {
        return n == 3 || (this.aNY && n == 4);
    }
    
    public final void d(final Folder folder, final boolean b) {
        this.b(folder, b);
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
        if (this.aDb.getMode() != 2) {
            this.aDb.AC();
        }
        this.k(folder);
        super.h(folder);
    }
    
    @Override
    protected final void i(final Conversation anu) {
        if (this.aNT && !this.aNY && this.aDb.AJ()) {
            E.d(dt.mW, "restoring peek to port orientation", new Object[0]);
            this.aDz.a(this.Nc, this.aqp, anu, false, null);
            this.aDz.qz();
            this.aDz.aB(false);
            this.aNU = anu;
            this.aDb.AC();
            return;
        }
        if (this.aNT && this.aNY) {
            this.a(anu, true, false);
            return;
        }
        super.i(anu);
    }
    
    @Override
    public final void k(final Conversation conversation) {
        long id = -1L;
        long id2;
        if (this.aCW != null) {
            id2 = this.aCW.id;
        }
        else {
            id2 = id;
        }
        if (conversation != null) {
            id = conversation.id;
        }
        final boolean b = id2 != id;
        if (b) {
            E.d(dt.mW, "TPC.setCurrentConv w/ new conv. new=%s old=%s newPeek=%s", conversation, this.aCW, this.aNT);
        }
        super.k(conversation);
        final aw vn = this.vN();
        if (b && vn != null && conversation != null) {
            if (!this.aNT) {
                vn.d(conversation, b);
                return;
            }
            vn.ys();
            vn.p(conversation);
        }
    }
    
    @Override
    public final void l(final Conversation conversation) {
        if (!e.b(conversation, this.aCW)) {
            E.d(dt.mW, "CPA reported a page change. resetting peek to false. new conv=%s", conversation);
            this.aNT = false;
        }
        super.l(conversation);
    }
    
    @Override
    public final void m(final Account account) {
        if (this.aDb.AK()) {
            final Intent intent = new Intent();
            intent.putExtra("extra-account", (Parcelable)account);
            this.aCT.setResult(-1, intent);
            this.aCT.finish();
            return;
        }
        if (this.aDb.getMode() != 2) {
            this.aDb.AC();
        }
        super.m(account);
    }
    
    public final void o(final Conversation conversation) {
        if (this.aNY) {
            this.a(conversation, true, true);
        }
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        this.aNQ = (TwoPaneLayout)this.aCT.findViewById(2131558959);
        this.aNR = (ImageView)this.aCT.findViewById(2131558965);
        if (this.aNQ == null) {
            E.g(dt.mW, "mLayout is null!", new Object[0]);
        }
        else {
            this.aNQ.b(this);
            this.aCT.getWindow().setBackgroundDrawable((Drawable)null);
            this.aNY = this.aCT.getResources().getBoolean(2131623944);
            final bB vo = this.vO();
            vo.zi();
            vo.bv(true);
            if (bundle != null) {
                this.aNX = bundle.getBoolean("saved-miscellaneous-view", false);
                this.aNZ = bundle.getInt("saved-miscellaneous-view-transaction-id", -1);
            }
            this.aDb.a(this.aNQ);
            super.onCreate(bundle);
            if (bundle != null) {
                this.aNT = bundle.getBoolean("saved-peeking", false);
                this.aNU = (Conversation)bundle.getParcelable("saved-peeking-conv");
            }
        }
    }
    
    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacks(this.aNW);
    }
    
    @Override
    public final void onPrepareOptionsMenu(final Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (this.aCW != null) {
            if (!this.aNT) {
                ag.a(menu, 2131559051, false);
                return;
            }
            final boolean aza = this.aCW.aza;
            boolean b = false;
            if (!aza) {
                b = true;
            }
            ag.a(menu, 2131559051, b);
            ag.a(menu, 2131559035, this.aCW.aza);
        }
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("saved-miscellaneous-view", this.aNZ >= 0);
        bundle.putInt("saved-miscellaneous-view-transaction-id", this.aNZ);
        bundle.putBoolean("saved-peeking", this.aNT);
        bundle.putParcelable("saved-peeking-conv", (Parcelable)this.aNU);
    }
    
    @Override
    public final void onWindowFocusChanged(final boolean b) {
        if (b && !this.aNQ.Ax()) {
            this.bl(true);
        }
    }
    
    @Override
    public final void pC() {
        int n = 1;
        super.pC();
        if (this.Nc.ayw.aBS != n) {
            n = 0;
        }
        if (n == 0 && this.aDb.AI()) {
            this.vN().yr();
        }
    }
    
    @Override
    protected final boolean vP() {
        return !this.aNQ.Ax();
    }
    
    @Override
    public final boolean wB() {
        return this.Aq();
    }
    
    public final boolean wL() {
        return false;
    }
    
    @Override
    protected final void wa() {
        final bB vo = this.vO();
        if (vo == null) {
            E.e(dt.mW, "no drawer to toggle open/closed", new Object[0]);
            return;
        }
        final boolean zj = vo.zj();
        boolean b = false;
        if (!zj) {
            b = true;
        }
        this.bA(b);
    }
    
    public final boolean wb() {
        return this.bC(false);
    }
    
    public final boolean wc() {
        if (this.Ap()) {
            this.bC(false);
        }
        else if (Folder.g(this.aqp)) {
            this.wa();
        }
        else {
            this.wF();
        }
        return true;
    }
    
    @Override
    protected final void wd() {
        if (this.aNY) {
            this.aNT = true;
            this.aCT.D();
            return;
        }
        super.wd();
    }
    
    public final void wf() {
        int homeActionContentDescription = 0;
        final android.support.v7.app.a cf = this.aCT.cF();
        boolean b;
        if (this.vT() != null && !ag.D(this.vT().aAq)) {
            b = true;
        }
        else {
            b = false;
        }
        android.support.v7.app.a a;
        if (this.Ap() || b) {
            cf.setHomeAsUpIndicator(2130837627);
            a = cf;
        }
        else {
            cf.setHomeAsUpIndicator(2130837719);
            if (this.Aq()) {
                homeActionContentDescription = 2131296654;
                a = cf;
            }
            else {
                homeActionContentDescription = 2131296653;
                a = cf;
            }
        }
        a.setHomeActionContentDescription(homeActionContentDescription);
    }
    
    @Override
    protected final void wi() {
        super.wi();
        final FragmentTransaction beginTransaction = this.aCT.getFragmentManager().beginTransaction();
        beginTransaction.setTransition(4097);
        beginTransaction.replace(2131558962, (Fragment)this.sF(), "wait-fragment");
        beginTransaction.commitAllowingStateLoss();
    }
    
    @Override
    protected final void wj() {
        final dF sf = this.sF();
        if (sf != null) {
            final FragmentTransaction beginTransaction = this.aCT.getFragmentManager().beginTransaction();
            beginTransaction.remove((Fragment)sf);
            beginTransaction.commitAllowingStateLoss();
            super.wj();
            if (this.aDb.AL()) {
                this.vS();
            }
        }
    }
    
    @Override
    public final boolean wn() {
        return this.aNT;
    }
    
    @Override
    protected final void wv() {
        super.wv();
        if (!this.aDb.AM() && this.aCW == null && this.aNY && this.aDh.getCount() > 0) {
            Conversation conversation;
            if (this.aNT && this.aNU != null) {
                conversation = this.aNU;
                this.aNU = null;
                E.d(dt.mW, "peeking at saved conv=%s", conversation);
            }
            else {
                this.aDh.moveToPosition(0);
                conversation = this.aDh.pg();
                conversation.position = 0;
                E.d(dt.mW, "peeking at default/zeroth conv=%s", conversation);
            }
            this.a(conversation, true, false);
        }
    }
    
    protected final void x(final float n) {
        final bB vo = this.vO();
        if (vo == null) {
            E.e(dt.mW, "no drawer to toggle open/closed", new Object[0]);
            return;
        }
        vo.x(n);
    }
    
    public final int xh() {
        return 1;
    }
    
    public final boolean xq() {
        return this.aNQ.Az();
    }
    
    public final int xr() {
        return 2130968769;
    }
    
    public final boolean xs() {
        final int mode = this.aDb.getMode();
        return mode == 2 || (this.aNY && mode == 1);
    }
    
    @Override
    public final boolean yY() {
        return this.Aq();
    }
    
    @Override
    public final void yZ() {
        if (this.Aq()) {
            this.wa();
        }
    }
    
    public final boolean zB() {
        return this.aNY;
    }
    
    @Override
    public final void za() {
        if (this.Au()) {
            E.d(dt.mW, "TPC: tap on CV triggered peek->normal, marking seen. conv=%s", this.aCW);
        }
    }
    
    protected final void zk() {
        final bB vo = this.vO();
        if (vo == null) {
            E.e(dt.mW, "no drawer to toggle open/closed", new Object[0]);
            return;
        }
        vo.zk();
    }
}
