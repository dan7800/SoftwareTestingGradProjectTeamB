package com.google.android.gm;

import android.content.*;

public final class ag extends AsyncTaskLoader<al>
{
    private aw aYI;
    private final String mAccount;
    
    public ag(final Context context, final String mAccount, final aw ayi) {
        super(context);
        this.mAccount = mAccount;
        this.aYI = ayi;
    }
    
    protected final void onReset() {
        this.stopLoading();
    }
    
    protected final void onStartLoading() {
        this.forceLoad();
    }
    
    protected final void onStopLoading() {
        this.cancelLoad();
    }
}
