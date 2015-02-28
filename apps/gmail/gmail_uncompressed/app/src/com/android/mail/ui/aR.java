package com.android.mail.ui;

import android.app.*;
import com.google.common.collect.*;
import java.util.*;
import android.database.*;
import android.os.*;
import android.content.*;
import com.android.mail.*;

public class ar implements LoaderManager$LoaderCallbacks<ImmutableMap<String, a>>, b
{
    private ImmutableMap<String, a> aGy;
    private Set<String> akd;
    private DataSetObservable ib;
    private Context mContext;
    
    public ar(final Context mContext) {
        this.ib = new DataSetObservable();
        this.mContext = mContext;
    }
    
    public final void a(final DataSetObserver dataSetObserver) {
        this.ib.registerObserver((Object)dataSetObserver);
    }
    
    public final a aX(final String s) {
        if (this.aGy == null) {
            return null;
        }
        return this.aGy.get(s);
    }
    
    public final void b(final DataSetObserver dataSetObserver) {
        this.ib.unregisterObserver((Object)dataSetObserver);
    }
    
    protected final Context getContext() {
        return this.mContext;
    }
    
    public final void i(final Set<String> akd) {
        this.akd = akd;
    }
    
    public Loader<ImmutableMap<String, a>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<ImmutableMap<String, a>>)new j(this.mContext, this.akd);
    }
    
    public void onLoaderReset(final Loader<ImmutableMap<String, a>> loader) {
    }
    
    protected final Set<String> xW() {
        return this.akd;
    }
}
