package com.android.mail.ui;

import android.util.*;
import com.android.mail.browse.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import com.android.mail.providers.*;
import android.content.*;
import android.net.*;
import java.util.*;
import android.view.*;
import android.content.res.*;
import android.graphics.*;
import android.widget.*;

public class SwipeableListView extends ListView implements AbsListView$OnScrollListener, dg
{
    public static final String mW;
    private Account Nc;
    private final db aNB;
    private boolean aNC;
    private boolean aND;
    private ConversationCheckedSet aNE;
    private int aNF;
    private dj aNG;
    private boolean aNH;
    private dl aNI;
    private long aNJ;
    private Folder aqp;
    
    static {
        mW = D.AU();
    }
    
    public SwipeableListView(final Context context) {
        this(context, null);
    }
    
    public SwipeableListView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public SwipeableListView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aNC = false;
        this.aND = false;
        this.aNJ = -1L;
        this.aNB = new db(context, this, this.getResources().getDisplayMetrics().density, ViewConfiguration.get(context).getScaledPagingTouchSlop());
        this.aNH = false;
    }
    
    public final void Ad() {
        this.bo(true);
    }
    
    public final void Ae() {
        this.requestDisallowInterceptTouchEvent(true);
        this.xt();
        if (this.aNI != null) {
            this.aNI.yn();
        }
    }
    
    public final void Af() {
        final ae ae = (ae)this.getAdapter();
        if (ae != null) {
            ae.xu();
            ae.xG();
        }
        if (this.aNI != null) {
            this.aNI.yo();
        }
    }
    
    public final LeaveBehindItem Ag() {
        final ae ae = (ae)this.getAdapter();
        if (ae != null) {
            return ae.xF();
        }
        return null;
    }
    
    public final void Ah() {
        this.aND = true;
    }
    
    public final void Ai() {
        this.aND = false;
    }
    
    public final int Aj() {
        return this.aNF;
    }
    
    public final boolean Ak() {
        return this.aNH;
    }
    
    public final int Al() {
        for (int i = this.getFirstVisiblePosition(); i < this.getLastVisiblePosition(); ++i) {
            final Object itemAtPosition = this.getItemAtPosition(i);
            if (itemAtPosition instanceof u && ((u)itemAtPosition).pg().id == this.aNJ) {
                return i;
            }
        }
        return -1;
    }
    
    public final int a(final ConversationItemView conversationItemView, final Conversation conversation) {
        int positionForView = 0;
    Label_0025_Outer:
        while (true) {
            final long id = conversation.id;
            while (true) {
                int n = 0;
                while (true) {
                    try {
                        positionForView = this.getPositionForView((View)conversationItemView);
                        if (positionForView != -1) {
                            break;
                        }
                        n = 0;
                        if (n >= this.getChildCount()) {
                            break;
                        }
                        final View child = this.getChildAt(n);
                        if (child instanceof aZ && ((aZ)child).rY().pg().id == id) {
                            return n + this.getFirstVisiblePosition();
                        }
                    }
                    catch (Exception ex) {
                        E.d(SwipeableListView.mW, ex, "Exception finding position; using alternate strategy", new Object[0]);
                        positionForView = -1;
                        continue Label_0025_Outer;
                    }
                    break;
                }
                ++n;
                continue;
            }
        }
        return positionForView;
    }
    
    public final void a(final ConversationItemView conversationItemView) {
        if (this.aNI != null) {
            this.aNI.yo();
        }
        final ToastBarOperation toastBarOperation = new ToastBarOperation(1, this.aNF, 0, false, this.aqp);
        final Conversation pg = conversationItemView.pg();
        conversationItemView.pg().position = this.a(conversationItemView, pg);
        final ae ae = (ae)this.getAdapter();
        if (ae != null) {
            ae.a(pg, toastBarOperation, pg.position, conversationItemView.getHeight());
            final u u = (u)ae.getCursor();
            final Collection<Conversation> g = Conversation.g(pg);
            a.oq().b("list_swipe", this.aNF, null);
            if (this.aNF == 2131559031) {
                final FolderOperation folderOperation = new FolderOperation(this.aqp, false);
                final HashMap<Uri, Folder> s = Folder.s(pg.uD());
                s.remove(folderOperation.aqp.azZ.aPj);
                pg.a(FolderList.p(s.values()));
                final ContentValues contentValues = new ContentValues();
                final ArrayList<Uri> list = new ArrayList<Uri>();
                list.add(this.aqp.azZ.aPj);
                final ArrayList<Boolean> list2 = new ArrayList<Boolean>();
                list2.add(Boolean.FALSE);
                com.android.mail.browse.u.a(list, list2, contentValues);
                com.android.mail.browse.u.b(s.values(), contentValues);
                u.c(Conversation.g(pg), contentValues);
            }
            else if (this.aNF == 2131559030) {
                u.i(g);
            }
            else if (this.aNF == 2131559032) {
                u.j(g);
            }
            else if (this.aNF == 2131559034) {
                u.h(g);
            }
            if (this.aNG != null) {
                this.aNG.t(g);
            }
            ae.notifyDataSetChanged();
            if (this.aNE != null && !this.aNE.isEmpty() && this.aNE.m(pg)) {
                this.aNE.n(pg);
                if (!pg.uF() && this.aNE.isEmpty()) {
                    this.bo(true);
                }
            }
        }
    }
    
    public final void a(final dj ang) {
        this.aNG = ang;
    }
    
    public final void a(final dl ani) {
        this.aNI = ani;
    }
    
    public final boolean a(final dh dh) {
        return this.aNC && dh.pE();
    }
    
    public final void b(final dh dh) {
        if (dh != null) {
            dh.dismiss();
        }
    }
    
    public final void bo(final boolean b) {
        final ae ae = (ae)this.getAdapter();
        if (ae != null) {
            ae.br(b);
        }
    }
    
    public final void bz(final boolean anc) {
        this.aNC = anc;
    }
    
    public final boolean c(final Collection<Conversation> collection, final dk dk) {
        if (collection == null) {
            E.f(SwipeableListView.mW, "SwipeableListView.destroyItems: null conversations.", new Object[0]);
            return false;
        }
        final ae ae = (ae)this.getAdapter();
        if (ae == null) {
            E.f(SwipeableListView.mW, "SwipeableListView.destroyItems: Cannot destroy: adapter is null.", new Object[0]);
            return false;
        }
        ae.a(collection, dk);
        return true;
    }
    
    public final void d(final ConversationCheckedSet ane) {
        this.aNE = ane;
    }
    
    public final void di(final int anf) {
        this.aNF = anf;
    }
    
    public final View k(final MotionEvent motionEvent) {
        final int childCount = this.getChildCount();
        final int n = (int)motionEvent.getY();
        for (int i = 0; i < childCount; ++i) {
            View view = this.getChildAt(i);
            if (view.getVisibility() != 8 && n >= view.getTop() && n <= view.getBottom()) {
                if (view instanceof aZ) {
                    view = ((aZ)view).rY();
                }
                return view;
            }
        }
        return null;
    }
    
    protected void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.aNB.A(this.getResources().getDisplayMetrics().density);
        this.aNB.B(ViewConfiguration.get(this.getContext()).getScaledPagingTouchSlop());
    }
    
    protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
        E.c("MailBlankFragment", "START CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s", this.isLayoutRequested(), this.getRootView().isLayoutRequested());
        super.onFocusChanged(b, n, rect);
        E.b("MailBlankFragment", new Error(), "FINISH CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s", this.isLayoutRequested(), this.getRootView().isLayoutRequested());
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        if (this.aNH) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return (!this.aND && this.aNB.onInterceptTouchEvent(motionEvent)) || super.onInterceptTouchEvent(motionEvent);
    }
    
    public final void onScroll(final AbsListView absListView, final int n, final int n2, final int n3) {
    }
    
    public void onScrollStateChanged(final AbsListView absListView, final int n) {
        if (!(this.aNH = (n != 0))) {
            final Context context = this.getContext();
            if (!(context instanceof as)) {
                E.g(SwipeableListView.mW, "unexpected context=%s", context);
                return;
            }
            ((as)context).a(null);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return (!this.aND && this.aNB.onTouchEvent(motionEvent)) || super.onTouchEvent(motionEvent);
    }
    
    public void onTouchModeChanged(final boolean b) {
        super.onTouchModeChanged(b);
        if (!b) {
            final int selectedItemPosition = this.getSelectedItemPosition();
            if (selectedItemPosition != -1) {
                final View child = this.getChildAt(selectedItemPosition - this.getFirstVisiblePosition());
                if (child != null) {
                    child.invalidate();
                }
            }
        }
    }
    
    public final void p(final Folder aqp) {
        this.aqp = aqp;
    }
    
    public boolean performItemClick(final View view, final int n, final long n2) {
        final boolean performItemClick = super.performItemClick(view, n, n2);
        this.bo(true);
        return performItemClick;
    }
    
    public final void s(final Conversation conversation) {
        if (conversation == null) {
            return;
        }
        this.aNJ = conversation.id;
    }
    
    public final boolean t(final Conversation conversation) {
        return this.aNJ != -1L && conversation != null && this.aNJ == conversation.id;
    }
    
    public final void v(final Account nc) {
        this.Nc = nc;
    }
    
    public final void xt() {
        final ae ae = (ae)this.getAdapter();
        if (ae != null) {
            ae.xt();
        }
    }
}
