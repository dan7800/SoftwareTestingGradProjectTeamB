package com.android.ex.chips;

import android.accounts.*;
import android.content.*;
import android.database.*;
import android.net.*;
import android.util.*;
import android.content.pm.*;
import java.util.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;

public class a extends BaseAdapter implements Filterable, r
{
    private Account Tw;
    private final v abY;
    private final int abZ;
    protected final int aca;
    private DropdownChipLayouter acb;
    private LinkedHashMap<Long, List<ae>> acc;
    private List<ae> acd;
    private Set<String> ace;
    private List<ae> acf;
    private List<ae> acg;
    private int ach;
    protected CharSequence aci;
    private q acj;
    private final d ack;
    private h acl;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    
    public a(final Context context) {
        this(context, (byte)0);
    }
    
    private a(final Context mContext, final byte b) {
        this.ack = new d(this, (byte)0);
        this.mContext = mContext;
        this.mContentResolver = mContext.getContentResolver();
        this.aca = 10;
        this.acj = new j(this.mContentResolver);
        this.abZ = 0;
        this.abY = s.adj;
    }
    
    public static List<g> a(final Context context, final Cursor cursor, final Account account) {
        final PackageManager packageManager = context.getPackageManager();
        final ArrayList<g> list = new ArrayList<g>();
        g g = null;
    Label_0179_Outer:
        while (cursor.moveToNext()) {
            final long long1 = cursor.getLong(0);
            if (long1 != 1L) {
                final g g2 = new g();
                final String string = cursor.getString(4);
                final int int1 = cursor.getInt(5);
                g2.act = long1;
                g2.acv = cursor.getString(3);
                g2.acw = cursor.getString(1);
                g2.accountType = cursor.getString(2);
                while (true) {
                    if (string == null || int1 == 0) {
                        break Label_0179;
                    }
                    try {
                        g2.acu = packageManager.getResourcesForApplication(string).getString(int1);
                        if (g2.acu == null) {
                            Log.e("BaseRecipientAdapter", "Cannot resolve directory name: " + int1 + "@" + string);
                        }
                        if (account != null && account.name.equals(g2.acw) && account.type.equals(g2.accountType)) {
                            g = g2;
                            continue Label_0179_Outer;
                        }
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        Log.e("BaseRecipientAdapter", "Cannot resolve directory name: " + int1 + "@" + string, (Throwable)ex);
                        continue;
                    }
                    break;
                }
                list.add(g2);
            }
        }
        if (g != null) {
            list.add(1, g);
        }
        return list;
    }
    
    private List<ae> a(final LinkedHashMap<Long, List<ae>> linkedHashMap, final List<ae> list) {
        final ArrayList<ae> list2 = new ArrayList<ae>();
        final Iterator<Map.Entry<Long, List<ae>>> iterator = linkedHashMap.entrySet().iterator();
        int n = 0;
        while (true) {
            while (iterator.hasNext()) {
                final List<ae> list3 = iterator.next().getValue();
                final int size = list3.size();
                int i = 0;
                int n2 = n;
                while (i < size) {
                    final ae ae = list3.get(i);
                    list2.add(ae);
                    this.acj.b(ae, this);
                    ++n2;
                    ++i;
                }
                if (n2 > this.aca) {
                    if (n2 <= this.aca) {
                        for (final ae ae2 : list) {
                            if (n2 > this.aca) {
                                break;
                            }
                            list2.add(ae2);
                            this.acj.b(ae2, this);
                            ++n2;
                        }
                    }
                    return list2;
                }
                n = n2;
            }
            int n2 = n;
            continue;
        }
    }
    
    private static void a(final i i, final boolean b, final LinkedHashMap<Long, List<ae>> linkedHashMap, final List<ae> list, final Set<String> set) {
        if (set.contains(i.acz)) {
            return;
        }
        set.add(i.acz);
        if (!b) {
            list.add(ae.a(i.acv, i.acG, i.acz, i.acA, i.acB, i.acC, i.acD, i.acE, i.acF, i.acH));
            return;
        }
        if (linkedHashMap.containsKey(i.acC)) {
            linkedHashMap.get(i.acC).add(ae.b(i.acv, i.acG, i.acz, i.acA, i.acB, i.acC, i.acD, i.acE, i.acF, i.acH));
            return;
        }
        final ArrayList<ae> list2 = new ArrayList<ae>();
        list2.add(ae.a(i.acv, i.acG, i.acz, i.acA, i.acB, i.acC, i.acD, i.acE, i.acF, i.acH));
        linkedHashMap.put(i.acC, list2);
    }
    
    private List<ae> mq() {
        if (this.acg != null) {
            return this.acg;
        }
        return this.acf;
    }
    
    protected final void D(final int n, final int n2) {
        if (n == 0 && n2 > 1) {
            this.acg = this.acf;
        }
    }
    
    public final void a(final Account tw) {
        this.Tw = tw;
    }
    
    public final void a(final DropdownChipLayouter acb) {
        (this.acb = acb).a(this.abY);
    }
    
    protected final void a(final ae ae, final r r) {
        this.acj.b(ae, r);
    }
    
    public final void a(final h acl) {
        this.acl = acl;
    }
    
    protected void a(final i i, final boolean b) {
        a(i, b, this.acc, this.acd, this.ace);
    }
    
    public final void a(final q acj) {
        this.acj = acj;
    }
    
    protected final void a(final CharSequence acx, final List<g> list, final int n) {
        final int size = list.size();
        for (int i = 1; i < size; ++i) {
            final g g = list.get(i);
            g.acx = acx;
            if (g.acy == null) {
                g.acy = new e(this, g);
            }
            g.acy.bp(n);
            g.acy.filter(acx);
        }
        this.ach = size - 1;
        this.ack.mv();
    }
    
    public void a(final ArrayList<String> list, final H h) {
        F.a(this.mContext, this, list, this.Tw, h);
    }
    
    protected final List<g> b(final Set<String> set) {
        Cursor query = null;
        if (this.aca - set.size() > 0) {
            try {
                query = this.mContentResolver.query(f.URI, f.Lm, (String)null, (String[])null, (String)null);
                return a(this.mContext, query, this.Tw);
            }
            finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        return null;
    }
    
    public final ae bo(final int n) {
        return this.mq().get(n);
    }
    
    public final Context getContext() {
        return this.mContext;
    }
    
    public int getCount() {
        final List<ae> mq = this.mq();
        if (mq != null) {
            return mq.size();
        }
        return 0;
    }
    
    public Filter getFilter() {
        return new b(this, (byte)0);
    }
    
    public long getItemId(final int n) {
        return n;
    }
    
    public int getItemViewType(final int n) {
        return this.mq().get(n).mT();
    }
    
    public View getView(final int n, final View view, final ViewGroup viewGroup) {
        final ae ae = this.mq().get(n);
        if (this.aci != null) {
            this.aci.toString();
        }
        return this.acb.a(view, viewGroup, ae, n, DropdownChipLayouter$AdapterType.acY, null);
    }
    
    public int getViewTypeCount() {
        return 1;
    }
    
    protected final void h(final List<ae> acf) {
        this.acf = acf;
        this.acl.i(acf);
        this.notifyDataSetChanged();
    }
    
    public boolean isEnabled(final int n) {
        return this.mq().get(n).isSelectable();
    }
    
    public final int ml() {
        return this.abZ;
    }
    
    public final q mm() {
        return this.acj;
    }
    
    public boolean mn() {
        return false;
    }
    
    protected List<ae> mo() {
        return this.a(this.acc, this.acd);
    }
    
    protected final void mp() {
        this.acg = null;
    }
    
    public final Account mr() {
        return this.Tw;
    }
    
    public final void ms() {
    }
    
    public final void mt() {
        this.notifyDataSetChanged();
    }
    
    public final void mu() {
    }
}
