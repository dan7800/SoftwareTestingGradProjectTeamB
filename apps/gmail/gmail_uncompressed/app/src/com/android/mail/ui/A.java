package com.android.mail.ui;

import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import com.android.mail.a.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

public abstract class a implements View$OnClickListener, ac, bw
{
    protected static final String mW;
    protected ContentResolver Hb;
    protected Account Nc;
    private final String aCN;
    private final String aCO;
    private final String aCP;
    protected Folder aCQ;
    private boolean aCR;
    protected S aCS;
    protected final MailActivity aCT;
    protected final cN aCU;
    protected c aCV;
    protected Conversation aCW;
    protected cx aCX;
    private Uri aCY;
    private final Bundle aCZ;
    private final w aDA;
    private final com.android.mail.ui.y aDB;
    private final t aDC;
    private br aDD;
    protected ak aDE;
    private Folder aDF;
    private final int aDG;
    private boolean aDH;
    private dF aDI;
    protected boolean aDJ;
    private DialogInterface$OnClickListener aDK;
    private int aDL;
    private boolean aDM;
    private Conversation aDN;
    private Runnable aDO;
    protected DrawerLayout aDP;
    protected View aDQ;
    protected android.support.v7.app.t aDR;
    protected ListView aDS;
    protected boolean aDT;
    private boolean aDU;
    private final C aDV;
    private boolean aDW;
    private final l aDX;
    private final DataSetObserver aDY;
    private final A aDZ;
    private da aDa;
    protected final dD aDb;
    protected boolean aDc;
    private ak aDd;
    private final boolean aDe;
    private boolean aDf;
    private final Set<Uri> aDg;
    protected u aDh;
    private final DataSetObservable aDi;
    private Runnable aDj;
    private Account[] aDk;
    private p aDl;
    private boolean aDm;
    private final ArrayList<B> aDn;
    private D aDo;
    private final DataSetObservable aDp;
    private final DataSetObservable aDq;
    private final DataSetObservable aDr;
    private final DataSetObservable aDs;
    private final DataSetObservable aDt;
    private final int aDu;
    protected final aI aDv;
    aO aDw;
    protected View aDx;
    protected ActionableToastBar aDy;
    protected Z aDz;
    protected Folder aqp;
    private final ConversationCheckedSet atH;
    private final aj ate;
    private boolean bQ;
    private final FragmentManager c;
    protected final Context mContext;
    protected Handler mHandler;
    
    static {
        mW = com.android.mail.utils.D.AU();
    }
    
    public a(final MailActivity act, final dD aDb) {
        this.aCN = "account";
        this.aCO = "folder";
        this.aCP = "ignore-initial-conversation-limit";
        this.aCR = false;
        this.aCZ = new Bundle();
        this.aDa = null;
        this.mHandler = new Handler();
        this.aDc = false;
        this.aDf = true;
        this.aDg = new HashSet<Uri>();
        this.aDi = new F("List");
        this.aDj = null;
        this.aDk = new Account[0];
        this.aDn = new ArrayList<B>();
        this.aDp = new F("Account");
        this.aDq = new F("RecentFolder");
        this.aDr = new F("AllAccounts");
        this.aDs = new F("CurrentFolder");
        this.aDt = new F("FolderOrAccount");
        this.atH = new ConversationCheckedSet();
        this.aDA = new w(this, (byte)0);
        this.aDB = new com.android.mail.ui.y(this, (byte)0);
        this.aDC = new t(this, (byte)0);
        this.aDJ = false;
        this.aDL = -1;
        this.aDN = null;
        this.aDO = null;
        this.aDV = new C(this);
        this.aDX = new l();
        this.aDY = new b(this);
        this.aDZ = new A(this, (byte)0);
        this.aCT = act;
        this.c = this.aCT.getFragmentManager();
        this.aDb = aDb;
        this.mContext = act.getApplicationContext();
        this.aCU = new cN(this.mContext);
        this.aDv = new aI(this);
        this.atH.a(this);
        final Resources resources = this.mContext.getResources();
        this.aDu = resources.getInteger(2131427365);
        this.aDG = resources.getInteger(2131427366);
        this.ate = aj.c(act.getResources());
        this.aDe = ag.b(resources);
        this.aDU = false;
    }
    
    private be a(final int n, final Conversation conversation) {
        int n2 = 1;
        final Collection<Conversation> g = Conversation.g(conversation);
        while (true) {
            Label_0140: {
                if (this.Nc == null || this.Nc.ayw == null || this.aDv == null || this.aDv.a(this.Nc.ayw.vH(), g) == null || !this.r(g)) {
                    break Label_0140;
                }
                int n3;
                if (n == 2131559030 || n == 2131559032 || n == 2131559034 || n == 2131559031 || n == 2131559044 || n == 2131559046 || n == 2131559036) {
                    n3 = n2;
                }
                else {
                    n3 = 0;
                }
                if (n3 == 0) {
                    break Label_0140;
                }
                if (n2 != 0) {
                    return new n(this, conversation);
                }
                return null;
            }
            n2 = 0;
            continue;
        }
    }
    
    private br a(final int n, final Collection<Conversation> collection, final boolean b, final be be) {
        final com.android.mail.ui.u u = new com.android.mail.ui.u(n, collection, b);
        u.a(be);
        return u;
    }
    
    private br a(final Collection<Conversation> collection, final Collection<FolderOperation> collection2, final boolean b, final boolean b2, final boolean b3, final boolean b4, final Folder folder, final be be) {
        int n;
        if (b4) {
            n = 2131558414;
        }
        else {
            n = 2131559037;
        }
        final x x = new x(this, collection, collection2, b, b2, true, n, folder, (byte)0);
        x.a(be);
        return x;
    }
    
    private void a(final int n, final LoaderManager$LoaderCallbacks loaderManager$LoaderCallbacks, final Bundle bundle) {
        final LoaderManager loaderManager = this.aCT.getLoaderManager();
        loaderManager.destroyLoader(n);
        loaderManager.restartLoader(n, bundle, loaderManager$LoaderCallbacks);
    }
    
    private void a(final int n, final Collection<Conversation> collection, final boolean b, final int n2, final be be) {
        if (b) {
            this.a(n, false, be);
            k.q(ag.a(this.mContext, n2, collection.size())).b(this.aCT.getFragmentManager());
            return;
        }
        this.a(0, collection, this.a(n, collection, false, be), false);
    }
    
    private void a(final DialogInterface$OnClickListener dialogInterface$OnClickListener, final int n) {
        this.aDK = null;
        this.aDL = -1;
    }
    
    private void a(final Folder folder, final String s) {
        this.j(folder);
        if (s != null) {
            this.aCV = com.android.mail.c.a(this.Nc, this.aqp, s);
        }
        else {
            this.aCV = com.android.mail.c.a(this.Nc, this.aqp);
        }
        this.wp();
    }
    
    private void a(final br add) {
        if (this.aDD != null) {
            this.aDD.wJ();
        }
        this.aDD = add;
    }
    
    private void a(final Collection<Conversation> collection, final boolean aza, final boolean b, final boolean b2) {
        E.c(a.mW, "performing markConversationsRead", new Object[0]);
        if (b2 && !aza && !this.a(collection, new s(this, collection, aza, b, b2))) {
            return;
        }
        final ArrayList<z> list = new ArrayList<z>(collection.size());
        for (final Conversation conversation : collection) {
            final ContentValues contentValues = new ContentValues(4);
            contentValues.put("read", aza);
            if (aza || b) {
                contentValues.put("seen", Boolean.TRUE);
            }
            contentValues.put("suppress_undo", true);
            if (b) {
                contentValues.put("viewed", true);
            }
            final ConversationInfo azk = conversation.azk;
            if (azk.bi(aza)) {
                contentValues.put("conversationInfo", azk.uN());
            }
            list.add(this.aDh.a(conversation, contentValues));
            conversation.aza = aza;
            if (b) {
                conversation.uK();
            }
        }
        this.aDh.d(list);
    }
    
    private static boolean a(final Fragment fragment) {
        return fragment != null && fragment.getActivity() != null && fragment.getView() != null;
    }
    
    private boolean a(final Collection<Conversation> collection, final Runnable ado) {
        if (this.r(collection)) {
            int vh = this.Nc.ayw.vH();
            if (vh == 0) {
                vh = 3;
            }
            this.aDO = ado;
            this.a(collection, vh);
            return this.aDO == null;
        }
        return true;
    }
    
    private void b(final Conversation conversation, final Set<Uri> set, final byte[] array) {
        int size;
        if (set == null) {
            size = 0;
        }
        else {
            size = set.size();
        }
        final int uh = conversation.uH();
        final boolean b = uh > 1 && size > 0 && size < uh;
        E.c(a.mW, "markConversationMessagesUnread(conv=%s), numMessages=%d, unreadCount=%d, subsetIsUnread=%b", conversation, uh, size, b);
        if (!b) {
            E.c(a.mW, ". . doing full mark unread", new Object[0]);
            this.a(Collections.singletonList(conversation), false, false, false);
            return;
        }
        if (E.isLoggable(a.mW, 3)) {
            E.c(a.mW, ". . doing subset mark unread, originalConversationInfo = %s", ConversationInfo.c(array));
        }
        this.aDh.a(conversation.uri, "read", 0);
        if (array != null) {
            this.aDh.a(conversation.uri, "conversationInfo", array);
        }
        final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
        String authority = null;
        for (final Uri uri : set) {
            if (authority == null) {
                authority = uri.getAuthority();
            }
            list.add(ContentProviderOperation.newUpdate(uri).withValue("read", (Object)0).build());
            E.c(a.mW, ". . Adding op: read=0, uri=%s", uri);
        }
        E.c(a.mW, ". . operations = %s", list);
        new q(this).a(this.Hb, authority, list);
    }
    
    private boolean b(final Fragment fragment) {
        return fragment != null && fragment.isVisible() && this.aCT.hasWindowFocus();
    }
    
    private void d(final Account nc) {
        if (nc == null) {
            E.d(a.mW, new Error(), "AAC ignoring null (presumably invalid) account restoration", new Object[0]);
            return;
        }
        E.c(a.mW, "AbstractActivityController.setAccount(): account = %s", nc.uri);
        this.Nc = nc;
        com.android.mail.a.a.oq().w(nc.lw(), nc.getType());
        this.a(31, (LoaderManager$LoaderCallbacks)this.aDB, Bundle.EMPTY);
        this.aCT.invalidateOptionsMenu();
        final Account nc2 = this.Nc;
        if (this.aDa.Ac() && !this.aDa.w(nc2)) {
            this.aDa.deactivate();
            this.aDa.a(this.mContext, this);
        }
        this.a(1, (LoaderManager$LoaderCallbacks)this.aDC, Bundle.EMPTY);
        final com.android.mail.providers.t vi = com.android.mail.providers.t.vi();
        if (vi != null) {
            vi.bU(this.Nc.uri.toString());
        }
        if (nc.ayw == null) {
            E.d(a.mW, new Error(), "AAC ignoring account with null settings.", new Object[0]);
            return;
        }
        this.aDp.notifyChanged();
        this.vQ();
    }
    
    private void h(final int n, final boolean b) {
        if (this.wL() && !dD.dm(n) && n == 2 && b) {
            this.aDR.setHomeAsUpIndicator(2130837719);
            return;
        }
        this.aDR.setHomeAsUpIndicator(2130837627);
    }
    
    private void i(final Folder folder) {
        if (folder != null && (this.aqp == null || !folder.equals(this.aqp))) {
            this.aCR = true;
        }
    }
    
    private void j(final Folder aqp) {
        if (aqp == null || !aqp.isInitialized()) {
            E.e(a.mW, new Error(), "AAC.setFolder(%s): Bad input", aqp);
            return;
        }
        if (aqp.equals(this.aqp)) {
            E.c(a.mW, "AAC.setFolder(%s): Input matches mFolder", aqp);
            return;
        }
        boolean b;
        if (this.aqp == null) {
            b = true;
        }
        else {
            b = false;
        }
        E.c(a.mW, "AbstractActivityController.setFolder(%s)", aqp.name);
        final LoaderManager loaderManager = this.aCT.getLoaderManager();
        this.i(aqp);
        this.aqp = aqp;
        this.aCS.d(this.aqp);
        if (loaderManager.getLoader(30) == null) {
            loaderManager.initLoader(30, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.aDB);
        }
        else {
            loaderManager.restartLoader(30, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.aDB);
        }
        if (!b && loaderManager.getLoader(10) != null) {
            loaderManager.destroyLoader(10);
        }
        final Bundle bundle = new Bundle(2);
        bundle.putParcelable("account", (Parcelable)this.Nc);
        bundle.putParcelable("folder", (Parcelable)this.aqp);
        bundle.putBoolean("ignore-initial-conversation-limit", this.aDm);
        this.aDm = false;
        loaderManager.initLoader(10, bundle, (LoaderManager$LoaderCallbacks)this.aDA);
    }
    
    private boolean r(final Collection<Conversation> collection) {
        final int mode = this.aDb.getMode();
        return (mode == 1 || mode == 4) && Conversation.a(collection, this.aCW);
    }
    
    private void vV() {
        if (this.aDO != null) {
            this.aDO.run();
            this.aDO = null;
        }
    }
    
    private void vY() {
        if (this.aqp != null) {
            final bu q = bu.Q(this.aqp.aAg, this.aqp.type);
            q.a(this);
            q.show(this.aCT.getFragmentManager(), "EmptyFolderDialogFragment");
        }
    }
    
    private void wp() {
        if (this.aDo != null) {
            this.aDo.cancel();
            this.aDo = null;
        }
    }
    
    private void x(final Uri uri) {
        if (this.aDE != null) {
            this.aDE.cancel(true);
        }
        (this.aDE = new ak(this.aCT.xg(), uri)).execute((Object[])new Void[0]);
    }
    
    protected ActionableToastBar a(final MailActivity mailActivity) {
        return (ActionableToastBar)mailActivity.findViewById(2131558826);
    }
    
    public final br a(final int n, final be be) {
        return this.a(n, this.atH.values(), true, null);
    }
    
    public final br a(final Collection<Conversation> collection, final Folder folder, final boolean b, final be be) {
        final ArrayList<FolderOperation> list = new ArrayList<FolderOperation>();
        list.add(new FolderOperation(folder, false));
        final x x = new x(this, collection, list, true, b, true, 2131559031, this.aqp, (byte)0);
        x.a(be);
        return x;
    }
    
    public final void a(final int n, final Collection<Conversation> collection, final br br, final boolean b) {
        this.a(collection, new d(this, n, collection, br, b));
        if (!b) {
            for (final Conversation conversation : collection) {
                if (this.atH.m(conversation)) {
                    this.atH.n(conversation);
                }
            }
        }
        final aw vn = this.vN();
        if (vn != null) {
            E.d(a.mW, "AAC.requestDelete: ListFragment is handling delete.", new Object[0]);
            vn.b(n, collection, br);
            return;
        }
        E.d(a.mW, "ACC.requestDelete: performing remove action ourselves", new Object[0]);
        br.wJ();
    }
    
    public final void a(final int adl, final boolean adm, final be be) {
        Collection<Conversation> collection;
        if (adm) {
            collection = this.atH.values();
        }
        else {
            E.c(a.mW, "Will act upon %s", this.aCW);
            collection = Conversation.g(this.aCW);
        }
        final br a = this.a(adl, collection, adm, be);
        this.aDL = adl;
        this.aDM = adm;
        this.aDK = (DialogInterface$OnClickListener)new j(this, adl, collection, a, adm);
    }
    
    public final void a(final ConversationMessage conversationMessage, final boolean b) {
        int n = 1;
        if (conversationMessage.azc == b) {
            return;
        }
        conversationMessage.ax(b);
        int azc;
        if (b || conversationMessage.qm()) {
            azc = n;
        }
        else {
            azc = 0;
        }
        final Conversation pg = conversationMessage.pg();
        if (azc != (pg.azc ? 1 : 0)) {
            pg.azc = (azc != 0);
            this.aDh.a(pg.uri, "starred", (boolean)(azc != 0));
        }
        final ContentValues contentValues = new ContentValues(n);
        if (!b) {
            n = 0;
        }
        contentValues.put("starred", n);
        new com.android.mail.ui.c(this).b(this.Hb, conversationMessage.uri, contentValues);
    }
    
    public final void a(final Conversation conversation, final Set<Uri> set, final byte[] array) {
        this.wd();
        conversation.aza = false;
        if (this.aDh == null) {
            E.c(a.mW, "markConversationMessagesUnread(id=%d), deferring", conversation.id);
            this.aDn.add(new com.android.mail.ui.p(this, conversation, set, array));
            return;
        }
        E.c(a.mW, "markConversationMessagesUnread(id=%d), performing", conversation.id);
        this.b(conversation, set, array);
    }
    
    protected void a(final Conversation conversation, final boolean b) {
        this.b(conversation, false);
    }
    
    protected final void a(final Folder folder, final boolean b) {
        if (this.wL()) {
            this.h(this.aDb.getMode(), Folder.g(folder));
            this.aDP.L(0);
            this.aDP.bJ();
        }
        if (this.aqp == null || !this.aqp.equals(folder)) {
            this.atH.clear();
        }
        String ajT;
        if (folder != null && folder.cA(4096)) {
            ajT = this.aCV.ajT;
        }
        else {
            ajT = null;
        }
        if (!e.b(this.aqp, folder)) {
            this.bo(false);
        }
        if ((folder != null && (!folder.equals(this.aqp) || b)) || this.aDb.getMode() != 2) {
            this.a(folder, ajT);
            this.b(this.aCV);
            if (this.aqp != null) {
                this.aCU.a(this.aqp, this.Nc);
            }
        }
        this.wf();
    }
    
    public void a(final ConversationCheckedSet set) {
        this.aDw = new aO(this.aCT, set, this.aqp);
        if (this.aDb.AI() || (this.aDe && this.aDb.AJ())) {
            this.ws();
        }
    }
    
    public final void a(final ae ae) {
        if (ae != null) {
            E.d(a.mW, "AAC.onAnimationEnd. cursor=%s adapter=%s", this.aDh, ae);
        }
        if (this.aDh == null) {
            E.f(a.mW, "null ConversationCursor in onAnimationEnd", new Object[0]);
        }
        else {
            if (this.aDh.pf()) {
                E.d("ConvCursor", "Stopped animating: try sync", new Object[0]);
                this.pn();
            }
            if (this.aDh.pe()) {
                E.d("ConvCursor", "Stopped animating: refresh", new Object[0]);
                this.aDh.refresh();
            }
            if (this.aDH) {
                this.aDH = false;
                this.aDq.notifyChanged();
            }
        }
    }
    
    public final void a(final String s, final Parcelable parcelable) {
        this.aCZ.putParcelable(s, parcelable);
    }
    
    protected void a(final Collection<Conversation> collection, final int n) {
        final Conversation a = this.aDv.a(n, collection);
        E.c(com.android.mail.ui.a.mW, "showNextConversation: showing %s next.", a);
        this.a(a, false);
    }
    
    public final void a(final Collection<FolderOperation> collection, final Collection<Conversation> collection2, final boolean b, final boolean b2) {
        final boolean b3 = this.aqp.cy(16384) && FolderOperation.a(collection, this.aqp);
        E.c(a.mW, "onFolderChangesCommit: isDestructive = %b", b3);
        if (b3) {
            final Iterator<Conversation> iterator = collection2.iterator();
            while (iterator.hasNext()) {
                iterator.next().azn = true;
            }
        }
        be a;
        if (b2) {
            a = this.a(2131559036, this.aCW);
        }
        else {
            a = null;
        }
        if (b3) {
            while (true) {
                Label_0240: {
                    if (collection.size() != 2) {
                        break Label_0240;
                    }
                    final Iterator<FolderOperation> iterator2 = collection.iterator();
                    Folder aqp = null;
                    boolean b4 = false;
                    while (iterator2.hasNext()) {
                        final FolderOperation folderOperation = iterator2.next();
                        if (folderOperation.aKh) {
                            aqp = folderOperation.aqp;
                        }
                        else {
                            b4 = true;
                        }
                    }
                    if (!b4 || aqp == null) {
                        break Label_0240;
                    }
                    final Folder aqp2 = aqp;
                    this.a(0, collection2, this.a(collection2, collection, true, b, true, b2, aqp2, a), b);
                    return;
                }
                final Folder aqp2 = this.aqp;
                continue;
            }
        }
        final br a2 = this.a(collection2, collection, false, b, true, false, this.aqp, a);
        this.a(a2);
        a2.wJ();
        this.ww();
    }
    
    public final void a(final Collection<Conversation> collection, final boolean b, final boolean b2) {
        E.c(a.mW, "markConversationsRead(targets=%s)", collection.toArray());
        if (this.aDh == null) {
            if (E.isLoggable(a.mW, 3)) {
                E.c(a.mW, "markConversationsRead(targets=%s), deferring", collection.toArray());
            }
            this.aDn.add(new r(this, collection, b, b2));
            return;
        }
        this.a(collection, b, b2, true);
    }
    
    public final void a(final boolean b, final Account account, final Folder folder) {
        if (!this.wL()) {
            if (b) {
                this.aDt.notifyChanged();
            }
        }
        else {
            if (!b) {
                this.aDP.bJ();
                return;
            }
            if (folder != null) {
                final Bundle bundle = new Bundle(2);
                if (account != null) {
                    bundle.putParcelable("account", (Parcelable)account);
                }
                else {
                    bundle.putParcelable("account", (Parcelable)this.Nc);
                }
                if (folder != null) {
                    bundle.putParcelable("folder", (Parcelable)folder);
                }
                else {
                    E.e(a.mW, new Error(), "AAC.preloadConvList(): Got an empty folder", new Object[0]);
                }
                this.aqp = null;
                final LoaderManager loaderManager = this.aCT.getLoaderManager();
                loaderManager.destroyLoader(10);
                loaderManager.initLoader(10, bundle, (LoaderManager$LoaderCallbacks)this.aDA);
            }
            final aw vn = this.vN();
            if (vn != null) {
                this.aDS = vn.pF();
            }
            else {
                this.aDS = null;
            }
            final DrawerLayout adp = this.aDP;
            if (DrawerLayout.M(this.aDQ)) {
                this.aDT = true;
                this.aDP.L(1);
                return;
            }
            if (b) {
                this.aDt.notifyChanged();
            }
        }
    }
    
    protected final ab b(final ae ae) {
        return new com.android.mail.ui.e(this, ae);
    }
    
    protected abstract void b(final c p0);
    
    protected void b(final Conversation conversation, final boolean b) {
        if (conversation != null) {
            ag.aQL.start();
        }
        MailLogService.a("AbstractActivityController", "showConversation(%s)", conversation);
        this.k(conversation);
    }
    
    protected final void b(final Folder folder, final boolean b) {
        final int aAi = folder.aAi;
        int n2 = 0;
        ab ab = null;
        Label_0108: {
            switch (com.android.mail.providers.E.cE(aAi)) {
                case 1: {
                    final int cf = com.android.mail.providers.E.cF(aAi);
                    boolean b2;
                    if ((cf & 0x1) != 0x0) {
                        b2 = true;
                    }
                    else {
                        b2 = false;
                    }
                    int n;
                    if (!b2 && (folder.aAb > 0 || (cf & 0x4) != 0x0)) {
                        n = 1;
                    }
                    else {
                        n = 0;
                    }
                    if (n == 0) {
                        final f f = new f(this, folder);
                        n2 = 2131296327;
                        ab = f;
                        break Label_0108;
                    }
                    break;
                }
                case 2: {
                    final g g = new g(this);
                    n2 = 2131296595;
                    ab = g;
                    break Label_0108;
                }
                case 4: {
                    final h h = new h(this);
                    n2 = 2131296596;
                    ab = h;
                    break Label_0108;
                }
                case 5: {
                    final i i = new i(this);
                    n2 = 2131296597;
                    ab = i;
                    break Label_0108;
                }
            }
            return;
        }
        this.aDy.a(ab, ag.n(this.aCT.xg(), aAi), n2, b, true, new ToastBarOperation(1, 0, 1, false, folder));
    }
    
    public final void b(final ConversationCheckedSet set) {
    }
    
    public final void b(final Collection<Conversation> collection, final String s, final int n) {
        this.aDh.a(collection, s, n);
        this.ww();
    }
    
    public final void b(final Collection<Conversation> collection, final String s, final boolean b) {
        this.aDh.a(collection, s, b);
        this.ww();
    }
    
    protected final void bl(final boolean b) {
        synchronized (this) {
            if (this.aDh != null) {
                ag.a((Cursor)this.aDh, b, this.aCR);
                this.aCR = false;
            }
        }
    }
    
    public void bm(final boolean b) {
        final View aDx = this.aDx;
        int visibility;
        if (!dD.dm(this.aDb.getMode()) && b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        aDx.setVisibility(visibility);
        this.bl(b);
        this.vV();
        final aw vn = this.vN();
        if (vn != null && vn.yp() != null) {
            vn.yp().bm(b);
        }
    }
    
    public void bn(final boolean b) {
        this.vV();
    }
    
    public final void bo(final boolean b) {
        final aw vn = this.vN();
        if (vn != null) {
            vn.bo(b);
        }
    }
    
    public final void c(final DataSetObserver dataSetObserver) {
        this.aDz.c(dataSetObserver);
    }
    
    public void c(final Conversation conversation, final boolean b) {
        final aw vn = this.vN();
        if (vn != null && vn.yp() != null) {
            vn.yp().xK();
        }
        this.bo(this.aDe);
        this.a(conversation, true);
    }
    
    protected void c(final StringBuilder sb) {
    }
    
    public boolean c(final Folder folder, final boolean b) {
        return false;
    }
    
    public abstract boolean cH(final int p0);
    
    public void cI(final int n) {
        if (!dD.dl(n)) {
            this.k((Conversation)null);
        }
        if (n != 0) {
            this.wf();
        }
        if (this.wL()) {
            this.h(n, Folder.g(this.aqp));
            this.aDP.L(0);
            this.vX();
        }
    }
    
    public final br cJ(final int n) {
        final com.android.mail.ui.u u = new com.android.mail.ui.u(n, this.atH.values(), true);
        u.a(null);
        this.a(u);
        return u;
    }
    
    public final boolean cM() {
        Label_0031: {
            if (!this.wL()) {
                break Label_0031;
            }
            final DrawerLayout adp = this.aDP;
            if (!DrawerLayout.N(this.aDQ)) {
                break Label_0031;
            }
            this.aDP.bJ();
            return true;
        }
        if (!this.aCX.wb()) {
            return (this.aDw == null || !this.aDw.isActivated()) && this.wb();
        }
        return true;
    }
    
    public final void cU() {
        if (this.wL()) {
            this.aDR.cU();
        }
    }
    
    public final void ch(final String s) {
        com.android.mail.a.c.os().bb("search_to_list");
        final Intent intent = new Intent();
        intent.setAction("android.intent.action.SEARCH");
        intent.putExtra("query", s);
        intent.putExtra("account", (Parcelable)this.Nc);
        intent.setComponent(this.aCT.getComponentName());
        this.aCX.de(0);
        this.aCT.startActivityForResult(intent, 3);
    }
    
    public final Parcelable ci(final String s) {
        return this.aCZ.getParcelable(s);
    }
    
    public final void d(final DataSetObserver dataSetObserver) {
        try {
            this.aDz.d(dataSetObserver);
        }
        catch (IllegalStateException ex) {
            E.e(a.mW, ex, "unregisterConversationLoadedObserver called for an observer that hasn't been registered", new Object[0]);
        }
    }
    
    public final void d(final p aDl) {
        this.aDl = aDl;
    }
    
    public final void e(final DataSetObserver dataSetObserver) {
        this.aDp.registerObserver((Object)dataSetObserver);
    }
    
    public final void e(final Folder folder) {
        if (folder != null && folder.aAo != null) {
            this.x(folder.aAo);
        }
    }
    
    public final void f(final DataSetObserver dataSetObserver) {
        this.aDp.unregisterObserver((Object)dataSetObserver);
    }
    
    public final void g(final DataSetObserver dataSetObserver) {
        this.aDr.registerObserver((Object)dataSetObserver);
    }
    
    public final void h(final DataSetObserver dataSetObserver) {
        this.aDr.unregisterObserver((Object)dataSetObserver);
    }
    
    public void h(final Folder folder) {
        this.a(folder, false);
    }
    
    public final boolean h(final Conversation conversation) {
        if (this.wn()) {
            E.d(a.mW, "AAC is in peek mode, not marking seen. conv=%s", conversation);
            return false;
        }
        this.a(Arrays.asList(conversation), true, true);
        return true;
    }
    
    public final void i(final DataSetObserver dataSetObserver) {
        this.aDt.registerObserver((Object)dataSetObserver);
    }
    
    protected void i(final Conversation conversation) {
        if (conversation != null && conversation.position < 0) {
            conversation.position = 0;
        }
        this.a(conversation, false);
    }
    
    public final boolean isDestroyed() {
        return this.bQ;
    }
    
    public final void j(final DataSetObserver dataSetObserver) {
        this.aDt.unregisterObserver((Object)dataSetObserver);
    }
    
    protected final void j(final Conversation conversation) {
        this.a(conversation, false);
    }
    
    public final void k(final DataSetObserver dataSetObserver) {
        this.aDq.registerObserver((Object)dataSetObserver);
    }
    
    public void k(final Conversation acw) {
        if (this.aCY != null && (acw == null || !this.aCY.equals((Object)acw.uri))) {
            final aw vn = this.vN();
            if (vn != null) {
                vn.yr();
            }
            else if (this.aDe) {
                E.f(a.mW, "AAC.clearDetachedMode(): CLF = null on tablet!", new Object[0]);
            }
            this.aCY = null;
        }
        this.aDv.q(acw);
        this.aCW = acw;
        if (this.aCW != null) {
            this.aCS.k(this.aCW);
            this.aCT.invalidateOptionsMenu();
        }
    }
    
    protected final void k(final Folder adf) {
        this.aDF = adf;
    }
    
    public final void l(final DataSetObserver dataSetObserver) {
        this.aDq.unregisterObserver((Object)dataSetObserver);
    }
    
    public void l(final Conversation conversation) {
        this.k(conversation);
    }
    
    public final void m(final DataSetObserver dataSetObserver) {
        this.aDi.registerObserver((Object)dataSetObserver);
    }
    
    public void m(final Account account) {
        int n = 1;
        final String mw = a.mW;
        final Object[] array = new Object[n];
        array[0] = account;
        E.c(mw, "AAC.switchToDefaultAccount(%s)", array);
        if (this.aDb.AK()) {
            final Intent intent = new Intent();
            intent.putExtra("extra-account", (Parcelable)account);
            this.aCT.setResult(-1, intent);
            this.aCT.finish();
            return;
        }
        int n2;
        if (this.Nc == null) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (n2 != 0 || !account.uri.equals((Object)this.Nc.uri)) {
            n = 0;
        }
        if (n != 0) {
            this.vS();
            return;
        }
        this.n(account);
    }
    
    public final void n(final DataSetObserver dataSetObserver) {
        try {
            this.aDi.unregisterObserver((Object)dataSetObserver);
        }
        catch (IllegalStateException ex) {
            E.e(a.mW, ex, "unregisterConversationListObserver called for an observer that hasn't been registered", new Object[0]);
        }
    }
    
    public void n(final Account account) {
        int n = 1;
        final String mw = a.mW;
        final Object[] array = new Object[n];
        array[0] = account;
        E.c(mw, "AAC.changeAccount(%s)", array);
        int n2;
        if (this.Nc == null) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (n2 == 0 && account.uri.equals((Object)this.Nc.uri)) {
            n = 0;
        }
        if (n != 0 || account.i(this.Nc)) {
            if (account == null) {
                E.f(a.mW, "AAC.changeAccount(null) called.", new Object[0]);
                return;
            }
            this.mHandler.post((Runnable)new com.android.mail.ui.l(this, account.lw()));
            if (n != 0) {
                this.bo(false);
            }
            this.d(account);
            this.wp();
            if (n != 0) {
                this.vS();
            }
            if (this.Nc != null && !Uri.EMPTY.equals((Object)this.Nc.ayw.aCe)) {
                final Intent intent = new Intent("android.intent.action.EDIT");
                intent.setPackage(this.mContext.getPackageName());
                intent.setData(this.Nc.ayw.aCe);
                this.aCT.startActivity(intent);
            }
        }
    }
    
    public final void o(final DataSetObserver dataSetObserver) {
        this.aDs.registerObserver((Object)dataSetObserver);
    }
    
    public final Account oN() {
        return this.Nc;
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        switch (n) {
            case 1: {
                if (n2 == -1) {
                    this.aCT.getLoaderManager().initLoader(0, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.aDC);
                    return;
                }
                this.aCT.finish();
            }
            case 2: {
                if (n2 != -1) {
                    break;
                }
                Uri aAh;
                if (this.aqp != null) {
                    aAh = this.aqp.aAh;
                }
                else {
                    aAh = null;
                }
                if (aAh != null) {
                    this.x(aAh);
                    return;
                }
                break;
            }
            case 3: {
                if (dD.dm(this.aDb.getMode())) {
                    this.aCT.setResult(n2, intent);
                    this.aCT.finish();
                    return;
                }
                if (n2 != -1 || intent == null) {
                    break;
                }
                final Folder folder = (Folder)intent.getParcelableExtra("extra-folder");
                final Account account = (Account)intent.getParcelableExtra("extra-account");
                if (folder != null) {
                    this.h(folder);
                    this.aDb.AC();
                    return;
                }
                if (account != null) {
                    this.m(account);
                    this.aDb.AC();
                    return;
                }
                break;
            }
            case 4: {
                if (n2 != -1) {
                    break;
                }
                final ArrayList stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (!stringArrayListExtra.isEmpty()) {
                    this.aCX.ct(stringArrayListExtra.get(0));
                    return;
                }
                break;
            }
        }
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558825) {
            com.android.mail.compose.g.b(this.aCT.xg(), this.Nc);
        }
        else if (id == 16908332) {
            this.wc();
        }
    }
    
    public void onCreate(final Bundle bundle) {
        final android.support.v7.app.a cf = this.aCT.cF();
        if (cf != null) {
            (this.aCS = new S(this.mContext)).a(this.aCT, this, cf);
            cf.k(false);
            this.aCS.xl();
        }
        if (MailLogService.ajX) {
            this.aDj = new m(this);
            this.mHandler.post(this.aDj);
        }
        this.aCT.setDefaultKeyMode(2);
        this.Hb = this.aCT.getContentResolver();
        this.aDa = new da();
        this.aCU.d(this.aCT);
        this.ate.c(this);
        (this.aDx = this.aCT.findViewById(2131558825)).setOnClickListener((View$OnClickListener)this);
        if (this.wL()) {
            this.aDR = new android.support.v7.app.t(this.aCT, this.aDP);
            this.aDP.a(this.aDV);
            this.aDP.d(this.mContext.getResources().getDrawable(2130837605));
            this.aDR.cV();
            this.aDR.setHomeAsUpIndicator(2130837719);
        }
        else {
            final android.support.v7.app.a cf2 = this.aCT.cF();
            cf2.setHomeAsUpIndicator(2130837719);
            cf2.setHomeActionContentDescription(2131296653);
            cf2.setDisplayHomeAsUpEnabled(true);
        }
        this.aDb.a(this);
        this.aDz = new Z(this.aCT, this);
        this.aDy = this.a(this.aCT);
        final android.support.v7.app.a cf3 = this.aCT.cF();
        if (cf3 != null) {
            cf3.setDisplayOptions(10, 10);
            this.aCS.a(this.aDb);
        }
        this.aDX.aF(this.aCT.getWindow().getDecorView());
        final Intent intent = this.aCT.getIntent();
        this.a(this.aCX = new cx(this.aCT, this, intent, bundle));
        Label_0451: {
            if (bundle != null) {
                if (bundle.containsKey("saved-account")) {
                    this.d((Account)bundle.getParcelable("saved-account"));
                }
                if (bundle.containsKey("saved-folder")) {
                    this.a((Folder)bundle.getParcelable("saved-folder"), bundle.getString("saved-query", (String)null));
                }
                if (bundle.containsKey("saved-action")) {
                    this.aDL = bundle.getInt("saved-action");
                }
                this.aDM = bundle.getBoolean("saved-action-from-selected", false);
                this.aDb.o(bundle);
            }
            else if (intent != null) {
                E.c(a.mW, "IN AAC.handleIntent. action=%s", intent.getAction());
                if ("android.intent.action.VIEW".equals(intent.getAction())) {
                    if (intent.hasExtra("account")) {
                        this.d(Account.bH(intent.getStringExtra("account")));
                    }
                    if (this.Nc == null) {
                        break Label_0451;
                    }
                    final boolean hasExtra = intent.hasExtra("conversationUri");
                    if (intent.getBooleanExtra("notification", false)) {
                        com.android.mail.a.a.oq().w(this.Nc.lw(), this.Nc.getType());
                        final com.android.mail.a.d oq = com.android.mail.a.a.oq();
                        String s;
                        if (hasExtra) {
                            s = "conversation";
                        }
                        else {
                            s = "conversation_list";
                        }
                        oq.a("notification_click", s, null, 0L);
                    }
                    if (hasExtra && this.aDb.getMode() == 0) {
                        this.aDb.AD();
                    }
                    else {
                        this.aDb.AC();
                    }
                    final Bundle bundle2 = new Bundle();
                    Uri uri;
                    if (intent.hasExtra("folderUri")) {
                        uri = (Uri)intent.getParcelableExtra("folderUri");
                    }
                    else if (intent.hasExtra("folder")) {
                        uri = Folder.bN(intent.getStringExtra("folder")).azZ.aPj;
                    }
                    else {
                        final Bundle extras = intent.getExtras();
                        final String mw = a.mW;
                        final Object[] array = { null };
                        String string;
                        if (extras == null) {
                            string = "null";
                        }
                        else {
                            string = extras.toString();
                        }
                        array[0] = string;
                        E.c(mw, "Couldn't find a folder URI in the extras: %s", array);
                        uri = this.Nc.ayw.aBX;
                    }
                    this.aDm = intent.getBooleanExtra("ignore-initial-conversation-limit", false);
                    bundle2.putParcelable("folderUri", (Parcelable)uri);
                    bundle2.putParcelable("conversationUri", intent.getParcelableExtra("conversationUri"));
                    this.a(34, (LoaderManager$LoaderCallbacks)this.aDB, bundle2);
                }
                else if ("android.intent.action.SEARCH".equals(intent.getAction())) {
                    if (intent.hasExtra("account")) {
                        this.aDJ = false;
                        new cz(this.aCX, (byte)0).execute((Object[])new String[] { intent.getStringExtra("query") });
                        this.d((Account)intent.getParcelableExtra("account"));
                        final Bundle bundle3 = new Bundle(1);
                        bundle3.putString("query", intent.getStringExtra("query"));
                        this.aCT.getLoaderManager().restartLoader(33, bundle3, (LoaderManager$LoaderCallbacks)this.aDB);
                        if (this.wh()) {
                            this.aDb.AF();
                        }
                        else {
                            this.aDb.AE();
                        }
                    }
                    else {
                        E.f(a.mW, "Missing account extra from search intent.  Finishing", new Object[0]);
                        this.aCT.finish();
                    }
                }
                if (this.Nc != null) {
                    this.a(1, (LoaderManager$LoaderCallbacks)this.aDC, Bundle.EMPTY);
                }
            }
        }
        this.aCT.getLoaderManager().initLoader(0, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.aDC);
    }
    
    public final boolean onCreateOptionsMenu(final Menu menu) {
        if (this.aDb.AM()) {
            return false;
        }
        this.aCT.getMenuInflater().inflate(this.aCS.xi(), menu);
        this.aCS.onCreateOptionsMenu(menu);
        return true;
    }
    
    public final void onDataSetChanged() {
        final aw vn = this.vN();
        if (vn != null) {
            this.ww();
            if (this.b(vn)) {
                this.bl(true);
            }
        }
        this.aDi.notifyChanged();
        this.atH.o(this.aDh);
    }
    
    public void onDestroy() {
        if (this.aDh != null) {
            this.aDh.b(this);
        }
        this.aDX.a((com.android.mail.utils.m)null);
        this.aDX.aF(null);
        this.aDz.onDestroy();
        this.aCS.onDestroy();
        this.aCU.destroy();
        this.bQ = true;
        this.mHandler.removeCallbacks(this.aDj);
        this.aDj = null;
        this.aCX.onDestroy();
    }
    
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (this.wL() && this.aDR.onOptionsItemSelected(menuItem)) {
            com.android.mail.a.a.oq().a("menu_item", "drawer_toggle", null, 0L);
        }
        else {
            com.android.mail.a.a.oq().b("menu_item", menuItem.getItemId(), "action_bar/" + this.aDb.AA());
            final int itemId = menuItem.getItemId();
            E.c(a.mW, "AbstractController.onOptionsItemSelected(%d) called.", itemId);
            final Collection<Conversation> g = Conversation.g(this.aCW);
            Settings ayw;
            if (this.Nc == null) {
                ayw = null;
            }
            else {
                ayw = this.Nc.ayw;
            }
            this.bo(!this.cH(itemId));
            final be a = this.a(itemId, this.aCW);
            boolean b;
            if (g.size() > 0 && u.a(this.aDh)) {
                if (itemId == 2131559030) {
                    this.a(itemId, g, ayw != null && ayw.aBU, 2131820546, a);
                    b = true;
                }
                else if (itemId == 2131559031) {
                    this.a(2131559031, g, this.a(g, this.aqp, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559032) {
                    this.a(itemId, g, ayw != null && ayw.aBT, 2131820545, a);
                    b = true;
                }
                else if (itemId == 2131559033) {
                    this.a(itemId, g, true, 2131820547, a);
                    b = true;
                }
                else if (itemId == 2131559034) {
                    this.a(itemId, g, this.a(itemId, g, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559039) {
                    this.b(Conversation.g(this.aCW), "priority", 1);
                    b = true;
                }
                else if (itemId == 2131559040) {
                    if (this.aqp != null && this.aqp.uW()) {
                        this.a(2131559040, g, this.a(2131559040, g, false, a), false);
                        b = true;
                    }
                    else {
                        this.b(g, "priority", 0);
                        b = true;
                    }
                }
                else if (itemId == 2131559041) {
                    this.a(2131559041, g, this.a(2131559041, g, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559044) {
                    this.a(2131559044, g, this.a(2131559044, g, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559045) {
                    this.a(2131559045, g, this.a(2131559045, g, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559046) {
                    this.a(2131559046, g, this.a(2131559046, g, false, a), false);
                    b = true;
                }
                else if (itemId == 2131559036 || itemId == 2131559037) {
                    final bT a2 = bT.a(this.Nc, g, false, this.aqp, itemId == 2131559036);
                    if (a2 != null) {
                        a2.show(this.aCT.getFragmentManager(), (String)null);
                    }
                    b = true;
                }
                else if (itemId == 2131559038) {
                    new o(this, g).execute((Object[])null);
                    b = true;
                }
                else {
                    b = false;
                }
            }
            else {
                b = false;
            }
            if (!b) {
                if (itemId == 16908332) {
                    this.wc();
                    b = true;
                }
                else if (itemId == 2131558671) {
                    com.android.mail.compose.g.b(this.aCT.xg(), this.Nc);
                    b = true;
                }
                else if (itemId == 2131559052) {
                    this.we();
                    b = true;
                }
                else if (itemId == 2131559048) {
                    this.wa();
                    b = true;
                }
                else if (itemId == 2131559020) {
                    ag.e(this.aCT.xg(), this.Nc);
                    b = true;
                }
                else if (itemId == 2131559021) {
                    this.aCT.a(this.Nc, this.aDb.getMode());
                    b = true;
                }
                else if (itemId == 2131559049) {
                    this.vY();
                    b = true;
                }
                else if (itemId == 2131559050) {
                    this.vY();
                    b = true;
                }
                else if (itemId == 2131559053) {
                    this.aCX.de(1);
                    b = true;
                }
                else {
                    b = false;
                }
            }
            if (b || this.aDw == null || !this.aDw.isActivated() || !this.aDw.k(menuItem)) {
                return b;
            }
        }
        return true;
    }
    
    public final void onPause() {
        this.aDc = false;
        this.aDa.deactivate();
    }
    
    public void onPrepareOptionsMenu(final Menu menu) {
        this.aCS.onPrepareOptionsMenu(menu);
    }
    
    public final void onRestart() {
        final DialogFragment dialogFragment = (DialogFragment)this.c.findFragmentByTag("SyncErrorDialogFragment");
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
        if (this.aDy != null) {
            this.aDy.f(false, false);
        }
    }
    
    public void onRestoreInstanceState(final Bundle bundle) {
        this.aCY = (Uri)bundle.getParcelable("saved-detached-conv-uri");
        if (bundle.containsKey("saved-conversation")) {
            this.i((Conversation)bundle.getParcelable("saved-conversation"));
        }
        if (bundle.containsKey("saved-toast-bar-op")) {
            final ToastBarOperation toastBarOperation = (ToastBarOperation)bundle.getParcelable("saved-toast-bar-op");
            if (toastBarOperation != null) {
                if (toastBarOperation.getType() == 0) {
                    this.a(toastBarOperation);
                }
                else if (toastBarOperation.getType() == 1) {
                    this.d(this.aqp, true);
                }
            }
        }
        this.aDF = (Folder)bundle.getParcelable("saved-hierarchical-folder");
        final aw vn = this.vN();
        if (vn != null) {
            vn.yp().onRestoreInstanceState(bundle);
        }
        if (bundle == null) {
            this.atH.clear();
        }
        else {
            final ConversationCheckedSet set = (ConversationCheckedSet)bundle.getParcelable("saved-selected-set");
            if (set == null || set.isEmpty()) {
                this.atH.clear();
            }
            else {
                this.atH.c(set);
            }
        }
        if (this.aDL != -1) {
            this.a(this.aDL, this.aDM, this.a(this.aDL, this.aCW));
        }
        this.aCQ = (Folder)bundle.getParcelable("m-inbox");
        this.aCZ.clear();
        this.aCZ.putAll(bundle.getBundle("saved-conversation-list-scroll-positions"));
    }
    
    public final void onResume() {
        this.aDa.a(this.mContext, this);
        this.aDf = true;
        final bu bu = (bu)this.aCT.getFragmentManager().findFragmentByTag("EmptyFolderDialogFragment");
        if (bu != null) {
            bu.a(this);
        }
        this.aCT.invalidateOptionsMenu();
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        this.aDb.p(bundle);
        if (this.Nc != null) {
            bundle.putParcelable("saved-account", (Parcelable)this.Nc);
        }
        if (this.aqp != null) {
            bundle.putParcelable("saved-folder", (Parcelable)this.aqp);
        }
        if (com.android.mail.c.a(this.aCV)) {
            bundle.putString("saved-query", this.aCV.ajT);
        }
        if (this.aCW != null && this.aDb.AJ()) {
            bundle.putParcelable("saved-conversation", (Parcelable)this.aCW);
        }
        if (!this.atH.isEmpty()) {
            bundle.putParcelable("saved-selected-set", (Parcelable)this.atH);
        }
        if (this.aDy.getVisibility() == 0) {
            bundle.putParcelable("saved-toast-bar-op", (Parcelable)this.aDy.xn());
        }
        final aw vn = this.vN();
        if (vn != null) {
            vn.yp().onSaveInstanceState(bundle);
        }
        if (this.aDL != -1) {
            bundle.putInt("saved-action", this.aDL);
            bundle.putBoolean("saved-action-from-selected", this.aDM);
        }
        if (this.aCY != null) {
            bundle.putParcelable("saved-detached-conv-uri", (Parcelable)this.aCY);
        }
        bundle.putParcelable("saved-hierarchical-folder", (Parcelable)this.aDF);
        this.aDf = false;
        bundle.putParcelable("m-inbox", (Parcelable)this.aCQ);
        bundle.putBundle("saved-conversation-list-scroll-positions", this.aCZ);
        this.aCX.n(bundle);
    }
    
    public final void onStart() {
        this.aDf = true;
        NotificationActionUtils.q(this.aDY);
        if (this.aDb.getMode() != 0) {
            com.android.mail.a.a.oq().ba("MainActivity" + this.aDb.toString());
        }
    }
    
    public final void onStop() {
        NotificationActionUtils.r(this.aDY);
    }
    
    public final void onTouchEvent(final MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.aDy != null && !this.aDy.j(motionEvent) && !this.aDy.wo() && !this.aDy.xo()) {
            this.aDy.f(true, false);
        }
    }
    
    public void onWindowFocusChanged(final boolean b) {
        final aw vn = this.vN();
        if (b && vn != null && vn.isVisible()) {
            this.bl(true);
        }
    }
    
    public final void p(final DataSetObserver dataSetObserver) {
        try {
            this.aDs.unregisterObserver((Object)dataSetObserver);
        }
        catch (IllegalStateException ex) {
            E.e(a.mW, ex, "unregisterFolderObserver called for an observer that hasn't been registered", new Object[0]);
        }
    }
    
    public void pC() {
        this.a((DialogInterface$OnClickListener)null, -1);
    }
    
    public final void pm() {
        if (this.wo()) {
            final aw vn = this.vN();
            final Object[] array = { this.aDh, null };
            ae yp;
            if (vn != null) {
                yp = vn.yp();
            }
            else {
                yp = null;
            }
            array[1] = yp;
            E.e("ConvCursor", "onRefreshRequired: delay until animating done. cursor=%s adapter=%s", array);
        }
        else if (this.aDh.pe()) {
            this.aDh.refresh();
        }
    }
    
    public final void pn() {
        final String mw = a.mW;
        final Object[] array = { null };
        Serializable value;
        if (this.aqp != null) {
            value = this.aqp.id;
        }
        else {
            value = "-1";
        }
        array[0] = value;
        E.c(mw, "Received refresh ready callback for folder %s", array);
        if (this.bQ) {
            E.d(a.mW, "ignoring onRefreshReady on destroyed AAC", new Object[0]);
            return;
        }
        if (!this.wo()) {
            this.aDh.sync();
        }
        else {
            E.e(a.mW, "AAC.onRefreshReady suppressing sync() due to animation. cursor=%s aa=%s", this.aDh, this.vN().yp());
        }
        this.aDv.yI();
        this.wv();
    }
    
    public final void q(final Collection<Conversation> collection) {
        this.a(collection, null);
    }
    
    public final boolean qC() {
        return this.aDz.qC();
    }
    
    public final void qE() {
        this.aDz.qE();
    }
    
    protected final dF sF() {
        final dF adi = (dF)this.aCT.getFragmentManager().findFragmentByTag("wait-fragment");
        if (adi != null) {
            this.aDI = adi;
        }
        return this.aDI;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append("{");
        sb.append("mCurrentConversation=");
        sb.append(this.aCW);
        this.c(sb);
        sb.append("}");
        return sb.toString();
    }
    
    public final Account[] uo() {
        return this.aDk;
    }
    
    public final Account vK() {
        return this.Nc;
    }
    
    public final c vL() {
        return this.aCV;
    }
    
    public final u vM() {
        return this.aDh;
    }
    
    protected final aw vN() {
        final Fragment fragmentByTag = this.c.findFragmentByTag("tag-conversation-list");
        if (a(fragmentByTag)) {
            return (aw)fragmentByTag;
        }
        return null;
    }
    
    protected final bB vO() {
        final Fragment fragmentByTag = this.c.findFragmentByTag(this.aCT.getString(2131296701));
        if (a(fragmentByTag)) {
            return (bB)fragmentByTag;
        }
        return null;
    }
    
    protected abstract boolean vP();
    
    final void vQ() {
        if (this.Nc.ui()) {
            this.wi();
        }
        else {
            final dF sf = this.sF();
            boolean b = false;
            if (sf != null) {
                final Account on = sf.oN();
                b = false;
                if (on != null) {
                    final boolean equals = on.uri.equals((Object)this.Nc.uri);
                    b = false;
                    if (equals) {
                        final int mode = this.aDb.getMode();
                        b = false;
                        if (mode == 5) {
                            b = true;
                        }
                    }
                }
            }
            if (this.Nc.uh()) {
                if (!b) {
                    this.wi();
                    return;
                }
                final dF df = (dF)this.aCT.getFragmentManager().findFragmentByTag("wait-fragment");
                if (df != null) {
                    df.p(this.Nc);
                }
            }
            else if (b) {
                this.wj();
            }
        }
    }
    
    public final cN vR() {
        return this.aCU;
    }
    
    protected final void vS() {
        while (true) {
            Label_0104: {
                if (this.aDl == null) {
                    break Label_0104;
                }
                final Folder l = this.aDl.l(this.Nc);
                if (l == null) {
                    break Label_0104;
                }
                this.a(l, false);
                final int n = 1;
                if (n == 0) {
                    E.c(a.mW, "Starting a LOADER_ACCOUNT_INBOX for %s", this.Nc);
                    this.a(32, (LoaderManager$LoaderCallbacks)this.aDB, Bundle.EMPTY);
                }
                final int mode = this.aDb.getMode();
                if (mode == 0 || mode == 5) {
                    this.aDb.AC();
                }
                return;
            }
            final int n = 0;
            continue;
        }
    }
    
    public final Folder vT() {
        return this.aqp;
    }
    
    public final Folder vU() {
        return this.aDF;
    }
    
    public final void vW() {
        if (!this.wL()) {
            return;
        }
        this.aDR.cT();
        while (true) {
            Label_0045: {
                if (!this.wL()) {
                    break Label_0045;
                }
                final DrawerLayout adp = this.aDP;
                if (!DrawerLayout.M(this.aDQ)) {
                    break Label_0045;
                }
                final boolean adw = true;
                this.aDW = adw;
                return;
            }
            final boolean adw = false;
            continue;
        }
    }
    
    protected final void vX() {
        if (this.wL()) {
            final DrawerLayout adp = this.aDP;
            if (DrawerLayout.M(this.aDQ)) {
                this.aDP.bJ();
            }
        }
    }
    
    public final void vZ() {
        if (this.aDh != null) {
            this.aDh.kd();
            this.a((Conversation)null, false);
        }
    }
    
    public final void wA() {
        final aw vn = this.vN();
        if (vn != null) {
            vn.yq();
        }
        else if (this.aDe) {
            E.f(a.mW, "AAC.setDetachedMode(): CLF = null!", new Object[0]);
        }
        this.aCY = this.aCW.uri;
    }
    
    public boolean wB() {
        return false;
    }
    
    public final bs wC() {
        return this.aDV;
    }
    
    public final boolean wD() {
        return true;
    }
    
    public final boolean wE() {
        return this.aDW;
    }
    
    protected final void wF() {
        new com.android.mail.ui.k(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])null);
    }
    
    public final View$OnClickListener wG() {
        return (View$OnClickListener)this.aDZ;
    }
    
    protected void wa() {
        if (!this.wL()) {
            return;
        }
        final DrawerLayout adp = this.aDP;
        if (DrawerLayout.M(this.aDQ)) {
            this.aDP.bJ();
            return;
        }
        this.aDP.K(this.aDQ);
    }
    
    protected abstract boolean wb();
    
    protected abstract boolean wc();
    
    protected void wd() {
        this.a((Conversation)null, false);
    }
    
    public final void we() {
        if (this.aqp != null) {
            final aw vn = this.vN();
            if (vn != null) {
                vn.yy();
                if (this.aDd != null) {
                    this.aDd.cancel(true);
                }
                (this.aDd = new ak(this.mContext, this.aqp.aAh)).execute((Object[])new Void[0]);
            }
        }
    }
    
    protected abstract void wf();
    
    public final void wg() {
        this.aDz.stopListening();
    }
    
    protected final boolean wh() {
        return this.aDJ && this.xq();
    }
    
    protected void wi() {
        this.aDb.AG();
        this.aDI = dF.a(this.Nc, true);
    }
    
    protected void wj() {
        this.aDI = null;
    }
    
    public final void wk() {
        final aw vn = this.vN();
        if (vn != null && vn.yp() != null) {
            vn.yp().wk();
        }
    }
    
    public final void wl() {
        final aw vn = this.vN();
        if (vn != null && vn.yp() != null) {
            vn.yp().wl();
        }
    }
    
    public final Conversation wm() {
        return this.aCW;
    }
    
    public boolean wn() {
        return false;
    }
    
    public final boolean wo() {
        final aw vn = this.vN();
        boolean wo = false;
        if (vn != null) {
            wo = vn.wo();
        }
        return wo;
    }
    
    public final ConversationCheckedSet wq() {
        return this.atH;
    }
    
    protected final void wr() {
        this.bo(true);
        if (this.aDw != null) {
            this.aDw.deactivate();
        }
    }
    
    protected final void ws() {
        if (this.aDw != null) {
            if (this.wL()) {
                final DrawerLayout adp = this.aDP;
                if (DrawerLayout.M(this.aDQ)) {
                    return;
                }
            }
            this.aDw.rU();
        }
    }
    
    protected final void wt() {
        if (!this.atH.isEmpty() && this.aDw != null) {
            this.aDw.rU();
        }
    }
    
    public final void wu() {
        if (this.Nc == null) {
            E.c(a.mW, "AbstractActivityController.startSearch(): null account", new Object[0]);
            return;
        }
        if (this.Nc.ug()) {
            this.aCX.de(1);
            return;
        }
        Toast.makeText(this.aCT.xg(), (CharSequence)this.aCT.xg().getString(2131296521), 0).show();
    }
    
    protected void wv() {
        this.aDJ = ("android.intent.action.SEARCH".equals(this.aCT.getIntent().getAction()) && this.aDh.getCount() > 0);
    }
    
    public final void ww() {
        final aw vn = this.vN();
        if (vn == null) {
            return;
        }
        vn.yt();
    }
    
    public final void wx() {
        R.qj();
        final aw vn = this.vN();
        if (vn != null) {
            final ae yp = vn.yp();
            if (yp != null) {
                yp.notifyDataSetInvalidated();
            }
        }
    }
    
    public final DialogInterface$OnClickListener wy() {
        return this.aDK;
    }
    
    public final aj wz() {
        return this.ate;
    }
}
