package com.android.mail.browse;

import android.widget.*;
import android.database.*;
import java.util.*;
import android.view.*;

public final class aw<T extends ListAdapter> extends BaseAdapter
{
    private final DataSetObserver EG;
    private List<T> arM;
    
    public aw() {
        this.EG = new ax(this);
    }
    
    private ay<T> ci(final int n) {
        final int size = this.arM.size();
        int n2 = 0;
        int n4;
        for (int i = 0; i < size; i = n4) {
            final ListAdapter listAdapter = this.arM.get(i);
            final int n3 = n2 + listAdapter.getCount();
            if (n < n3) {
                return new ay<T>(listAdapter, n - n2);
            }
            n4 = i + 1;
            n2 = n3;
        }
        return null;
    }
    
    public final void a(final T... array) {
        if (this.arM != null) {
            final Iterator<T> iterator = this.arM.iterator();
            while (iterator.hasNext()) {
                iterator.next().unregisterDataSetObserver(this.EG);
            }
        }
        this.arM = Arrays.asList(array);
        final Iterator<T> iterator2 = this.arM.iterator();
        while (iterator2.hasNext()) {
            iterator2.next().registerDataSetObserver(this.EG);
        }
    }
    
    public final boolean areAllItemsEnabled() {
        final Iterator<T> iterator = this.arM.iterator();
        boolean b = true;
        while (iterator.hasNext()) {
            b &= iterator.next().areAllItemsEnabled();
        }
        return b;
    }
    
    public final int getCount() {
        final Iterator<T> iterator = this.arM.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            n += iterator.next().getCount();
        }
        return n;
    }
    
    public final Object getItem(final int n) {
        final ay<ListAdapter> ci = this.ci(n);
        if (ci == null) {
            return null;
        }
        return ci.AV.getItem(ci.arO);
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final int getItemViewType(final int n) {
        final ay<ListAdapter> ci = this.ci(n);
        final Iterator<T> iterator = this.arM.iterator();
        int n2 = 0;
        while (iterator.hasNext()) {
            final ListAdapter listAdapter = iterator.next();
            if (listAdapter == ci.AV) {
                break;
            }
            n2 += listAdapter.getViewTypeCount();
        }
        int itemViewType = ci.AV.getItemViewType(ci.arO);
        if (itemViewType >= 0) {
            itemViewType += n2;
        }
        return itemViewType;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        final ay<ListAdapter> ci = this.ci(n);
        return ci.AV.getView(ci.arO, view, viewGroup);
    }
    
    public final int getViewTypeCount() {
        final Iterator<T> iterator = this.arM.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            n += iterator.next().getViewTypeCount();
        }
        return n;
    }
    
    public final boolean isEnabled(final int n) {
        final ay<ListAdapter> ci = this.ci(n);
        return ci.AV.isEnabled(ci.arO);
    }
}
