package com.google.android.gm;

import android.database.*;
import com.android.mail.utils.*;
import android.content.*;
import com.google.common.collect.*;
import android.os.*;
import java.util.*;
import com.google.android.gm.provider.*;

public final class al extends DataSetObservable implements Iterable<String>
{
    final /* synthetic */ ah aYN;
    private final LRUCache<String, Void> aYP;
    
    private al(final ah ayn, final List<String> list, final int n) {
        this.aYN = ayn;
        this.aYP = new LRUCache<String, Void>(n);
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.aYP.X(iterator.next());
        }
    }
    
    public final void a(final DataSetObserver dataSetObserver) {
        super.registerObserver((Object)dataSetObserver);
        this.aYN.aYJ.add(this);
        if (this.aYN.aYJ.size() > 3) {
            E.e(ay.mW, "global RLC update set size=%d", this.aYN.aYJ.size());
        }
    }
    
    public final void b(final DataSetObserver dataSetObserver) {
        super.unregisterObserver((Object)dataSetObserver);
        if (this.mObservers.isEmpty()) {
            this.aYN.aYJ.remove(this);
        }
    }
    
    public final Iterator<String> iterator() {
        return this.aYP.keySet().iterator();
    }
    
    public final int size() {
        return this.aYP.size();
    }
    
    public final void unregisterAll() {
        super.unregisterAll();
        this.aYN.aYJ.remove(this);
    }
}
