package android.support.v7.internal.widget;

import android.widget.*;
import android.view.*;
import android.database.*;

final class L implements ListAdapter, SpinnerAdapter
{
    private ListAdapter AS;
    private SpinnerAdapter yw;
    
    public L(final SpinnerAdapter yw) {
        this.yw = yw;
        if (yw instanceof ListAdapter) {
            this.AS = (ListAdapter)yw;
        }
    }
    
    public final boolean areAllItemsEnabled() {
        final ListAdapter as = this.AS;
        return as == null || as.areAllItemsEnabled();
    }
    
    public final int getCount() {
        if (this.yw == null) {
            return 0;
        }
        return this.yw.getCount();
    }
    
    public final View getDropDownView(final int n, final View view, final ViewGroup viewGroup) {
        if (this.yw == null) {
            return null;
        }
        return this.yw.getDropDownView(n, view, viewGroup);
    }
    
    public final Object getItem(final int n) {
        if (this.yw == null) {
            return null;
        }
        return this.yw.getItem(n);
    }
    
    public final long getItemId(final int n) {
        if (this.yw == null) {
            return -1L;
        }
        return this.yw.getItemId(n);
    }
    
    public final int getItemViewType(final int n) {
        return 0;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        return this.getDropDownView(n, view, viewGroup);
    }
    
    public final int getViewTypeCount() {
        return 1;
    }
    
    public final boolean hasStableIds() {
        return this.yw != null && this.yw.hasStableIds();
    }
    
    public final boolean isEmpty() {
        return this.getCount() == 0;
    }
    
    public final boolean isEnabled(final int n) {
        final ListAdapter as = this.AS;
        return as == null || as.isEnabled(n);
    }
    
    public final void registerDataSetObserver(final DataSetObserver dataSetObserver) {
        if (this.yw != null) {
            this.yw.registerDataSetObserver(dataSetObserver);
        }
    }
    
    public final void unregisterDataSetObserver(final DataSetObserver dataSetObserver) {
        if (this.yw != null) {
            this.yw.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
