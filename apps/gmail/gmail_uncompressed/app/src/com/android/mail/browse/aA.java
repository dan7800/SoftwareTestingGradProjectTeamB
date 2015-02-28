package com.android.mail.browse;

import android.widget.*;
import com.android.mail.*;
import com.android.emailcommon.mail.*;
import android.support.v4.e.*;
import android.app.*;
import android.content.*;
import com.android.mail.ui.*;
import android.view.*;
import java.util.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;

public final class aa extends BaseAdapter
{
    private static final String mW;
    private final m alu;
    private final e aqH;
    private final LoaderManager aqI;
    private final aH aqJ;
    private final aE aqK;
    private final b aqL;
    private final ag aqM;
    private final K aqN;
    private final aP aqO;
    private final aY aqP;
    private final Map<String, Address> aqQ;
    private final List<V> aqR;
    private final aj aqS;
    private final a aqT;
    private final View$OnKeyListener aqU;
    private final FragmentManager c;
    private final Context mContext;
    private final LayoutInflater wC;
    
    static {
        mW = D.AU();
    }
    
    public aa(final as as, final m alu, final LoaderManager aqI, final aH aqJ, final aE aqK, final b aqL, final ag aqM, final K aqN, final aP aqO, final aY aqP, final Map<String, Address> aqQ, final e aqH, final a aqT, final View$OnKeyListener aqU) {
        this.mContext = as.xg();
        this.aqH = aqH;
        this.alu = alu;
        this.aqI = aqI;
        this.c = as.getFragmentManager();
        this.aqJ = aqJ;
        this.aqK = aqK;
        this.aqL = aqL;
        this.aqM = aqM;
        this.aqN = aqN;
        this.aqO = aqO;
        this.aqP = aqP;
        this.aqQ = aqQ;
        this.wC = LayoutInflater.from(this.mContext);
        this.aqR = new ArrayList<V>();
        this.aqS = as.yd().wz();
        this.aqT = aqT;
        this.aqU = aqU;
    }
    
    public static ad a(final aa aa, final ae ae) {
        return new ad(aa, ae, (byte)0);
    }
    
    public static ae a(final aa aa, final e e, final ConversationMessage conversationMessage, final boolean b, final boolean b2) {
        return new ae(aa, e, conversationMessage, b, b2);
    }
    
    public final int a(final ConversationMessage conversationMessage, final boolean b, final boolean b2) {
        return this.a((V)new ae(this, this.aqH, conversationMessage, b, b2));
    }
    
    public final int a(final V v) {
        final int size = this.aqR.size();
        v.cb(size);
        this.aqR.add(v);
        return size;
    }
    
    public final int a(final ae ae) {
        return this.a(new ab(this, ae));
    }
    
    public final View a(View view, final boolean b, final Set<View> set) {
        while (view.getTag() != "overlay_item_root") {
            final ViewParent parent = view.getParent();
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View)parent;
        }
        for (int i = 0; i < this.aqR.size(); ++i) {
            if (this.aqR.get(i).agR == view) {
                if (!b || i < 0) {
                    View qv = null;
                    Label_0168: {
                        break Label_0168;
                        V v;
                        do {
                            final int n;
                            i = n;
                            n = i - 1;
                            if (n < 0) {
                                return null;
                            }
                            v = this.aqR.get(n);
                            qv = v.qv();
                        } while (v.agR == null || set.contains(v.agR) || qv == null || !qv.isFocusable());
                    }
                    return qv;
                }
                while (++i < this.aqR.size()) {
                    final V v2 = this.aqR.get(i);
                    final View qv2 = v2.qv();
                    if (v2.agR != null && !set.contains(v2.agR) && qv2 != null && qv2.isFocusable()) {
                        return qv2;
                    }
                }
                return null;
            }
        }
        return null;
    }
    
    public final View a(final V v, View c, final ViewGroup viewGroup, final boolean b) {
        if (c == null) {
            final Context mContext = this.mContext;
            c = v.c(this.wC, viewGroup);
        }
        v.i(c, b);
        return c;
    }
    
    public final void a(final ConversationMessage conversationMessage, final List<Integer> list) {
        for (int size = this.aqR.size(), i = 0; i < size; ++i) {
            final V v = this.aqR.get(i);
            if (v.a(conversationMessage)) {
                v.b(conversationMessage);
                list.add(i);
            }
        }
    }
    
    public final void a(final af af, final Collection<V> collection) {
        final int index = this.aqR.indexOf(af);
        if (index != -1) {
            this.aqR.remove(index);
            this.aqR.addAll(index, collection);
            for (int size = this.aqR.size(), i = 0; i < size; ++i) {
                this.aqR.get(i).cb(i);
            }
        }
    }
    
    public final int b(final ae ae) {
        return this.a(new ad(this, ae, (byte)0));
    }
    
    public final boolean b(final V v) {
        final int n = -1 + v.getPosition();
        final int size = this.aqR.size();
        return n >= 0 && n < size && this.aqR.get(n).getType() == 4;
    }
    
    public final int c(final int n, final int n2, final boolean b) {
        return this.a(new af(this, n, n2, b, (byte)0));
    }
    
    public final V cd(final int n) {
        return this.aqR.get(n);
    }
    
    public final void clear() {
        this.aqR.clear();
        this.notifyDataSetChanged();
    }
    
    public final int d(final Conversation conversation) {
        return this.a(new ac(this, conversation, (byte)0));
    }
    
    public final int getCount() {
        return this.aqR.size();
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final int getItemViewType(final int n) {
        return this.aqR.get(n).getType();
    }
    
    public final LayoutInflater getLayoutInflater() {
        return this.wC;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        return this.a(this.cd(n), view, viewGroup, false);
    }
    
    public final int getViewTypeCount() {
        return 8;
    }
    
    public final e qF() {
        return this.aqH;
    }
    
    public final ab qG() {
        final int size = this.aqR.size();
        Object o;
        if (size < 4) {
            E.f(aa.mW, "not enough items in the adapter. count: %s", size);
            o = null;
        }
        else {
            o = this.aqR.remove(size - 1);
            if (o == null) {
                E.f(aa.mW, "removed wrong overlay item: %s", o);
                return null;
            }
        }
        return (ab)o;
    }
    
    public final ab qH() {
        final int size = this.aqR.size();
        if (size < 4) {
            E.f(aa.mW, "not enough items in the adapter. count: %s", size);
            return null;
        }
        final V v = this.aqR.get(size - 1);
        try {
            return (ab)v;
        }
        catch (ClassCastException ex) {
            E.f(aa.mW, "Last item is not a conversation footer. type: %s", v.getType());
            return null;
        }
    }
    
    public final boolean qI() {
        if (this.aqR.size() > 1) {
            final View qv = this.aqR.get(1).qv();
            if (qv != null && qv.isShown() && qv.isFocusable()) {
                qv.requestFocus();
                return true;
            }
        }
        return false;
    }
    
    public final a qJ() {
        return this.aqT;
    }
    
    public final View$OnKeyListener qo() {
        return this.aqU;
    }
}
