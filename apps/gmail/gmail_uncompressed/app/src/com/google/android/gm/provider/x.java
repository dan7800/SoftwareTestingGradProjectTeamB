package com.google.android.gm.provider;

import android.content.*;

public final class X extends AsyncTaskLoader<U>
{
    private U aYR;
    private final boolean bhd;
    private final String mAccount;
    
    public X(final Context context, final String mAccount) {
        super(context);
        this.mAccount = mAccount;
        this.bhd = true;
    }
    
    protected final void onReset() {
        this.stopLoading();
    }
    
    protected final void onStartLoading() {
        this.forceLoad();
    }
    
    protected final void onStopLoading() {
        if (this.bhd && this.aYR != null) {
            this.aYR.Fe();
            this.aYR = null;
        }
        this.cancelLoad();
    }
}
