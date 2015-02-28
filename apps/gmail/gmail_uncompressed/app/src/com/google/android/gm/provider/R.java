package com.google.android.gm.provider;

import android.database.*;
import android.app.*;
import com.google.common.primitives.*;
import java.util.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;
import android.content.*;

final class r extends CursorLoader
{
    private final DownloadManager azU;
    final /* synthetic */ k bdd;
    private final ContentObserver bdn;
    private long[] bdo;
    
    public r(final k bdd, final Context context) {
        this.bdd = bdd;
        super(context);
        this.azU = (DownloadManager)context.getSystemService("download");
        this.bdn = (ContentObserver)new Loader$ForceLoadContentObserver((Loader)this);
    }
    
    public final Cursor loadInBackground() {
        final Cursor query = this.azU.query(new DownloadManager$Query().setFilterById(this.bdo));
        if (query != null) {
            query.registerContentObserver(this.bdn);
        }
        return query;
    }
    
    protected final void onReset() {
        super.onReset();
        if (this.bdo != null) {
            final List<Long> a = Longs.a(this.bdo);
            this.bdd.bdb.w(a);
            E.c(k.mW, "ASL removing %s", a);
        }
    }
    
    public final void x(final Collection<Long> collection) {
        E.c(k.mW, "ASL tracking %s", collection);
        this.bdd.bdb.v(collection);
        this.bdo = new long[collection.size()];
        final Iterator<Long> iterator = collection.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            this.bdo[n] = iterator.next();
            ++n;
        }
    }
}
