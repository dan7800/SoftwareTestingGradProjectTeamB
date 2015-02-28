package com.android.mail.ui;

import android.animation.*;
import android.widget.*;
import android.util.*;
import com.android.a.*;
import com.android.mail.b.*;
import android.content.*;
import com.android.mail.utils.*;
import android.database.*;
import com.google.common.collect.*;
import android.view.*;
import android.content.res.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import java.util.*;
import android.os.*;

public final class ae extends SimpleCursorAdapter
{
    private static int aFB;
    private static int aFC;
    private static final String mW;
    private Account Nc;
    private final HashSet<Long> aFD;
    private final ArrayList<Long> aFE;
    private final HashSet<Long> aFF;
    private final HashSet<Long> aFG;
    private final HashSet<Long> aFH;
    private final HashMap<Long, aZ> aFI;
    private final HashMap<Long, LeaveBehindItem> aFJ;
    private final ConversationCheckedSet aFK;
    private Runnable aFL;
    protected long aFM;
    private final Animator$AnimatorListener aFN;
    private dk aFO;
    private final dk aFP;
    private Space aFQ;
    private View aFR;
    private boolean aFS;
    private List<View> aFT;
    private final SwipeableListView aFU;
    private final HashMap<Long, LeaveBehindItem> aFV;
    private boolean aFW;
    private boolean aFX;
    private final d aFY;
    private final SparseArray<aL> aFZ;
    private final Q aGa;
    private final List<aL> aGb;
    private final a aGc;
    private final j akh;
    private boolean anX;
    private final as aob;
    private final android.support.v4.e.a aqT;
    private Folder aqp;
    private final Context mContext;
    private final Handler mHandler;
    
    static {
        ae.aFB = -1;
        ae.aFC = -1;
        mW = D.AU();
    }
    
    public ae(final Context mContext, final u u, final ConversationCheckedSet afk, final as aob, final SwipeableListView afu, final List<aL> list) {
        super(mContext, -1, (Cursor)u, E.aCx, (int[])null, 0);
        this.aFD = new HashSet<Long>();
        this.aFE = new ArrayList<Long>();
        this.aFF = new HashSet<Long>();
        this.aFG = new HashSet<Long>();
        this.aFH = new HashSet<Long>();
        this.aFI = new HashMap<Long, aZ>();
        this.aFJ = new HashMap<Long, LeaveBehindItem>();
        this.aFM = -1L;
        this.aFN = (Animator$AnimatorListener)new af(this);
        this.aFP = new ag(this);
        this.aFT = new ArrayList<View>();
        this.aFV = Maps.aan();
        this.aFY = new ah(this);
        this.aGa = new Q();
        this.aqT = android.support.v4.e.a.aC();
        this.mContext = mContext;
        this.aFK = afk;
        this.q(this.aFY.a(aob.yd()));
        this.aob = aob;
        this.aFQ = (Space)LayoutInflater.from(mContext).inflate(2130968655, (ViewGroup)afu, false);
        this.aFS = false;
        this.aFU = afu;
        this.aGc = this.aob.yk();
        this.akh = this.aob.a(this.mContext.getContentResolver(), this.aGc);
        this.mHandler = new Handler();
        if (ae.aFB == -1) {
            final Resources resources = mContext.getResources();
            ae.aFB = resources.getInteger(2131427351);
            ae.aFC = resources.getInteger(2131427352);
        }
        if (list != null) {
            this.aGb = new ArrayList<aL>(list);
        }
        else {
            this.aGb = new ArrayList<aL>(0);
        }
        this.aFZ = (SparseArray<aL>)new SparseArray(this.aGb.size());
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().j(this);
        }
        this.xH();
    }
    
    private boolean S(final long n) {
        if (((u)this.getCursor()).N(n) >= 0) {
            this.aFF.add(n);
            return true;
        }
        return false;
    }
    
    private boolean U(final long n) {
        return this.aFD.contains(n);
    }
    
    private boolean V(final long n) {
        return this.aFF.contains(n);
    }
    
    private View a(final int position, final Conversation conversation, final ViewGroup viewGroup, final boolean b) {
        conversation.position = position;
        aZ a = this.aFI.get(conversation.id);
        if (a == null) {
            a = this.a(position, viewGroup, conversation);
            a.b(this.aFN, b);
        }
        return (View)a;
    }
    
    private aZ a(final int n, final ViewGroup viewGroup, final Conversation conversation) {
        final aZ az = (aZ)super.getView(n, (View)null, viewGroup);
        az.reset();
        az.a(conversation, this.aob, this.aFK, this.aqp, this.xC(), this.anX, this.aFW, this.aFX, this);
        this.aFI.put(conversation.id, az);
        return az;
    }
    
    private void a(final dk afo) {
        if (this.aFO != null) {
            this.aFO.xM();
        }
        this.aFO = afo;
    }
    
    private void a(final Collection<Conversation> collection, final dk dk, final HashSet<Long> set) {
        this.aFE.clear();
        this.aFF.clear();
        final int firstVisiblePosition = this.aFU.getFirstVisiblePosition();
        final int lastVisiblePosition = this.aFU.getLastVisiblePosition();
        for (final Conversation conversation : collection) {
            if (conversation.position >= firstVisiblePosition && conversation.position <= lastVisiblePosition) {
                this.aFE.add(conversation.id);
                set.add(conversation.id);
            }
        }
        if (set.isEmpty()) {
            dk.xM();
            this.a((dk)null);
        }
        else {
            this.a(dk);
        }
        this.notifyDataSetChanged();
    }
    
    private View b(final int position, final Conversation conversation, final ViewGroup viewGroup, final boolean b) {
        conversation.position = position;
        aZ a = this.aFI.get(conversation.id);
        if (a == null) {
            a = this.a(position, viewGroup, conversation);
            a.a(this.aFN, b);
        }
        return (View)a;
    }
    
    private int cO(final int n) {
        return n - this.aFT.size();
    }
    
    private boolean q(final Account nc) {
        boolean b = true;
        final boolean b2 = (this.Nc == null || !this.Nc.uri.equals((Object)nc.uri) || this.Nc.ayw.aCc != nc.ayw.aCc || this.Nc.cy(16384) != nc.cy(16384) || this.Nc.ayw.aBS != nc.ayw.aBS) && b;
        this.Nc = nc;
        this.aFW = this.Nc.ayw.aCc;
        this.aFX = this.Nc.ayw.aCd;
        this.anX = this.Nc.cy(16384);
        final com.android.mail.a.d oq = com.android.mail.a.a.oq();
        if (nc.ayw.aBS != (b ? 1 : 0)) {
            b = false;
        }
        oq.f(3, Boolean.toString(b));
        final com.android.mail.a.d oq2 = com.android.mail.a.a.oq();
        String s;
        if (nc.ayw.aBR == 0) {
            s = "reply";
        }
        else {
            s = "reply_all";
        }
        oq2.f(7, s);
        final com.android.mail.a.d oq3 = com.android.mail.a.a.oq();
        String s2 = null;
        switch (nc.ayw.vH()) {
            default: {
                s2 = "unset";
                break;
            }
            case 1: {
                s2 = "older";
                break;
            }
            case 2: {
                s2 = "newer";
                break;
            }
            case 3: {
                s2 = "list";
                break;
            }
        }
        oq3.f(8, s2);
        return b2;
    }
    
    private void xA() {
        final LeaveBehindItem xf = this.xF();
        if (xf != null) {
            xf.zE();
        }
    }
    
    private int xC() {
        if (this.Nc != null) {
            return this.Nc.ayw.aBS;
        }
        return 1;
    }
    
    private void xH() {
        this.aFZ.clear();
        if (u.a((u)this.getCursor())) {
            for (final aL al : this.aGb) {
                al.a(this.aqp, (u)this.getCursor());
                if (al.yE()) {
                    int position = al.getPosition();
                    aL al3;
                    for (aL al2 = al; al2 != null; al2 = al3) {
                        al3 = (aL)this.aFZ.get(position);
                        this.aFZ.put(position, (Object)al2);
                        ++position;
                    }
                }
            }
        }
    }
    
    private boolean xx() {
        return !this.aFV.isEmpty();
    }
    
    private boolean xy() {
        return !this.aFJ.isEmpty();
    }
    
    public final void T(final long n) {
        if (this.aFM == n) {
            this.aFM = -1L;
        }
        this.xz();
    }
    
    public final void W(final long n) {
        if (this.xx() && this.aFV.containsKey(n)) {
            this.aFV.remove(n);
        }
        else if (this.xy()) {
            this.aFJ.remove(n);
        }
        else {
            com.android.mail.utils.E.c(ae.mW, "Trying to clear a non-existant leave behind", new Object[0]);
        }
        if (this.aFM == n) {
            this.aFM = -1L;
        }
    }
    
    public final int a(final aL al) {
        return this.aFZ.indexOfValue((Object)al);
    }
    
    public final LeaveBehindItem a(final Conversation conversation, final ToastBarOperation toastBarOperation, final int n, final int n2) {
        this.xA();
        this.aFM = conversation.id;
        if (this.aFL == null) {
            this.aFL = new ai(this);
        }
        else {
            this.mHandler.removeCallbacks(this.aFL);
        }
        final Iterator<Map.Entry<Long, LeaveBehindItem>> iterator = this.aFV.entrySet().iterator();
        while (iterator.hasNext()) {
            final LeaveBehindItem leaveBehindItem = iterator.next().getValue();
            final Conversation zg = leaveBehindItem.zG();
            if (this.aFM == -1L || zg.id != this.aFM) {
                leaveBehindItem.zE();
                leaveBehindItem.zH();
            }
        }
        this.xu();
        final LeaveBehindItem leaveBehindItem2 = (LeaveBehindItem)LayoutInflater.from(this.mContext).inflate(2130968760, (ViewGroup)this.aFU, false);
        leaveBehindItem2.a(n, this.Nc, this, toastBarOperation, conversation, this.aqp, n2);
        this.aFV.put(conversation.id, leaveBehindItem2);
        this.aFE.add(conversation.id);
        return leaveBehindItem2;
    }
    
    public final void a(final Collection<Conversation> collection, final dk dk) {
        this.a(collection, dk, this.aFG);
    }
    
    public final boolean areAllItemsEnabled() {
        return false;
    }
    
    public final void ax(final View afr) {
        this.aFR = afr;
    }
    
    public final void ay(final View view) {
        this.aFT.add(view);
    }
    
    public final void b(final Collection<Conversation> collection, final dk dk) {
        this.a(collection, dk, this.aFD);
    }
    
    public final void bindView(final View view, final Context context, final Cursor cursor) {
    }
    
    public final void bm(final boolean b) {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().bm(b);
        }
    }
    
    public final void br(final boolean b) {
        final boolean xx = this.xx();
        int n = 0;
        if (xx) {
            for (final LeaveBehindItem leaveBehindItem : this.aFV.values()) {
                if (b) {
                    this.aFJ.put(leaveBehindItem.zC(), leaveBehindItem);
                }
                else {
                    leaveBehindItem.commit();
                }
            }
            this.aFM = -1L;
            this.aFV.clear();
            n = 1;
        }
        if (this.xy() && !b) {
            final Iterator<LeaveBehindItem> iterator2 = this.aFJ.values().iterator();
            while (iterator2.hasNext()) {
                iterator2.next().commit();
            }
            this.aFJ.clear();
            n = 1;
        }
        if (!this.aFE.isEmpty()) {
            this.aFE.clear();
            n = 1;
        }
        final Iterator<aL> iterator3 = this.aGb.iterator();
        int n2 = n;
        while (iterator3.hasNext()) {
            int n3;
            if (iterator3.next().yM()) {
                n3 = 1;
            }
            else {
                n3 = n2;
            }
            n2 = n3;
        }
        if (n2 != 0) {
            this.notifyDataSetChanged();
        }
    }
    
    public final void bs(final boolean afs) {
        if (this.aFS != afs) {
            this.aFS = afs;
            this.notifyDataSetChanged();
        }
    }
    
    public final int cN(final int n) {
        final int size = this.aFT.size();
        final int n2 = n - size;
        final int size2 = this.aFZ.size();
        int n3 = size;
        for (int i = 0; i < size2; ++i) {
            if (this.aFZ.keyAt(i) <= n2) {
                ++n3;
            }
        }
        return n3;
    }
    
    public final void changeCursor(final Cursor cursor) {
        super.changeCursor(cursor);
        this.xH();
    }
    
    public final void changeCursorAndColumns(final Cursor cursor, final String[] array, final int[] array2) {
        super.changeCursorAndColumns(cursor, array, array2);
        this.xH();
    }
    
    public final void d(final Folder aqp) {
        this.aqp = aqp;
    }
    
    public final void destroy() {
        this.swapCursor(null);
        this.aFY.um();
    }
    
    public final int getCount() {
        final int n = this.aFZ.size() + super.getCount();
        if (n == 0) {
            int n2;
            if (this.aFS) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            return n2 + n;
        }
        return n + (1 + this.aFT.size());
    }
    
    public final Object getItem(final int n) {
        Object value = this.aFZ.get(this.cO(n));
        if (this.aFT.size() > n) {
            value = this.aFT.get(n);
        }
        else if (n == -1 + this.getCount()) {
            if (this.aFS) {
                return this.aFR;
            }
            return this.aFQ;
        }
        else if (value == null) {
            return super.getItem(n - this.cN(n));
        }
        return value;
    }
    
    public final long getItemId(final int n) {
        if (this.aFT.size() > n || n == -1 + this.getCount()) {
            return -1L;
        }
        final aL al = (aL)this.aFZ.get(this.cO(n));
        if (al != null) {
            return al.hashCode();
        }
        final int n2 = n - this.cN(n);
        final u u = (u)this.getCursor();
        if (u != null && u.moveToPosition(n2)) {
            final Conversation ph = u.ph();
            if (ph != null) {
                return ph.id;
            }
        }
        return super.getItemId(n2);
    }
    
    public final int getItemViewType(final int n) {
        int n2 = -1;
        if (this.aFT.size() > n) {
            n2 = 2;
        }
        else {
            if (n == -1 + this.getCount()) {
                return 1;
            }
            if (!this.xx() && !this.wo() && this.aFZ.get(this.cO(n)) == null) {
                return 0;
            }
        }
        return n2;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        boolean b = true;
        if (this.aFT.size() > n) {
            return this.aFT.get(n);
        }
        if (n == -1 + this.getCount()) {
            if (this.aFS) {
                return this.aFR;
            }
            return (View)this.aFQ;
        }
        else {
            final aL al = (aL)this.aFZ.get(this.cO(n));
            if (al != null) {
                al.yK();
                return (View)al;
            }
            com.android.mail.utils.ag.cJ("AA.getView");
            final u u = (u)this.getItem(n);
            final Conversation pg = u.pg();
            u.pi();
            if (this.V(pg.id)) {
                return this.b(n - this.cN(n), pg, viewGroup, false);
            }
            if (this.aFH.contains(pg.id)) {
                return this.b(n - this.cN(n), pg, viewGroup, b);
            }
            if (this.U(pg.id)) {
                return this.a(n - this.cN(n), pg, viewGroup, false);
            }
            if (this.aFG.contains(pg.id)) {
                return this.a(n - this.cN(n), pg, viewGroup, b);
            }
            if (this.xy() && (this.xy() && this.aFJ.containsKey(pg.id) && pg.uF() && b)) {
                final LeaveBehindItem leaveBehindItem = this.aFJ.get(pg.id);
                leaveBehindItem.a(this.aFN);
                com.android.mail.utils.ag.Bi();
                return (View)leaveBehindItem;
            }
            if (this.xx()) {
                if (!this.xx() || !this.aFV.containsKey(pg.id) || !pg.uF()) {
                    b = false;
                }
                if (b) {
                    final LeaveBehindItem leaveBehindItem2 = this.aFV.get(pg.id);
                    if (pg.id == this.aFM) {
                        if (this.aFV.size() > 2) {
                            if (leaveBehindItem2.wo()) {
                                leaveBehindItem2.dd(ae.aFC);
                            }
                            else {
                                leaveBehindItem2.dc(ae.aFC);
                            }
                        }
                        else {
                            leaveBehindItem2.dc(ae.aFB);
                        }
                    }
                    com.android.mail.utils.ag.Bi();
                    return (View)leaveBehindItem2;
                }
            }
            View view2;
            if (view != null && !(view instanceof aZ)) {
                com.android.mail.utils.E.e(ae.mW, "Incorrect convert view received; nulling it out", new Object[0]);
                view2 = this.newView(this.mContext, (Cursor)u, viewGroup);
            }
            else {
                if (view != null) {
                    ((aZ)view).reset();
                }
                view2 = view;
            }
            aZ az = (aZ)view2;
            final Context mContext = this.mContext;
            if (az == null) {
                az = new aZ(mContext, this.Nc);
            }
            az.a(pg, this.aob, this.aFK, this.aqp, this.xC(), this.anX, this.aFW, this.aFX, this);
            com.android.mail.utils.ag.Bi();
            return (View)az;
        }
    }
    
    public final int getViewTypeCount() {
        return 5;
    }
    
    public final boolean hasStableIds() {
        return true;
    }
    
    public final boolean isEnabled(final int n) {
        final aL al = (aL)this.aFZ.get(n);
        if (al != null) {
            final boolean yl = al.yL();
            com.android.mail.utils.E.c(ae.mW, "AA.isEnabled(%d) = %b", n, yl);
            return yl;
        }
        return !this.U(n) && !this.V(n);
    }
    
    public final void l(final Bundle bundle) {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().m(bundle);
        }
    }
    
    public final View newView(final Context context, final Cursor cursor, final ViewGroup viewGroup) {
        return (View)new aZ(context, this.Nc);
    }
    
    public final void notifyDataSetChanged() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            com.android.mail.utils.E.g(ae.mW, "notifyDataSetChanged() called off the main thread", new Object[0]);
        }
        this.xH();
        super.notifyDataSetChanged();
    }
    
    public final void onRestoreInstanceState(final Bundle bundle) {
        if (bundle.containsKey("last_deleting_items")) {
            final long[] longArray = bundle.getLongArray("last_deleting_items");
            for (int length = longArray.length, i = 0; i < length; ++i) {
                this.aFE.add(longArray[i]);
            }
        }
        if (bundle.containsKey("leave_behind_item_data")) {
            final LeaveBehindData leaveBehindData = (LeaveBehindData)bundle.getParcelable("leave_behind_item_data");
            this.aFV.put(bundle.getLong("leave_behind_item_id"), this.a(leaveBehindData.aKP, leaveBehindData.aKQ, leaveBehindData.aKP.position, leaveBehindData.height));
        }
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        final long[] array = new long[this.aFE.size()];
        for (int i = 0; i < array.length; ++i) {
            array[i] = this.aFE.get(i);
        }
        bundle.putLongArray("last_deleting_items", array);
        if (this.xx()) {
            if (this.aFM != -1L) {
                bundle.putParcelable("leave_behind_item_data", (Parcelable)this.aFV.get(this.aFM).zD());
                bundle.putLong("leave_behind_item_id", this.aFM);
            }
            for (final LeaveBehindItem leaveBehindItem : this.aFV.values()) {
                if (this.aFM == -1L || leaveBehindItem.zG().id != this.aFM) {
                    leaveBehindItem.commit();
                }
            }
        }
    }
    
    public final SwipeableListView pF() {
        return this.aFU;
    }
    
    public final void qD() {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().qD();
        }
    }
    
    public final android.support.v4.e.a qJ() {
        return this.aqT;
    }
    
    public final Cursor swapCursor(final Cursor cursor) {
        final Cursor swapCursor = super.swapCursor(cursor);
        this.xH();
        return swapCursor;
    }
    
    public final String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append(super.toString());
        sb.append(" mUndoingItems=");
        sb.append(this.aFF);
        sb.append(" mSwipeUndoingItems=");
        sb.append(this.aFH);
        sb.append(" mDeletingItems=");
        sb.append(this.aFD);
        sb.append(" mSwipeDeletingItems=");
        sb.append(this.aFG);
        sb.append(" mLeaveBehindItems=");
        sb.append(this.aFV);
        sb.append(" mFadeLeaveBehindItems=");
        sb.append(this.aFJ);
        sb.append(" mLastDeletingItems=");
        sb.append(this.aFE);
        sb.append(" mAnimatingViews=");
        sb.append(this.aFI);
        sb.append(" mPendingDestruction=");
        sb.append(this.aFO);
        sb.append("}");
        return sb.toString();
    }
    
    public final void wk() {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().wk();
        }
    }
    
    public final void wl() {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().wl();
        }
    }
    
    public final boolean wo() {
        return !this.aFF.isEmpty() || !this.aFH.isEmpty() || this.xy() || !this.aFD.isEmpty() || !this.aFG.isEmpty();
    }
    
    public final Q xB() {
        return this.aGa;
    }
    
    public final void xD() {
        if (!this.wo()) {
            return;
        }
        this.aFF.clear();
        this.aFH.clear();
        this.aFJ.clear();
        this.aFD.clear();
        this.aFG.clear();
        this.aFI.clear();
        com.android.mail.utils.E.e(ae.mW, "AA.clearAnimationState forcibly cleared state, this=%s", this);
    }
    
    public final u xE() {
        return (u)this.getCursor();
    }
    
    public final LeaveBehindItem xF() {
        if (this.aFM != -1L) {
            return this.aFV.get(this.aFM);
        }
        return null;
    }
    
    public final void xG() {
        final LeaveBehindItem xf = this.xF();
        if (xf != null) {
            xf.zI();
        }
    }
    
    public final a xI() {
        return this.aGc;
    }
    
    public final j xJ() {
        return this.akh;
    }
    
    public final void xK() {
        final Iterator<aL> iterator = this.aGb.iterator();
        while (iterator.hasNext()) {
            iterator.next().xK();
        }
    }
    
    public final boolean xL() {
        return !this.aFK.isEmpty();
    }
    
    public final void xt() {
        this.xA();
        this.mHandler.removeCallbacks(this.aFL);
    }
    
    public final void xu() {
        if (this.aFV.size() > 2) {
            this.mHandler.postDelayed(this.aFL, (long)ae.aFC);
            return;
        }
        this.mHandler.postDelayed(this.aFL, (long)ae.aFB);
    }
    
    public final void xv() {
        boolean b;
        if (!this.aFE.isEmpty()) {
            final Iterator<Long> iterator = this.aFE.iterator();
            b = false;
            while (iterator.hasNext()) {
                b |= this.S(iterator.next());
            }
            this.aFE.clear();
        }
        else {
            b = false;
        }
        if (this.aFM != -1L) {
            b |= this.S(this.aFM);
            this.aFM = -1L;
        }
        if (b) {
            this.notifyDataSetChanged();
            this.a(this.aFP);
        }
    }
    
    public final void xw() {
        if (!this.aFE.isEmpty()) {
            this.aFH.addAll((Collection<?>)this.aFE);
            this.aFE.clear();
        }
        if (this.aFM != -1L) {
            this.aFH.add(this.aFM);
            this.aFM = -1L;
        }
        this.notifyDataSetChanged();
        this.a(this.aFP);
    }
    
    protected final void xz() {
        final int firstVisiblePosition = this.aFU.getFirstVisiblePosition();
        final int lastVisiblePosition = this.aFU.getLastVisiblePosition();
        if (this.xx()) {
            final Iterator<Map.Entry<Long, LeaveBehindItem>> iterator = this.aFV.entrySet().iterator();
            while (iterator.hasNext()) {
                final LeaveBehindItem leaveBehindItem = iterator.next().getValue();
                final Conversation zg = leaveBehindItem.zG();
                if (this.aFM == -1L || zg.id != this.aFM) {
                    if (zg.position >= firstVisiblePosition && zg.position <= lastVisiblePosition) {
                        this.aFJ.put(zg.id, leaveBehindItem);
                    }
                    else {
                        leaveBehindItem.commit();
                    }
                    iterator.remove();
                }
            }
            this.xA();
        }
        if (!this.aFE.isEmpty()) {
            this.aFE.clear();
        }
        this.notifyDataSetChanged();
    }
}
