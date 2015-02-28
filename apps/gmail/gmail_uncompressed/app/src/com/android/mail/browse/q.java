package com.android.mail.browse;

import android.util.*;
import android.view.*;

public final class Q
{
    private final SparseArray<O> apw;
    private final SparseArray<View> apx;
    
    public Q() {
        this.apw = (SparseArray<O>)new SparseArray();
        this.apx = (SparseArray<View>)new SparseArray();
    }
    
    public final void a(final int n, final O o) {
        this.apw.put(n, (Object)o);
    }
    
    public final void at(final View view) {
        this.apx.put(2130968653, (Object)view);
    }
    
    public final O bZ(final int n) {
        return (O)this.apw.get(n);
    }
    
    public final View qe() {
        return (View)this.apx.get(2130968653);
    }
}
