package com.android.datetimepicker.date;

import android.content.*;
import java.util.*;
import android.widget.*;
import android.view.*;
import android.annotation.*;

public abstract class i extends BaseAdapter implements m
{
    protected static int IG;
    protected final a IA;
    private j It;
    private final Context mContext;
    
    static {
        i.IG = 7;
    }
    
    public i(final Context mContext, final a ia) {
        this.mContext = mContext;
        this.IA = ia;
        this.It = new j(System.currentTimeMillis());
        this.a(this.IA.gf());
    }
    
    public final void a(final j it) {
        this.It = it;
        this.notifyDataSetChanged();
    }
    
    public final void b(final j j) {
        if (j != null) {
            this.IA.ge();
            this.IA.c(j.year, j.month, j.IH);
            this.a(j);
        }
    }
    
    public int getCount() {
        return 12 * (1 + (this.IA.gh() - this.IA.gg()));
    }
    
    public Object getItem(final int n) {
        return null;
    }
    
    public long getItemId(final int n) {
        return n;
    }
    
    @SuppressLint({ "NewApi" })
    public View getView(final int n, final View view, final ViewGroup viewGroup) {
        boolean clickable = true;
        int ih = -1;
        k k;
        HashMap<String, Integer> hashMap;
        if (view != null) {
            k = (k)view;
            hashMap = (HashMap<String, Integer>)k.getTag();
        }
        else {
            k = this.k(this.mContext);
            k.setLayoutParams((ViewGroup$LayoutParams)new AbsListView$LayoutParams(ih, ih));
            k.setClickable(clickable);
            k.a(this);
            hashMap = null;
        }
        if (hashMap == null) {
            hashMap = new HashMap<String, Integer>();
        }
        hashMap.clear();
        final int n2 = n % 12;
        final int n3 = n / 12 + this.IA.gg();
        if (this.It.year != n3 || this.It.month != n2) {
            clickable = false;
        }
        if (clickable) {
            ih = this.It.IH;
        }
        k.gq();
        hashMap.put("selected_day", ih);
        hashMap.put("year", n3);
        hashMap.put("month", n2);
        hashMap.put("week_start", this.IA.getFirstDayOfWeek());
        k.a(hashMap);
        k.invalidate();
        return k;
    }
    
    public boolean hasStableIds() {
        return true;
    }
    
    public abstract k k(final Context p0);
}
