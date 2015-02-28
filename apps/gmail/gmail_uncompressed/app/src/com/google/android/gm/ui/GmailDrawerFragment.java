package com.google.android.gm.ui;

import com.google.android.gms.people.model.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import android.support.v4.widget.*;
import com.android.mail.i.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import com.android.mail.ui.*;
import java.util.*;
import com.google.android.gms.people.accountswitcherview.*;
import com.android.mail.providers.*;

public class GmailDrawerFragment extends bt implements p, q, N, Q
{
    private static final String mW;
    private n bbm;
    private i bpZ;
    private r bqa;
    private com.google.android.gms.people.model.e bqb;
    private final android.support.v4.f.n<String, d> bqc;
    private final android.support.v4.f.n<String, C> bqd;
    private final Set<String> bqe;
    private SelectedAccountNavigationView bqf;
    private final s bqg;
    private List<d> bqh;
    private d bqi;
    private t bqj;
    private F bqk;
    
    static {
        mW = D.AU();
    }
    
    public GmailDrawerFragment() {
        this.bqc = new android.support.v4.f.n<String, d>();
        this.bqd = new android.support.v4.f.n<String, C>();
        this.bqe = new LinkedHashSet<String>();
        this.bqg = new s(this, (byte)0);
    }
    
    private void Ir() {
        try {
            this.bqe.clear();
            for (final d d : this.bqf.UY()) {
                if (d != null) {
                    this.bqe.add(d.FP());
                }
            }
        }
        catch (IllegalArgumentException ex) {
            E.d(E.TAG, ex, "Data buffer is closed for recent accounts", new Object[0]);
        }
    }
    
    private void a(final SelectedAccountNavigationView selectedAccountNavigationView, final boolean b) {
        final int navigationMode = selectedAccountNavigationView.getNavigationMode();
        String s;
        if (navigationMode == 0) {
            this.setListAdapter((ListAdapter)this.zn());
            s = "default_list";
        }
        else if (navigationMode == 1) {
            this.setListAdapter((ListAdapter)this.bqa);
            s = "account_list";
        }
        else {
            E.f(GmailDrawerFragment.mW, "Unknown navigation mode: %s", navigationMode);
            s = "error";
        }
        if (b) {
            a.oq().a("account_switcher", "nav_mode", s, 0L);
        }
    }
    
    private static void a(final com.google.android.gms.people.model.e e) {
        if (e != null && !e.isClosed()) {
            e.close();
        }
    }
    
    private void b(final d d) {
        this.Ir();
        this.s(((C)d).oN());
    }
    
    private void c(final d bqi) {
        if (bqi == null) {
            this.bqi = null;
        }
        else {
            final d bqi2 = this.bqi;
            this.bqi = bqi;
            if (this.bqh != null) {
                this.bqh = r.a(this.bqh, bqi2, this.bqi);
                this.bqf.d(this.bqi);
                this.bqa.S(this.bqh);
            }
        }
    }
    
    @SuppressLint({ "NewApi" })
    @Override
    protected final void a(final LayoutInflater layoutInflater, final View view, final ListView listView) {
        this.bqf = (SelectedAccountNavigationView)layoutInflater.inflate(2130968622, (ViewGroup)listView, false);
        if (ag.Bh()) {
            final FrameLayout frameLayout = (FrameLayout)view;
            frameLayout.setFitsSystemWindows(true);
            frameLayout.setOnApplyWindowInsetsListener((View$OnApplyWindowInsetsListener)new B(this, (byte)0));
            frameLayout.setForegroundGravity(55);
            frameLayout.setForeground((Drawable)(this.bqk = new F()));
        }
        this.bqf.UZ();
        this.bqf.d(this.bbm);
        this.bpZ = new com.google.android.gm.ui.D((Context)this.getActivity(), this.bbm, this.bqd);
        this.bqf.a(this.bpZ);
        this.bqf.a((N)this);
        this.bqf.a((Q)this);
        this.bqf.a(new A((byte)0), new y((byte)0));
        this.bqf.setNavigationMode(0);
        listView.addHeaderView((View)this.bqf);
    }
    
    @Override
    public final void a(final com.google.android.gms.common.a a) {
        E.e(GmailDrawerFragment.mW, "GoogleApiClient connection failed", new Object[0]);
    }
    
    @Override
    public final void a(final SelectedAccountNavigationView selectedAccountNavigationView) {
        this.a(selectedAccountNavigationView, true);
    }
    
    @Override
    public final void a(final d d) {
        this.b(d);
        a.oq().a("account_switcher", "recents", "sanv_click", 0L);
    }
    
    @Override
    protected final void cZ(final int n) {
        final int n2 = n - this.getListView().getHeaderViewsCount();
        final int navigationMode = this.bqf.getNavigationMode();
        if (navigationMode == 0) {
            super.cZ(n);
            return;
        }
        if (navigationMode == 1) {
            final int itemViewType = this.bqa.getItemViewType(n2);
            String s = null;
            Label_0073: {
                if (itemViewType == 0) {
                    this.c(this.bqa.eR(n2));
                    this.b(this.bqi);
                    s = "account_click";
                }
                else if (itemViewType == 1) {
                    com.google.android.gm.a.h(this.getActivity());
                    s = "add_accounts_click";
                }
                else {
                    if (itemViewType == 2) {
                        final Intent intent = new Intent("android.settings.SYNC_SETTINGS");
                        intent.addFlags(524288);
                        intent.putExtra("authorities", new String[] { "gmail-ls", "com.google.android.gm.email.provider" });
                        while (true) {
                            try {
                                this.startActivity(intent);
                                s = "manage_accounts_click";
                                break Label_0073;
                            }
                            catch (ActivityNotFoundException ex) {
                                E.e(GmailDrawerFragment.mW, (Throwable)ex, "No sync settings activity found.", new Object[0]);
                                continue;
                            }
                            break;
                        }
                    }
                    s = "error";
                }
            }
            a.oq().a("account_switcher", "account_list", s, 0L);
            return;
        }
        E.f(GmailDrawerFragment.mW, "Unknown navigation mode: %s", navigationMode);
    }
    
    @Override
    public final void dz(final int n) {
        E.e(GmailDrawerFragment.mW, "GoogleApiClient connection suspended", new Object[0]);
    }
    
    @Override
    public void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final bs wc = this.aob.wC();
        if (wc != null) {
            wc.b(this.bqg);
        }
    }
    
    @Override
    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        this.bbm = new o(this.getActivity().getApplicationContext()).a(com.google.android.gms.people.q.cgG, new com.google.android.gms.people.t().US().UT()).c((p)this).c((q)this).Ky();
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }
    
    public void onDestroy() {
        if (this.bpZ != null) {
            this.bpZ.close();
        }
        this.bpZ = null;
        if (this.bqa != null) {
            this.bqa.disconnect();
        }
        super.onDestroy();
        a(this.bqb);
        this.bqb = null;
    }
    
    @Override
    public void onDestroyView() {
        if (this.aob != null) {
            final bs wc = this.aob.wC();
            if (wc != null) {
                wc.c(this.bqg);
            }
        }
        super.onDestroyView();
    }
    
    @Override
    public void onPause() {
        super.onPause();
        this.Ir();
        g.ao((Context)this.getActivity()).h(this.bqe);
    }
    
    public void onResume() {
        super.onResume();
        final Set<String> tu = g.ao((Context)this.getActivity()).tU();
        if (tu != null) {
            this.bqe.clear();
            this.bqe.addAll(tu);
        }
    }
    
    @Override
    public void onStart() {
        super.onStart();
        if (this.bbm != null && !this.bbm.isConnected() && !this.bbm.isConnecting()) {
            this.bbm.connect();
        }
    }
    
    @Override
    public void onStop() {
        if (this.bbm != null && (this.bbm.isConnected() || this.bbm.isConnecting())) {
            this.bbm.disconnect();
        }
        super.onStop();
    }
    
    @Override
    public final void r(final Bundle bundle) {
        E.d(GmailDrawerFragment.mW, "GoogleApiClient connected.", new Object[0]);
        if (this.bbm.isConnected()) {
            com.google.android.gms.people.q.cgI.a(this.bbm, new com.google.android.gms.people.g().UN()).a(new com.google.android.gm.ui.o(this));
        }
    }
    
    @Override
    public final void vg() {
        this.Ir();
        this.zl();
    }
    
    @Override
    protected final bF zh() {
        return null;
    }
    
    @Override
    public final void zl() {
        C c = null;
        Label_0009: {
            if (!this.aJq) {
                final Account[] uo = this.uo();
                final ArrayList bqh = new ArrayList<d>(uo.length);
                final String zm = this.zm();
                E.c(E.TAG, "rebuildAccountList: current=%s", zm);
                this.bqd.clear();
                final int length = uo.length;
                int i = 0;
                C c2 = null;
                while (i < length) {
                    final Account account = uo[i];
                    E.c(E.TAG, "account = %s, owner=%s", account, this.bqc.get(account.lw()));
                    final C c3 = new C(this.bqc.get(account.lw()), account, this.k(account));
                    bqh.add(c3);
                    this.bqd.put(account.lw(), c3);
                    if (zm.equals(account.lw())) {
                        c2 = c3;
                    }
                    ++i;
                }
                final Iterator<String> iterator = this.bqe.iterator();
                C c4 = null;
            Label_0319_Outer:
                while (true) {
                    while (true) {
                        Label_0694: {
                            final C c5;
                            if (iterator.hasNext()) {
                                final String s = iterator.next();
                                E.c(E.TAG, "selectedAccount = %s, account = %s", c2, s);
                                if (c2 != null && s.equals(c2.FP())) {
                                    continue Label_0319_Outer;
                                }
                                if (c == null) {
                                    c = this.bqd.get(s);
                                    continue Label_0319_Outer;
                                }
                                if (c4 != null) {
                                    break Label_0694;
                                }
                                c5 = this.bqd.get(s);
                            }
                            else {
                                Iterator<d> iterator2;
                                C c6;
                                d d = null;
                                IllegalArgumentException ex;
                                C c7;
                                String tag;
                                Object[] array;
                                String string;
                                String string2;
                                Label_0338_Outer:Label_0425_Outer:
                                while (true) {
                                    while (true) {
                                        while (true) {
                                            Label_0701: {
                                                while (true) {
                                                    try {
                                                        iterator2 = bqh.iterator();
                                                        c6 = c4;
                                                        try {
                                                            while (iterator2.hasNext()) {
                                                                d = iterator2.next();
                                                                E.c(E.TAG, "owner = %s", ((C)d).oN().lw());
                                                                if (c2 != null && d.FP().equals(c2.FP())) {
                                                                    continue Label_0338_Outer;
                                                                }
                                                                break Label_0701;
                                                            }
                                                            if (this.bqa == null) {
                                                                (this.bqa = new r((Context)this.getActivity(), new com.google.android.gm.ui.r((byte)0), new com.google.android.gm.ui.p((byte)0))).UX();
                                                                this.bqa.a(this.bpZ);
                                                                this.bqa.UW();
                                                            }
                                                            this.bqh = (List<d>)bqh;
                                                            this.c(c2);
                                                            this.bqa.S(this.bqh);
                                                            this.bqf.a(c, c6);
                                                            if (this.bqj != null) {
                                                                this.bqj.a(c2, c, c6);
                                                                return;
                                                            }
                                                            break Label_0009;
                                                            // iftrue(Label_0338:, c6 != null || d.FP().equals((Object)c.FP()))
                                                            c6 = (C)d;
                                                            continue Label_0425_Outer;
                                                        }
                                                        catch (IllegalArgumentException ex2) {
                                                            ex = ex2;
                                                            c4 = c6;
                                                            c7 = c;
                                                        }
                                                        tag = E.TAG;
                                                        array = new Object[2];
                                                        if (c7 != null) {
                                                            string = c7.oN().toString();
                                                        }
                                                        else {
                                                            string = "null";
                                                        }
                                                        array[0] = string;
                                                        if (c4 != null) {
                                                            string2 = c4.oN().toString();
                                                        }
                                                        else {
                                                            string2 = "null";
                                                        }
                                                        array[1] = string2;
                                                        E.b(tag, ex, "Owner's buffer is closed. recent1=%s, recent2=%s", array);
                                                        return;
                                                    }
                                                    catch (IllegalArgumentException ex3) {
                                                        ex = ex3;
                                                        c7 = c;
                                                        continue Label_0319_Outer;
                                                    }
                                                    break;
                                                }
                                                break Label_0694;
                                            }
                                            if (c == null) {
                                                c = (C)d;
                                                continue Label_0425_Outer;
                                            }
                                            break;
                                        }
                                        continue Label_0319_Outer;
                                    }
                                }
                            }
                            c4 = c5;
                            continue Label_0319_Outer;
                        }
                        C c5 = c4;
                        continue;
                    }
                }
            }
        }
    }
    
    @Override
    protected final void zp() {
        this.bqj = new t(this, (byte)0);
    }
    
    @Override
    protected final ListAdapter zq() {
        return (ListAdapter)this.bqj;
    }
}
