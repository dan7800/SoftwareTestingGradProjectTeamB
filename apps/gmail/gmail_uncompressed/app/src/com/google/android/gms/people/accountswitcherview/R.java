package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import com.google.android.gms.people.model.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import java.util.*;
import android.graphics.drawable.*;
import android.text.*;
import android.view.*;

public final class r extends BaseAdapter
{
    private static final int chI;
    private LayoutInflater brO;
    private ArrayList<d> cgS;
    private i chJ;
    private String chK;
    private v chL;
    private t chM;
    private int chN;
    private int chO;
    private boolean chP;
    private boolean chQ;
    private boolean chR;
    private a chS;
    private Context mContext;
    
    static {
        chI = D.ciy;
    }
    
    public r(final Context mContext, v chL, final t chM) {
        this.cgS = new ArrayList<d>();
        this.chP = true;
        this.chQ = true;
        this.mContext = mContext;
        this.chN = 2130968605;
        this.brO = LayoutInflater.from(mContext);
        if (chL == null) {
            chL = new s(this, (byte)0);
        }
        this.chL = chL;
        this.chM = chM;
        final TypedArray obtainStyledAttributes = mContext.obtainStyledAttributes(new TypedValue().data, new int[] { x.chX });
        this.chO = obtainStyledAttributes.getColor(0, mContext.getResources().getColor(y.chY));
        obtainStyledAttributes.recycle();
        this.chS = new a(mContext);
    }
    
    public static List<d> a(final List<d> list, final d d, final d d2) {
        String fp;
        if (d2 != null) {
            fp = d2.FP();
        }
        else {
            fp = null;
        }
        String fp2;
        if (d != null) {
            fp2 = d.FP();
        }
        else {
            fp2 = null;
        }
        int n = -1;
        int n2 = -1;
        for (int i = 0; i < list.size(); ++i) {
            final d d3 = list.get(i);
            if (n2 < 0 && d3.FP().equals(fp)) {
                n2 = i;
            }
            if (n < 0 && d3.FP().equals(fp2)) {
                n = i;
            }
        }
        if (n2 >= 0) {
            list.remove(n2);
        }
        if (n < 0 && fp2 != null && !fp2.equals(fp)) {
            list.add(d);
        }
        return list;
    }
    
    public final void S(final List<d> list) {
        if (this.chR) {
            this.cgS.clear();
            if (list != null) {
                final Iterator<d> iterator = list.iterator();
                while (iterator.hasNext()) {
                    this.cgS.add(iterator.next());
                }
            }
            this.notifyDataSetChanged();
        }
        else {
            this.cgS = this.chS.R(list);
        }
        this.notifyDataSetChanged();
    }
    
    public final void UW() {
        if (!this.chP) {
            this.chP = true;
            this.notifyDataSetChanged();
        }
    }
    
    public final void UX() {
        this.chR = true;
    }
    
    public final View a(final View view, final d d, final i i, final v v, final t t, final boolean b, final int textColor) {
        u ak;
        if (view.getTag() == null) {
            ak = v.aK(view);
            view.setTag((Object)ak);
        }
        else {
            ak = (u)view.getTag();
        }
        if (ak.chW != null && i != null) {
            ak.chW.setImageDrawable((Drawable)null);
            if (!TextUtils.isEmpty((CharSequence)d.Iw())) {
                i.a(ak.chW);
                i.a(ak.chW, d.FP(), d.Iu(), 1);
            }
            else {
                i.a(ak.chW);
                ak.chW.setImageBitmap(i.b(view.getContext(), d.FP(), d.Iu(), 1));
            }
        }
        if (ak.chU != null) {
            ak.chU.setTextColor(textColor);
            ak.chU.setVisibility(0);
            ak.chU.setText((CharSequence)d.FP());
            ak.chU.setContentDescription((CharSequence)this.mContext.getResources().getString(E.ciD, new Object[] { d.FP() }));
        }
        if (t != null) {
            t.a(ak, d, b, textColor);
        }
        return view;
    }
    
    public final void a(final i chJ) {
        this.chJ = chJ;
    }
    
    public final void disconnect() {
        if (this.chS != null) {
            this.chS.detach();
        }
    }
    
    public final d eR(final int n) {
        if ((!this.chP || n != -1 + this.getCount()) && this.cgS != null) {
            return this.cgS.get(n);
        }
        return null;
    }
    
    public final int getCount() {
        int n = 1;
        int n2;
        if (this.chP) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (!this.chQ) {
            n = 0;
        }
        final int n3 = n2 + n;
        final ArrayList<d> cgS = this.cgS;
        int size = 0;
        if (cgS != null) {
            size = this.cgS.size();
        }
        return n3 + size;
    }
    
    public final long getItemId(final int n) {
        if (!this.chP || n != -1 + this.getCount()) {
            if (this.chQ && n == -2 + this.getCount()) {
                return -2L;
            }
            if (this.cgS != null) {
                return this.cgS.get(n).FP().hashCode();
            }
        }
        return -1L;
    }
    
    public final int getItemViewType(final int n) {
        final int count = this.getCount();
        if (this.chP && n == count - 1) {
            return 2;
        }
        if (this.chQ && ((this.chP && n == count - 2) || (!this.chP && n == count - 1))) {
            return 1;
        }
        return 0;
    }
    
    public final View getView(final int n, View inflate, final ViewGroup viewGroup) {
        boolean b = true;
        if (this.getItemViewType(n) == 2) {
            if (inflate == null) {
                inflate = this.brO.inflate(D.ciA, (ViewGroup)null);
            }
        }
        else {
            if (this.getItemViewType(n) != (b ? 1 : 0)) {
                View inflate2;
                if (inflate == null) {
                    inflate2 = this.brO.inflate(this.chN, (ViewGroup)null);
                }
                else {
                    inflate2 = inflate;
                }
                final d er = this.eR(n);
                final i chJ = this.chJ;
                final v chL = this.chL;
                final t chM = this.chM;
                if (this.chK == null || !this.chK.equals(er.FP())) {
                    b = false;
                }
                return this.a(inflate2, er, chJ, chL, chM, b, this.chO);
            }
            if (inflate == null) {
                return this.brO.inflate(D.ciz, (ViewGroup)null);
            }
        }
        return inflate;
    }
    
    public final int getViewTypeCount() {
        return 3;
    }
}
