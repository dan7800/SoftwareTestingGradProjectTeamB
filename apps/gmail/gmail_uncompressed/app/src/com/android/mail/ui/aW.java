package com.android.mail.ui;

import android.support.v4.widget.*;
import com.android.mail.*;
import android.os.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;
import com.google.common.collect.*;
import java.util.*;
import android.app.*;
import android.net.*;
import android.content.*;
import android.content.res.*;
import android.animation.*;
import com.android.mail.browse.*;
import android.view.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.database.*;
import java.io.*;

public final class aw extends Fragment implements af, View$OnClickListener, View$OnKeyListener, AbsListView$OnScrollListener, AdapterView$OnItemClickListener, AdapterView$OnItemLongClickListener, dE, dj, dl
{
    private static int aGI;
    private static int aGJ;
    private static int aGK;
    private static long aHf;
    private static boolean anN;
    private static final String mW;
    private Account Nc;
    private SwipeableListView aFU;
    private av aGL;
    private View aGM;
    private TextView aGN;
    private Runnable aGO;
    private c aGP;
    private ae aGQ;
    private ConversationListFooterView aGR;
    private ConversationListEmptyView aGS;
    private View aGT;
    private TextView aGU;
    private View aGV;
    private View aGW;
    private bx aGX;
    private DataSetObserver aGY;
    private int aGZ;
    private int aHa;
    private boolean aHb;
    private int aHc;
    private boolean aHd;
    private int aHe;
    private final Runnable aHg;
    private final Runnable aHh;
    private boolean aHi;
    private boolean aHj;
    private boolean aHk;
    private MailSwipeRefreshLayout aHl;
    private final aK aHm;
    private as aob;
    private o aql;
    private Folder aqp;
    private ConversationCheckedSet atH;
    private aP atK;
    private final d atL;
    private final Handler mHandler;
    
    static {
        mW = D.AU();
        aw.aGK = 0;
        aw.aHf = -1L;
    }
    
    public aw() {
        this.mHandler = new Handler();
        this.aGO = null;
        this.atL = new ax(this);
        this.aHg = new ay(this, "LoadingRunnable", this);
        this.aHh = new az(this, "CancelLoading", this);
        this.aHk = false;
        this.aHm = new aD(this);
    }
    
    private void a(final Conversation conversation, final int selection) {
        final View child = this.aFU.getChildAt(selection - this.aFU.getFirstVisiblePosition());
        if (child == null || !child.isSelected()) {
            final int firstVisiblePosition = this.aFU.getFirstVisiblePosition();
            final int lastVisiblePosition = this.aFU.getLastVisiblePosition();
            if (child == null || selection < firstVisiblePosition || selection > lastVisiblePosition) {
                this.aFU.setSelection(selection);
            }
            else {
                this.aFU.setSelectionFromTop(selection, child.getTop());
            }
            this.aFU.s(conversation);
        }
    }
    
    private boolean bt(final boolean b) {
        return this.aGL != null && this.aGL.c(this.aqp, b);
    }
    
    public static aw c(final c c) {
        final aw aw = new aw();
        final Bundle arguments = new Bundle(1);
        arguments.putBundle("conversation-list", c.toBundle());
        aw.setArguments(arguments);
        return aw;
    }
    
    private void cR(final int n) {
        E.c(aw.mW, "ConversationListFragment.viewConversation(%d)", n);
        final Object item = this.aGQ.getItem(n);
        if (item != null && item instanceof u) {
            final u u = (u)item;
            final Conversation pg = u.pg();
            pg.position = u.getPosition();
            this.d(pg, true);
            this.aGL.c(pg, false);
            return;
        }
        E.f(aw.mW, "unable to open conv at cursor pos=%s item=%s getPositionOffset=%s", n, item, this.aGQ.cN(n));
    }
    
    private final void setChoiceMode(final int choiceMode) {
        this.aFU.setChoiceMode(choiceMode);
    }
    
    private u vM() {
        if (this.aGL != null) {
            return this.aGL.vM();
        }
        return null;
    }
    
    private void yA() {
        if (!this.aHk && this.aqp != null) {
            final Parcelable ci = this.aob.xY().ci(this.aqp.aAc.toString());
            if (ci != null) {
                this.aFU.onRestoreInstanceState(ci);
            }
            this.aHk = true;
        }
    }
    
    private void yB() {
        if (this.aFU != null && this.aHc != 0) {
            this.aFU.setNextFocusLeftId(this.aHc);
            this.aFU.setNextFocusRightId(this.aHc);
        }
    }
    
    private void ym() {
        this.bt(false);
        this.aFU.setVisibility(0);
        this.aGS.setVisibility(4);
        this.aGW.setVisibility(4);
        this.aGT.setVisibility(4);
    }
    
    private void yv() {
        int n = 1;
        final boolean n2 = this.aGR.n(this.vM());
        this.yx();
        this.aGQ.bs(n2);
        this.aHi = false;
        this.mHandler.removeCallbacks(this.aHg);
        if (this.Nc.ayF != 0) {
            this.bt(false);
            this.aFU.setVisibility(4);
            this.aGS.setVisibility(4);
            this.aGW.setVisibility(4);
            final TextView agu = this.aGU;
            final Object[] array = new Object[n];
            array[0] = this.Nc.getDisplayName();
            agu.setText((CharSequence)this.getString(2131296743, array));
            this.aGT.setVisibility(0);
            return;
        }
        if (this.aGQ.getCount() == 0) {
            if (this.bt(n != 0)) {
                n = 0;
            }
            this.aGS.a(this.aqp, this.aGP.ajT, this.aGQ.qJ(), n != 0);
            this.aFU.setVisibility(4);
            this.aGS.setVisibility(0);
            this.aGW.setVisibility(4);
            this.aGT.setVisibility(4);
            return;
        }
        this.ym();
    }
    
    private void yw() {
        int n = 2131559031;
        final int b = Settings.b(this.Nc.ayw);
        if (b == 2 || !this.Nc.cy(16384) || (this.aqp != null && this.aqp.uU())) {
            this.aFU.bz(false);
        }
        else {
            this.aFU.bz(true);
            Label_0096: {
                if (this.aqp != null) {
                    switch (b) {
                        case 1: {
                            if (this.aqp.cA(8)) {
                                n = 2131559034;
                                break Label_0096;
                            }
                            n = 2131559032;
                            break Label_0096;
                        }
                        case 0: {
                            if (!this.Nc.cy(8) || this.aqp.uT()) {
                                break;
                            }
                            if (this.aqp.cy(16)) {
                                n = 2131559030;
                                break Label_0096;
                            }
                            if (this.aqp.cy(8)) {
                                break Label_0096;
                            }
                            break;
                        }
                    }
                    this.aFU.bz(false);
                    n = 0;
                }
            }
            this.aFU.di(n);
        }
        this.aFU.v(this.Nc);
        this.aFU.p(this.aqp);
    }
    
    private void yx() {
        if (this.aqp != null && this.aqp.uP()) {
            E.c(aw.mW, "CLF.checkSyncStatus still syncing", new Object[0]);
            return;
        }
        E.c(aw.mW, "CLF.checkSyncStatus done syncing", new Object[0]);
        this.aHl.i(false);
    }
    
    private void yz() {
        if (this.aqp == null || this.aqp.aAc == null || this.aGQ.getCursor() == null) {
            return;
        }
        this.aob.xY().a(this.aqp.aAc.toString(), this.aFU.onSaveInstanceState());
    }
    
    public final void b(final int n, final Collection<Conversation> collection, final br br) {
        final Iterator<Conversation> iterator = collection.iterator();
        while (iterator.hasNext()) {
            iterator.next().azn = true;
        }
        final aC ac = new aC(this, br);
        if (this.aFU.Aj() == n) {
            if (!this.aFU.c(collection, ac)) {
                E.f(aw.mW, "ConversationListFragment.requestDelete: listView failed to destroy items.", new Object[0]);
                br.wJ();
            }
            return;
        }
        this.aGQ.b(collection, ac);
    }
    
    public final void bo(final boolean b) {
        if (this.aFU != null) {
            this.aFU.bo(b);
        }
    }
    
    public final void c(final Folder aqp) {
        boolean b = true;
        if (!u.a(this.vM()) && !this.aHi) {
            this.mHandler.postDelayed(this.aHg, (long)aw.aGI);
            this.aHi = b;
        }
        this.aqp = aqp;
        this.yw();
        final MailSwipeRefreshLayout aHl = this.aHl;
        if (c.a(this.aGP)) {
            b = false;
        }
        aHl.setEnabled(b);
        if (this.aqp == null) {
            return;
        }
        this.aGQ.d(this.aqp);
        this.aGR.d(this.aqp);
        if (!this.aqp.vb()) {
            this.aGX.d(this.aqp, false);
        }
        this.yx();
        R.c(this.aqp);
    }
    
    public final void cI(final int n) {
        if (aw.anN && dD.dk(n)) {
            this.ys();
        }
    }
    
    public final void cS(final int aHc) {
        this.aHc = aHc;
        this.yB();
    }
    
    public final void clear() {
        this.aFU.setAdapter((ListAdapter)null);
    }
    
    public final void cq() {
        a.oq().a("menu_item", "swipe_refresh", null, 0L);
        this.aob.yc().we();
        this.aGQ.xD();
        this.aob.a(this.aGQ);
    }
    
    public final void d(final Conversation conversation, final boolean b) {
        if (this.aFU.getChoiceMode() == 0 || conversation == null) {
            return;
        }
        final int position = conversation.position;
        final int n = position + this.aGQ.cN(position);
        this.i(n, b);
        this.a(conversation, n);
    }
    
    public final void i(final int n, final boolean b) {
        if (this.aFU.getChoiceMode() == 0) {
            return;
        }
        if (b) {
            this.aFU.smoothScrollToPosition(n);
        }
        this.aFU.setItemChecked(n, true);
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.aHi = false;
        this.aHj = true;
        if (aw.aHf < 0L) {
            aw.aHf = this.getResources().getInteger(2131427384);
        }
        final Activity activity = this.getActivity();
        if (!(activity instanceof as)) {
            E.f(aw.mW, "ConversationListFragment expects only a ControllableActivity tocreate it. Cannot proceed.", new Object[0]);
        }
        this.aob = (as)activity;
        this.Nc = this.atL.a(this.aob.yd());
        this.aGL = this.aob.xY();
        this.aGX = this.aob.yb();
        final LayoutInflater from = LayoutInflater.from(this.aob.xg());
        (this.aGR = (ConversationListFooterView)from.inflate(2130968657, (ViewGroup)null)).a(this.aob);
        final u vm = this.vM();
        final LoaderManager loaderManager = this.getLoaderManager();
        final aF yh = this.aob.yh();
        Object j;
        if (yh != null) {
            j = ImmutableList.J((Collection<?>)yh.a((Context)activity, this.aob, this.Nc));
        }
        else {
            j = null;
        }
        if (j != null) {
            final Iterator<aL> iterator = ((List<aL>)j).iterator();
            while (iterator.hasNext()) {
                iterator.next().a(loaderManager, bundle);
            }
        }
        (this.aGQ = new ae(this.aob.getApplicationContext(), vm, this.aob.wq(), this.aob, this.aFU, (List<aL>)j)).ax((View)this.aGR);
        if (c.a(this.aGP)) {
            this.aGM = from.inflate(2130968743, (ViewGroup)null);
            this.aGN = (TextView)this.aGM.findViewById(2131558898);
            this.aGQ.ay(this.aGM);
        }
        this.aFU.setAdapter((ListAdapter)this.aGQ);
        this.atH = this.aob.wq();
        this.aFU.d(this.atH);
        this.aGQ.bs(false);
        (this.aql = new aA(this)).a(this.aob.yc());
        this.aGY = new aE(this, (byte)0);
        (this.atK = this.aob.ya()).m(this.aGY);
        aw.anN = ag.b(this.aob.getApplicationContext().getResources());
        this.aHe = this.getResources().getColor(2131362000);
        this.getView().setBackgroundColor(this.aHe);
        this.aFU.setOnScrollListener((AbsListView$OnScrollListener)this);
        this.cI(this.aob.xX().getMode());
        this.aob.xX().a(this);
        if (this.aob.xY().wB()) {
            this.aFU.Ah();
        }
        else {
            this.aFU.Ai();
        }
        if (!this.aob.isFinishing()) {
            int hashCode;
            if (vm == null) {
                hashCode = 0;
            }
            else {
                hashCode = vm.hashCode();
            }
            this.aGZ = hashCode;
            if (vm != null && vm.pf()) {
                vm.sync();
            }
            int int1;
            if (aw.anN) {
                int1 = 1;
            }
            else {
                int1 = 0;
            }
            if (bundle != null) {
                int1 = bundle.getInt("choice-mode-key", int1);
                if (bundle.containsKey("list-state")) {
                    this.aFU.clearChoices();
                }
            }
            this.setChoiceMode(int1);
            this.aHb = true;
            this.c(this.aob.yc().vT());
            this.yu();
            final Folder ajS = this.aGP.ajS;
            if (ajS != null) {
                long n;
                if (ajS.aAg > 0) {
                    n = (long)Math.log10(ajS.aAg);
                }
                else {
                    n = 0L;
                }
                a.oq().a("view_folder", ajS.va(), Long.toString(n), ajS.aAg);
            }
            final ToastBarOperation zy = this.aob.zy();
            if (zy != null) {
                this.aob.b((ToastBarOperation)null);
                this.aob.a(zy);
            }
        }
    }
    
    public final void onClick(final View view) {
        if (view == this.aGV) {
            this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.Nc.ayG)));
        }
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Resources resources = this.getResources();
        aw.aGK = resources.getInteger(2131427356);
        aw.aGI = resources.getInteger(2131427377);
        aw.aGJ = resources.getInteger(2131427378);
        this.aGO = new aB(this);
        this.aGP = c.j(this.getArguments().getBundle("conversation-list"));
        this.Nc = this.aGP.account;
        this.setRetainInstance(false);
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View inflate = layoutInflater.inflate(2130968654, (ViewGroup)null);
        this.aGS = (ConversationListEmptyView)inflate.findViewById(2131558557);
        this.aGT = inflate.findViewById(2131558913);
        this.aGU = (TextView)inflate.findViewById(2131558915);
        (this.aGV = inflate.findViewById(2131558916)).setOnClickListener((View$OnClickListener)this);
        this.aGW = inflate.findViewById(2131558717);
        (this.aFU = (SwipeableListView)inflate.findViewById(2131558716)).setHeaderDividersEnabled(false);
        this.aFU.setOnItemLongClickListener((AdapterView$OnItemLongClickListener)this);
        this.aFU.bz(this.Nc.cy(16384));
        this.aFU.a((dj)this);
        this.aFU.a((dl)this);
        this.aFU.setOnKeyListener((View$OnKeyListener)this);
        this.aFU.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        if (aw.anN && this.aHc == 0) {
            this.aHc = 2131558833;
        }
        this.yB();
        if (ag.Be()) {
            ((ViewGroup)inflate.findViewById(2131558715)).setLayoutTransition(new LayoutTransition());
        }
        this.ym();
        if (bundle != null && bundle.containsKey("list-state")) {
            this.aFU.onRestoreInstanceState(bundle.getParcelable("list-state"));
        }
        (this.aHl = (MailSwipeRefreshLayout)inflate.findViewById(2131558714)).b(2131361983, 2131361984, 2131361985, 2131361986);
        this.aHl.a(this);
        this.aHl.aA((View)this.aFU);
        return inflate;
    }
    
    public final void onDestroy() {
        super.onDestroy();
    }
    
    public final void onDestroyView() {
        this.aGQ.destroy();
        this.aFU.setAdapter((ListAdapter)null);
        this.aob.xX().b(this);
        if (this.aql != null) {
            this.aql.um();
            this.aql = null;
        }
        if (this.aGY != null) {
            this.atK.n(this.aGY);
            this.aGY = null;
        }
        this.atL.um();
        this.aGQ.qD();
        super.onDestroyView();
    }
    
    public final void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        int n3 = 1;
        if (view instanceof bd) {
            int n4;
            if (this.Nc.ayw.aBS == n3) {
                n4 = n3;
            }
            else {
                n4 = 0;
            }
            if (this.atH.isEmpty()) {
                n3 = 0;
            }
            if (n4 == 0 && n3 != 0) {
                ((bd)view).pB();
            }
            else {
                if (n3 != 0) {
                    a.oq().a("peek", null, null, this.atH.size());
                }
                com.android.mail.a.c.os().bb("open_conv_from_list");
                this.cR(n);
            }
            this.bo(ag.b(this.aob.xg().getResources()));
        }
    }
    
    public final boolean onItemLongClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        return view instanceof ConversationItemView && ((ConversationItemView)view).bh("long_press");
    }
    
    public final boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        if (view instanceof SwipeableListView) {
            final SwipeableListView swipeableListView = (SwipeableListView)view;
            if (C.m(n, al.aH((View)swipeableListView))) {
                if (keyEvent.getAction() == 1) {
                    if (this.aHd) {
                        int n2 = swipeableListView.getSelectedItemPosition();
                        if (n2 < 0) {
                            n2 = swipeableListView.getCheckedItemPosition();
                        }
                        if (n2 >= 0) {
                            this.cR(n2);
                            this.bo(ag.b(this.aob.xg().getResources()));
                        }
                    }
                    this.aHd = false;
                }
                else if (keyEvent.getAction() == 0) {
                    return this.aHd = true;
                }
                return true;
            }
            if ((n == 19 || n == 20) && keyEvent.getAction() == 1) {
                final int selectedItemPosition = swipeableListView.getSelectedItemPosition();
                if (selectedItemPosition >= 0) {
                    final Object item = this.aGQ.getItem(selectedItemPosition);
                    if (item != null && item instanceof u) {
                        this.aGL.o(((u)item).pg());
                    }
                }
            }
        }
        return false;
    }
    
    public final void onPause() {
        super.onPause();
        this.atH.b(this.aHm);
        this.yz();
    }
    
    public final void onResume() {
        super.onResume();
        if (!u.a(this.vM())) {
            this.aHb = true;
            this.ym();
        }
        final u vm = this.vM();
        if (vm != null) {
            vm.pj();
            this.yA();
        }
        this.atH.a(this.aHm);
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.aFU != null) {
            bundle.putParcelable("list-state", this.aFU.onSaveInstanceState());
            bundle.putInt("choice-mode-key", this.aFU.getChoiceMode());
        }
        if (this.aGQ != null) {
            this.aGQ.l(bundle);
        }
    }
    
    public final void onScroll(final AbsListView absListView, final int n, final int n2, final int n3) {
        this.aFU.onScroll(absListView, n, n2, n3);
    }
    
    public final void onScrollStateChanged(final AbsListView absListView, final int n) {
        this.aFU.onScrollStateChanged(absListView, n);
        final View view = this.getView();
        if (view != null) {
            if (n != 0) {
                view.setBackgroundResource(0);
                return;
            }
            view.setBackgroundColor(this.aHe);
        }
    }
    
    public final void onStart() {
        super.onStart();
        this.mHandler.postDelayed(this.aGO, (long)aw.aGK);
        a.oq().ba("ConversationListFragment");
    }
    
    public final void onStop() {
        super.onStop();
        this.mHandler.removeCallbacks(this.aGO);
    }
    
    public final void p(final Conversation conversation) {
        if (this.aFU.getChoiceMode() == 0 || conversation == null) {
            return;
        }
        final int position = conversation.position;
        this.a(conversation, position + this.aGQ.cN(position));
    }
    
    public final SwipeableListView pF() {
        return this.aFU;
    }
    
    public final void t(final Collection<Conversation> collection) {
        this.atK.q(collection);
    }
    
    public final String toString() {
        final String string = super.toString();
        if (this.aGP == null) {
            return string;
        }
        final StringBuilder sb = new StringBuilder(string);
        sb.setLength(-1 + sb.length());
        sb.append(" mListAdapter=");
        sb.append(this.aGQ);
        sb.append(" folder=");
        sb.append(this.aGP.ajS);
        if (this.aFU != null) {
            sb.append(" selectedPos=");
            sb.append(this.aFU.Al());
            sb.append(" listSelectedPos=");
            sb.append(this.aFU.getSelectedItemPosition());
            sb.append(" isListInTouchMode=");
            sb.append(this.aFU.isInTouchMode());
        }
        sb.append("}");
        return sb.toString();
    }
    
    public final boolean wo() {
        boolean b = true;
        final ae agq = this.aGQ;
        if (agq == null || !agq.wo()) {
            if (this.aFU == null || !this.aFU.Ak()) {
                b = false;
            }
            if (b) {
                E.d(aw.mW, "CLF.isAnimating=true due to scrolling", new Object[0]);
                return b;
            }
        }
        return b;
    }
    
    public final void yn() {
        this.aHl.setEnabled(false);
    }
    
    public final void yo() {
        this.aHl.setEnabled(true);
    }
    
    public final ae yp() {
        return this.aGQ;
    }
    
    public final void yq() {
        if (!aw.anN) {
            return;
        }
        this.ys();
        this.setChoiceMode(0);
    }
    
    public final void yr() {
        if (!aw.anN) {
            return;
        }
        int choiceMode;
        if (aw.anN) {
            choiceMode = 1;
        }
        else {
            choiceMode = 0;
        }
        this.setChoiceMode(choiceMode);
    }
    
    protected final void ys() {
        final int checkedItemPosition = this.aFU.getCheckedItemPosition();
        if (checkedItemPosition != -1) {
            this.aFU.setItemChecked(checkedItemPosition, false);
        }
    }
    
    public final void yt() {
        this.aGQ.notifyDataSetChanged();
    }
    
    public final void yu() {
        if (this.aGL != null && this.aGQ != null) {
            final u vm = this.aGL.vM();
            if (vm == null && this.aGQ.getCursor() != null) {
                this.yz();
            }
            this.aGQ.swapCursor((Cursor)vm);
            int hashCode;
            if (vm == null) {
                hashCode = 0;
            }
            else {
                hashCode = vm.hashCode();
            }
            if (this.aGZ == hashCode && this.aGZ != 0) {
                this.aGQ.notifyDataSetChanged();
            }
            this.aGZ = hashCode;
            if (vm != null) {
                if (this.aHb) {
                    if (u.a(this.vM())) {
                        if (vm.getCount() == 0) {
                            a.oq().a("empty_state", "post_label_change", this.aqp.va(), 0L);
                        }
                        com.android.mail.a.c.os().a("cold_start_to_list", true, "cold_start_to_list", "from_launcher");
                        if (this.aob.yc().vT().uS()) {
                            com.android.mail.a.c.os().a("search_to_list", true, "search_to_list", null);
                        }
                        this.aHb = false;
                    }
                }
                else if (vm.getCount() == 0 && this.aHa > 0) {
                    a.oq().a("empty_state", "post_delete", this.aqp.va(), 0L);
                }
                this.aHa = vm.getCount();
            }
            else {
                this.aHa = 0;
            }
            if (vm != null) {
                final int count = vm.getCount();
                if (this.aob != null && this.aGM != null) {
                    this.aGN.setText((CharSequence)this.getResources().getString(2131296575, new Object[] { count }));
                }
                if (count > 0) {
                    vm.kc();
                    this.yA();
                }
            }
            final Conversation wm = this.aGL.wm();
            final boolean wn = this.aGL.wn();
            if (wm != null && !wn && this.aFU.getChoiceMode() != 0 && this.aFU.getCheckedItemPosition() == -1) {
                this.d(wm, true);
            }
        }
        if (u.a(this.vM()) && this.aHj) {
            this.yv();
        }
    }
    
    protected final void yy() {
        this.aHl.i(true);
    }
}
