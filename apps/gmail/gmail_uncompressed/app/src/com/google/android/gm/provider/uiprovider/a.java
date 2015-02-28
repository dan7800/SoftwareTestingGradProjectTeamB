package com.google.android.gm.provider.uiprovider;

import com.google.android.gm.provider.*;
import java.util.*;
import android.util.*;
import java.lang.ref.*;
import com.google.common.collect.*;
import android.content.*;

public final class a
{
    private final MailEngine bdz;
    private final Map<Long, b> boc;
    private final Map<String, Integer> bod;
    private final LruCache<String, WeakReference<g>> boe;
    private final String mAccount;
    
    public a(final String mAccount, final MailEngine bdz) {
        this.boc = (Map<Long, b>)Maps.aan();
        this.bod = (Map<String, Integer>)Maps.aan();
        this.boe = (LruCache<String, WeakReference<g>>)new LruCache(3);
        this.mAccount = mAccount;
        this.bdz = bdz;
    }
    
    private void fm(final String s) {
        if (!this.bod.containsKey(s)) {
            this.bod.clear();
            this.bod.put(s, 0);
        }
    }
    
    public final b F(final Context context, final long n) {
        synchronized (this.boc) {
            b b;
            if (this.boc.containsKey(n)) {
                b = this.boc.get(n);
            }
            else {
                final b b2 = new b(context, this.mAccount, n, this.bdz);
                this.boc.put(n, b2);
                b = b2;
            }
            return b;
        }
    }
    
    public final void a(final String s, final g g) {
        this.boe.put((Object)s, (Object)new WeakReference(g));
    }
    
    public final b aS(final long n) {
        synchronized (this.boc) {
            return this.boc.get(n);
        }
    }
    
    public final void aT(final long n) {
        synchronized (this.boc) {
            final b b = this.boc.get(n);
            // monitorexit(this.boc)
            if (b != null) {
                b.HW();
            }
        }
    }
    
    public final int fk(final String s) {
        this.fm(s);
        final Integer n = this.bod.get(s);
        if (n != null) {
            return n;
        }
        return 0;
    }
    
    public final g fl(final String s) {
        final WeakReference weakReference = (WeakReference)this.boe.get((Object)s);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
    
    public final void h(final String s, final int n) {
        this.fm(s);
        this.bod.put(s, n);
    }
}
