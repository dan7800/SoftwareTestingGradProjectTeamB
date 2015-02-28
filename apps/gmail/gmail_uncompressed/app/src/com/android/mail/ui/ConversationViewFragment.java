package com.android.mail.ui;

import android.database.*;
import android.support.v4.e.*;
import com.google.common.collect.*;
import android.os.*;
import com.android.mail.a.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import com.android.mail.providers.*;
import java.util.*;
import com.android.mail.*;
import android.graphics.*;
import android.content.*;
import android.content.res.*;
import com.android.mail.browse.*;
import android.webkit.*;
import android.view.*;
import com.android.mail.utils.*;
import com.android.mail.compose.*;
import android.app.*;

public class ConversationViewFragment extends F implements View$OnKeyListener, View$OnLayoutChangeListener, K, aE, aH, aY, bh
{
    private static final String aIg;
    private static final String mW;
    private int aHC;
    private final int aHD;
    private final int aHE;
    private final int aHF;
    private final int aHG;
    private ck aHH;
    private View aHI;
    private int aHJ;
    private int aHK;
    protected ConversationContainer aHL;
    private ViewGroup aHM;
    private be aHN;
    private ActionableToastBar aHO;
    private ab aHP;
    protected cg aHQ;
    private final ConversationViewFragment$MailJsBridge aHR;
    protected boolean aHS;
    private boolean aHT;
    private String aHU;
    private int aHV;
    protected int aHW;
    private int aHX;
    private boolean aHY;
    private av aHZ;
    private float aIa;
    private boolean aIb;
    private long aIc;
    private final Map<String, String> aId;
    private final DataSetObserver aIe;
    private final Runnable aIf;
    private Map<String, String> aIh;
    protected ConversationWebView alx;
    private a aqT;
    protected aa aqX;
    
    static {
        mW = D.AU();
        aIg = ConversationViewFragment.class.getName() + "webview-y-percent";
    }
    
    public ConversationViewFragment() {
        this.aHC = 0;
        this.aHD = 0;
        this.aHE = 1;
        this.aHF = 2;
        this.aHG = 50;
        this.aHR = new ConversationViewFragment$MailJsBridge(this, (byte)0);
        this.aHX = 0;
        this.aId = (Map<String, String>)Maps.aan();
        this.aIe = new aQ(this);
        this.aIf = new aS(this, "onProgressDismiss", this);
    }
    
    public static ConversationViewFragment a(final Bundle bundle, final Conversation conversation) {
        final ConversationViewFragment conversationViewFragment = new ConversationViewFragment();
        final Bundle arguments = new Bundle(bundle);
        arguments.putParcelable("conversation", (Parcelable)conversation);
        conversationViewFragment.setArguments(arguments);
        return conversationViewFragment;
    }
    
    private void a(final aC ac) {
        final String a = this.a(ac, this.aHY);
        this.cj("rendered conversation");
        if (this.aIb) {
            this.aIa = this.yS();
        }
        this.alx.loadDataWithBaseURL(this.aEG, a, "text/html", "utf-8", (String)null);
        this.aIb = true;
        this.aIc = SystemClock.uptimeMillis();
    }
    
    private void b(final ConversationMessage conversationMessage, final boolean b, final boolean b2) {
        final int a = this.aqX.a(conversationMessage, b, this.aEL.h(conversationMessage));
        this.aHQ.a(conversationMessage, b, b2, this.alx.cg(this.cU(a)), this.alx.cg(this.cU(this.aqX.b((ae)this.aqX.cd(a)))));
        this.cj("rendered message");
    }
    
    private int d(final V v) {
        final int type = v.getType();
        final View bq = this.aHL.bQ(type);
        final View a = this.aqX.a(v, bq, this.aHL, true);
        if (bq == null) {
            this.aHL.c(type, a);
        }
        final int ap = this.aHL.ap(a);
        v.ca(ap);
        v.qr();
        return ap;
    }
    
    private ae qK() {
        int count = this.aqX.getCount();
        while (true) {
            final int n = count - 1;
            if (n < 0) {
                E.g(ConversationViewFragment.mW, "No message header found", new Object[0]);
                return null;
            }
            final V cd = this.aqX.cd(n);
            if (cd instanceof ae) {
                return (ae)cd;
            }
            count = n;
        }
    }
    
    private float yS() {
        if (this.alx != null) {
            final int scrollY = this.alx.getScrollY();
            final int height = this.alx.getHeight();
            final int n = (int)(this.alx.getContentHeight() * this.alx.getScale());
            if (n != 0 && n > height) {
                if (scrollY + height >= n) {
                    return 1.0f;
                }
                return scrollY / n;
            }
        }
        return 0.0f;
    }
    
    private void yT() {
        if (this.aHX == 1) {
            this.rA().d(this.aIe);
        }
        this.aHX = 0;
    }
    
    private void yU() {
        this.yT();
        this.yV();
    }
    
    private void yV() {
        this.alx.setVisibility(0);
        this.yW();
        this.aHN.bu(this.isUserVisible());
    }
    
    private void yX() {
        final boolean vi = this.Nc.ayw.vI();
        final WebSettings settings = this.alx.getSettings();
        settings.setUseWideViewPort(vi);
        settings.setSupportZoom(vi);
        settings.setBuiltInZoomControls(vi);
        settings.setLoadWithOverviewMode(vi);
        WebSettings$LayoutAlgorithm layoutAlgorithm;
        if (vi) {
            settings.setDisplayZoomControls(false);
            layoutAlgorithm = WebSettings$LayoutAlgorithm.NORMAL;
        }
        else {
            layoutAlgorithm = WebSettings$LayoutAlgorithm.NARROW_COLUMNS;
        }
        settings.setLayoutAlgorithm(layoutAlgorithm);
    }
    
    protected String a(final aC ac, final boolean b) {
        E.c(ConversationViewFragment.mW, "IN renderMessageBodies, fragment=%s", this);
        this.aHL.oR();
        this.aqX.clear();
        final ConversationViewState ael = this.aEL;
        this.aEL = new ConversationViewState(ael);
        this.aHQ.f(this.alx.qY(), this.alx.cg(this.aHW), this.alx.cg(this.cU(this.aqX.d(this.amr))));
        final boolean rl = this.rl();
        boolean b2 = false;
        int n = -1;
        boolean b3 = false;
        ConversationMessage conversationMessage = null;
        int n2 = -1;
        boolean b4 = rl;
        while (true) {
            final int n3 = n2 + 1;
            if (!ac.moveToPosition(n3)) {
                break;
            }
            final ConversationMessage ql = ac.qL();
            final boolean b5 = rl || ql.aBp || ael.h(ql);
            b3 |= b5;
            final Integer i = ael.i(ql);
            int n4;
            if (i != null) {
                if (bj.cW(i) && ac.isLast()) {
                    n4 = bj.aII;
                }
                else {
                    n4 = i;
                }
            }
            else if (ql.azc || !ql.aza || ac.isLast()) {
                n4 = bj.aII;
            }
            else if (ac.isFirst()) {
                n4 = bj.aIJ;
            }
            else {
                n4 = bj.aIK;
                b2 |= ql.uV();
            }
            this.aEL.b(ql, ael.h(ql));
            this.aEL.b(ql, n4);
            this.aEL.a(ql, ql.aza && !ael.g(ql));
            if (bj.cW(n4)) {
                int n5;
                if (n < 0) {
                    n5 = n3;
                }
                else {
                    n5 = n;
                }
                this.cl(ql.vq());
                conversationMessage = ql;
                n = n5;
                b4 = b5;
                n2 = n3;
            }
            else {
                if (n >= 0) {
                    if (n3 - n == 1) {
                        this.b(conversationMessage, false, b4);
                    }
                    else {
                        this.aHQ.R(n, this.alx.cg(this.cU(this.aqX.c(n, n3 - 1, b2))));
                    }
                    b2 = false;
                    conversationMessage = null;
                    n = -1;
                }
                this.b(ql, bj.cV(n4), b5);
                n2 = n3;
            }
        }
        final int cu = this.cU(this.aqX.a(this.qK()));
        this.alx.getSettings().setBlockNetworkImage(!b3);
        final boolean wz = this.wZ();
        return this.aHQ.a(this.alx.cg(cu), this.aEG, this.amr.bL(this.aEG), this.alx.qY(), this.alx.cf(this.aHW), b, this.Nc.ayw.vI(), wz, wz);
    }
    
    protected void a(final ViewGroup viewGroup, final LayoutInflater layoutInflater) {
        layoutInflater.inflate(2130968674, viewGroup, true);
    }
    
    public final void a(final aC ac, final aC ac2) {
        if (ac2 != null && !ac2.isClosed()) {
            final bb bb = new bb(this, (byte)0);
            int n = -1;
            while (true) {
                ++n;
                if (!ac.moveToPosition(n)) {
                    break;
                }
                final ConversationMessage ql = ac.qL();
                if (this.aEL.j(ql)) {
                    continue;
                }
                E.d(ConversationViewFragment.mW, "conversation diff: found new msg: %s", ql.uri);
                final Address cl = this.cl(ql.vq());
                if (cl == null || this.Nc.bI(cl.getAddress())) {
                    E.d(ConversationViewFragment.mW, "found message from self: %s", ql.uri);
                    ++bb.aIp;
                }
                else {
                    ++bb.count;
                }
            }
            if (bb.count > 0) {
                E.d(ConversationViewFragment.mW, "CONV RENDER: conversation updated, holding cursor for new incoming message (%s)", this);
                this.aHO.a(this.aHP, bb.aIi.getResources().getQuantityString(2131820557, bb.count, new Object[] { bb.count }), 2131296598, true, false, null);
                return;
            }
            final int ql2 = ac2.ql();
            int n2;
            if (ac.ql() != ql2) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 == 0) {
                final HashSet<String> set = new HashSet<String>();
                final ArrayList<Integer> list = new ArrayList<Integer>();
                for (int n3 = 0; ac.moveToPosition(n3) && ac2.moveToPosition(n3); ++n3) {
                    final ConversationMessage ql3 = ac.qL();
                    final ConversationMessage ql4 = ac2.qL();
                    if (!ql3.f(ql4)) {
                        this.aqX.a(ql3, list);
                        E.d(ConversationViewFragment.mW, "msg #%d (%d): detected field(s) change. sendingState=%s", n3, ql3.id, ql3.ayZ);
                    }
                    if (!TextUtils.equals((CharSequence)ql3.aBg, (CharSequence)ql4.aBg) || !TextUtils.equals((CharSequence)ql3.aBh, (CharSequence)ql4.aBh)) {
                        final StringBuilder sb = new StringBuilder("\"");
                        final cg ahq = this.aHQ;
                        set.add(sb.append(cg.a(ql3)).append('\"').toString());
                        E.d(ConversationViewFragment.mW, "msg #%d (%d): detected body change", n3, ql3.id);
                    }
                }
                int n4;
                if (!list.isEmpty()) {
                    this.aHL.j(list);
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
                final com.android.mail.browse.ab qh = this.aqX.qH();
                if (qh != null) {
                    qh.qs();
                }
                if (!set.isEmpty()) {
                    this.alx.loadUrl(String.format("javascript:replaceMessageBodies([%s]);", TextUtils.join((CharSequence)",", (Iterable)set)));
                    n4 = 1;
                }
                if (n4 != 0) {
                    E.d(ConversationViewFragment.mW, "CONV RENDER: processed update(s) in place (%s)", this);
                    return;
                }
                E.d(ConversationViewFragment.mW, "CONV RENDER: uninteresting update, ignoring this conversation update (%s)", this);
                return;
            }
            else {
                if (bb.aIp == 1) {
                    int n5;
                    if (ac.cj(1) == ql2) {
                        n5 = 1;
                    }
                    else {
                        n5 = 0;
                    }
                    if (n5 != 0) {
                        E.d(ConversationViewFragment.mW, "CONV RENDER: update is a single new message from self (%s)", this);
                        ac.moveToLast();
                        final ConversationMessage ql5 = ac.qL();
                        final com.android.mail.browse.ab qg = this.aqX.qG();
                        if (qg != null) {
                            this.aHL.bS(qg.getPosition());
                        }
                        else {
                            E.d(ConversationViewFragment.mW, "footer item not found", new Object[0]);
                        }
                        this.aHQ.reset();
                        this.b(ql5, true, ql5.aBp);
                        this.aHU = this.aHQ.xf();
                        if (qg != null) {
                            qg.c(this.qK());
                            qg.qs();
                            this.aqX.a(qg);
                        }
                        this.aEL.b(ql5, bj.aII);
                        this.aEL.a(ql5, false);
                        this.aHL.oR();
                        this.alx.loadUrl("javascript:appendMessageHtml();");
                        return;
                    }
                }
                E.d(ConversationViewFragment.mW, "CONV RENDER: conversation updated, but not due to incoming message. rendering. (%s)", this);
            }
        }
        else {
            E.d(ConversationViewFragment.mW, "CONV RENDER: initial render. (%s)", this);
            this.cj("message cursor load finished");
        }
        this.b(ac);
    }
    
    public final void a(final ae ae, final int n) {
        this.aHL.oR();
        final int cg = this.alx.cg(n);
        E.d("ConvLayout", "setting HTML spacer h=%dwebPx (%dscreenPx)", cg, n);
        final ConversationWebView alx = this.alx;
        final Object[] array = new Object[2];
        final cg ahq = this.aHQ;
        array[0] = com.android.mail.ui.cg.a(ae.qL());
        array[1] = cg;
        alx.loadUrl(String.format("javascript:setMessageHeaderSpacerHeight('%s', %s);", array));
    }
    
    public final void a(final ae ae, final boolean b, final int n) {
        int n2;
        if (b) {
            n2 = 1;
        }
        else {
            n2 = -1;
        }
        this.aHC = n2 * Math.abs(ae.getHeight() - n);
    }
    
    public final void a(final Account account, final Account account2) {
        if (account.ayw.vI() != account2.ayw.vI()) {
            this.yX();
            final aC rb = this.rB();
            if (rb != null) {
                this.a(rb);
            }
            return;
        }
        this.aqX.notifyDataSetChanged();
    }
    
    protected final void b(final aC ac) {
        if (this.aHL.getWidth() == 0) {
            this.aHT = true;
            this.aHL.addOnLayoutChangeListener((View$OnLayoutChangeListener)this);
            return;
        }
        this.a(ac);
    }
    
    public final void b(final ae ae, final int n) {
        this.aHL.oR();
        final int cg = this.alx.cg(n);
        E.d("ConvLayout", "setting HTML spacer expanded=%s h=%dwebPx (%dscreenPx)", ae.qp(), cg, n);
        final ConversationWebView alx = this.alx;
        final Object[] array = new Object[3];
        final cg ahq = this.aHQ;
        array[0] = com.android.mail.ui.cg.a(ae.qL());
        array[1] = ae.qp();
        array[2] = cg;
        alx.loadUrl(String.format("javascript:setMessageBodyVisible('%s', %s, %s);", array));
        final ConversationViewState ael = this.aEL;
        final ConversationMessage ql = ae.qL();
        int n2;
        if (ae.qp()) {
            n2 = bj.aII;
        }
        else {
            n2 = bj.aIJ;
        }
        ael.b(ql, n2);
    }
    
    public final void b(final af af) {
        final aC rb = this.rB();
        if (rb == null || !this.aHS) {
            return;
        }
        final ArrayList<ae> list = new ArrayList<ae>();
        this.aHQ.reset();
        boolean b;
        if (this.Nc != null && this.Nc.ayw.aCg == 0) {
            b = true;
        }
        else {
            b = false;
        }
        float n = 0.0f;
        final int start = af.getStart();
        for (int end = af.getEnd(), i = start; i <= end; ++i) {
            rb.moveToPosition(i);
            final ConversationMessage ql = rb.qL();
            final ae a = aa.a(this.aqX, this.aqX.qF(), ql, false, b || this.aEL.h(ql));
            final aa aqX = this.aqX;
            final ad a2 = aa.a(this.aqX, a);
            final int d = this.d(a);
            final int d2 = this.d(a2);
            final float n2 = n + (this.alx.ch(d) + this.alx.ch(d2));
            int n4;
            if (n2 >= 1.0f) {
                final float n3 = n2 - 1.0f;
                n4 = 1;
                n = n3;
            }
            else {
                n = n2;
                n4 = 0;
            }
            this.aHQ.a(ql, false, b || ql.aBp, n4 + this.alx.cg(d), this.alx.cg(d2));
            list.add(a);
            list.add((ae)a2);
            this.aEL.b(ql, bj.aIJ);
        }
        this.aqX.a(af, (Collection<V>)list);
        this.aqX.notifyDataSetChanged();
        this.aHU = this.aHQ.xf();
        this.alx.loadUrl("javascript:replaceSuperCollapsedBlock(" + af.getStart() + ")");
        this.aHL.oS();
    }
    
    public final void b(final Message message) {
        this.aEL.b(message, true);
        this.alx.getSettings().setBlockNetworkImage(false);
        final ConversationWebView alx = this.alx;
        final StringBuilder sb = new StringBuilder("javascript:unblockImages(['");
        final cg ahq = this.aHQ;
        alx.loadUrl(sb.append(cg.a(message)).append("']);").toString());
    }
    
    public final void bV(final int n) {
        this.alx.loadUrl(String.format("javascript:setConversationFooterSpacerHeight(%s);", this.alx.cg(n)));
    }
    
    public final void bl(final String s) {
        this.alx.getSettings().setBlockNetworkImage(false);
        final Address cl = this.cl(s);
        if (cl == null) {
            return;
        }
        final aC rb = this.rB();
        final ArrayList<String> list = new ArrayList<String>();
        int n = -1;
        while (true) {
            ++n;
            if (!rb.moveToPosition(n)) {
                break;
            }
            final ConversationMessage ql = rb.qL();
            if (!cl.equals(this.cl(ql.vq()))) {
                continue;
            }
            ql.aBp = true;
            this.aEL.b(ql, true);
            final cg ahq = this.aHQ;
            list.add(cg.a(ql));
        }
        this.alx.loadUrl(String.format("javascript:unblockImages(['%s']);", TextUtils.join((CharSequence)"','", (Iterable)list)));
    }
    
    public final ConversationMessage bm(final String s) {
        final String s2 = this.aIh.get(s);
        if (s2 == null) {
            return null;
        }
        final aC rb = this.rB();
        if (rb == null) {
            return null;
        }
        final cg ahq = this.aHQ;
        return rb.Q(Long.parseLong(cg.co(s2)));
    }
    
    public final String c(final Message message) {
        final cg ahq = this.aHQ;
        final String a = cg.a(message);
        if (a == null) {
            return null;
        }
        return this.aId.get(a);
    }
    
    protected final int cU(final int n) {
        return this.d(this.aqX.cd(n));
    }
    
    public final void ce(final int n) {
        this.alx.loadUrl(String.format("javascript:setConversationHeaderSpacerHeight(%s);", this.alx.cg(n)));
    }
    
    protected final Address cl(final String s) {
        return com.android.mail.utils.ag.a(this.aqQ, s);
    }
    
    @Override
    public final void f(final Conversation amr) {
        final ConversationViewHeader conversationViewHeader = (ConversationViewHeader)this.aHL.findViewById(2131558784);
        this.amr = amr;
        if (conversationViewHeader != null) {
            conversationViewHeader.f(amr);
        }
    }
    
    public final boolean isSecure() {
        return false;
    }
    
    @Override
    public void onActivityCreated(final Bundle bundle) {
        E.c(ConversationViewFragment.mW, "IN CVF.onActivityCreated, this=%s visible=%s", this, this.isUserVisible());
        super.onActivityCreated(bundle);
        if (this.aob == null || this.aob.isFinishing()) {
            return;
        }
        final Context context = this.getContext();
        this.aHQ = new cg(context);
        final e e = new e(context);
        this.aHH = this.aob.yf();
        this.aqX = new aa(this.aob, this, this.getLoaderManager(), this, this, this.rf(), this, this, this.rA(), this, this.aqQ, e, this.aqT, (View$OnKeyListener)this);
        this.aHL.a(this.aqX);
        this.aHL.oP().a(this, this.aqQ, this, this.rf(), this.aob.yd().wz());
        final Resources resources = this.getResources();
        this.aHV = resources.getInteger(2131427355);
        this.aHW = resources.getDimensionPixelOffset(2131492998);
        this.aIh = new android.support.v4.f.a<String, String>();
        final as rn = at.rn();
        final Activity activity = this.getActivity();
        final Account nc = this.Nc;
        long id;
        if (this.amr != null) {
            id = this.amr.id;
        }
        else {
            id = -1L;
        }
        final WebViewContextMenu onCreateContextMenuListener = new WebViewContextMenu(activity, rn.a(nc, id));
        onCreateContextMenuListener.a(this);
        this.alx.setOnCreateContextMenuListener((View$OnCreateContextMenuListener)onCreateContextMenuListener);
        this.yX();
        this.getHandler().post((Runnable)new aT(this, "showConversation", this));
        if (this.amr != null && this.amr.azl != null && !com.android.mail.utils.ag.D(this.Nc.ayz)) {
            new bc(this.getContext(), this.amr.azl.toString(), this.Nc.ayz).execute((Object[])new Void[0]);
        }
        final Rect rect = new Rect();
        this.aob.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        this.aHJ = rect.bottom;
        this.aHK = rect.top + this.aob.cF().getHeight();
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.aEH = this.yQ();
        if (bundle != null) {
            this.aIa = bundle.getFloat(ConversationViewFragment.aIg);
        }
        this.aqT = a.aC();
    }
    
    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View inflate = layoutInflater.inflate(2130968675, viewGroup, false);
        (this.aHL = (ConversationContainer)inflate.findViewById(2131558779)).a(this);
        (this.aHM = (ViewGroup)this.aHL.findViewById(2131558781)).setOnKeyListener((View$OnKeyListener)this);
        this.a(this.aHM, layoutInflater);
        this.aHL.oO();
        this.yR();
        (this.aHN = new be(this, this.getHandler())).az(inflate);
        (this.alx = (ConversationWebView)this.aHL.findViewById(2131558780)).addJavascriptInterface((Object)this.aHR, "mail");
        final boolean be = com.android.mail.utils.ag.Be();
        final boolean userVisible = this.isUserVisible();
        this.alx.aE(!be);
        this.aHY = (be && userVisible);
        this.alx.aF(userVisible);
        this.alx.setWebViewClient((WebViewClient)this.aEH);
        this.alx.setWebChromeClient((WebChromeClient)new aU(this));
        final WebSettings settings = this.alx.getSettings();
        ((ScrollIndicatorsView)inflate.findViewById(2131558782)).a(this.alx);
        settings.setJavaScriptEnabled(true);
        h.a(this.getResources(), settings);
        if (com.android.mail.utils.ag.Bh()) {
            CookieManager.getInstance().setAcceptThirdPartyCookies((WebView)this.alx, true);
        }
        this.aHS = true;
        this.aIb = false;
        return inflate;
    }
    
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.aHL.a((aa)null);
        this.aqX = null;
        this.yT();
        this.aHS = false;
    }
    
    public boolean onKey(final View ahi, final int n, final KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            this.aHI = ahi;
        }
        if (this.aHI != null) {
            final int id = this.aHI.getId();
            final boolean ah = al.aH(this.aHI);
            final boolean b = keyEvent.getAction() == 1;
            boolean b2;
            if ((!ah && n == 21) || (ah && n == 22)) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            final boolean m = C.m(n, ah);
            final boolean b3 = n == 19;
            final boolean b4 = n == 20;
            final boolean zb = this.aHH.zB();
            if (this.aHH.a(keyEvent, zb && b2 && (id == 2131558781 || id == 2131558735 || id == 2131558937 || id == 2131558912 || id == 2131558699))) {
                return true;
            }
            if (b2 || m) {
                int n2;
                if (zb && (id == 2131558781 || id == 2131558735 || id == 2131558937 || id == 2131558912 || (id == 2131558727 && m) || (id == 2131558699 && b2) || (id == 2131558701 && m))) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                if (n2 != 0) {
                    return true;
                }
            }
            if (b3 || b4) {
                if (id == 2131558781) {
                    return true;
                }
                final View h = this.aHL.h(this.aHI, b4);
                if (h != null) {
                    final int[] array = new int[2];
                    h.getLocationOnScreen(array);
                    final int n3 = array[1] + h.getHeight();
                    if (n3 > this.aHJ) {
                        this.alx.scrollBy(0, n3 - this.aHJ);
                    }
                    else if (array[1] < this.aHK) {
                        this.alx.scrollBy(0, array[1] - this.aHK);
                    }
                    h.requestFocus();
                }
                else if (!b) {
                    final int scrollY = this.alx.getScrollY();
                    if (b3 && scrollY > 0) {
                        this.alx.scrollBy(0, -Math.min(scrollY, 50));
                    }
                    else if (b4) {
                        final int n4 = (int)(this.alx.getContentHeight() * this.alx.getScale());
                        final int n5 = scrollY + this.alx.getHeight();
                        if (n5 < n4) {
                            this.alx.scrollBy(0, Math.min(n4 - n5, 50));
                        }
                    }
                }
                return true;
            }
            else {
                if (n == 4 && id != 2131558781) {
                    if (b) {
                        this.aHM.requestFocus();
                    }
                    return true;
                }
                if (n == 66 && id == 2131558781) {
                    if (b) {
                        this.alx.scrollTo(0, 0);
                        this.aHL.oS();
                    }
                    return true;
                }
            }
        }
        return false;
    }
    
    public void onLayoutChange(final View view, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final int n8) {
        int n9;
        if (this.aHT && this.aHL.getWidth() != 0) {
            n9 = 1;
        }
        else {
            n9 = 0;
        }
        if (n9 != 0) {
            this.aHT = false;
            this.aHL.removeOnLayoutChangeListener((View$OnLayoutChangeListener)this);
            this.a(this.rB());
        }
    }
    
    public void onPause() {
        super.onPause();
        if (this.alx != null) {
            this.alx.onPause();
        }
    }
    
    public void onResume() {
        super.onResume();
        if (this.alx != null) {
            this.alx.onResume();
        }
    }
    
    @Override
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putFloat(ConversationViewFragment.aIg, this.yS());
    }
    
    @Override
    protected final void wO() {
        super.wO();
        final com.android.mail.ui.as as = (com.android.mail.ui.as)this.getActivity();
        if (as == null) {
            E.e(ConversationViewFragment.mW, "ignoring markUnread for conv=%s", this.amr.id);
            return;
        }
        if (this.aEL == null) {
            E.d(ConversationViewFragment.mW, "ignoring markUnread for conv with no view state (%d)", this.amr.id);
            return;
        }
        as.ya().a(this.amr, this.aEL.zd(), this.aEL.zc());
    }
    
    @Override
    public final void wP() {
        final boolean userVisible = this.isUserVisible();
        E.c(ConversationViewFragment.mW, "ConversationViewFragment#onUserVisibleHintChanged(), userVisible = %b", userVisible);
        if (!userVisible) {
            this.aHN.zb();
        }
        else if (this.aHS) {
            final boolean b = this.aob == null || this.aob.ya().qC();
            String s2;
            if (this.rB() != null) {
                E.c(ConversationViewFragment.mW, "Fragment is now user-visible, onConversationSeen: %s", this);
                String s;
                if (!b) {
                    s = "preloaded";
                }
                else {
                    s = null;
                }
                this.qE();
                s2 = s;
            }
            else {
                int n;
                if (this.aHX != 0) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                s2 = null;
                if (n != 0) {
                    E.c(ConversationViewFragment.mW, "Fragment is now user-visible, showing conversation: %s", this);
                    s2 = null;
                    if (!b) {
                        s2 = "load_deferred";
                    }
                    this.yU();
                }
            }
            if (s2 != null) {
                com.android.mail.a.a.oq().a("pager_swipe", s2, this.wV(), 0L);
            }
        }
        if (this.alx != null) {
            this.alx.aF(userVisible);
        }
    }
    
    public final boolean wT() {
        return true;
    }
    
    @Override
    public final void wY() {
        super.wY();
        final aC rb = this.rB();
        if (rb != null) {
            this.a(rb);
        }
    }
    
    @Override
    protected final boolean xa() {
        return true;
    }
    
    @Override
    protected final void xb() {
        com.android.mail.j.b.a(this.aob.xg(), this.rB(), this.aqQ, this.amr.bL(this.aEG));
    }
    
    @Override
    protected final void xc() {
        final ae qk = this.qK();
        if (qk != null) {
            final ConversationMessage ql = qk.qL();
            if (ql != null) {
                g.b((Context)this.getActivity(), this.Nc, ql);
            }
        }
    }
    
    @Override
    protected final void xd() {
        final ae qk = this.qK();
        if (qk != null) {
            final ConversationMessage ql = qk.qL();
            if (ql != null) {
                g.c((Context)this.getActivity(), this.Nc, ql);
            }
        }
    }
    
    protected aX yQ() {
        return new aX(this, this.Nc);
    }
    
    protected void yR() {
        this.aHO = (ActionableToastBar)this.aHL.findViewById(2131558776);
        this.aHP = new aV(this);
    }
    
    protected void yW() {
        this.getLoaderManager().initLoader(0, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.wS());
    }
}
