package com.android.mail.ui;

import com.android.mail.browse.*;
import java.util.*;
import android.net.*;
import android.app.*;
import com.android.mail.providers.*;
import android.content.*;

public final class au extends AsyncTaskLoader<u>
{
    private static final ArrayList<au> aGG;
    private final u aGC;
    private boolean aGD;
    private boolean aGE;
    private boolean aGF;
    private final Uri eM;
    private boolean mClosed;
    private final String mName;
    
    static {
        aGG = new ArrayList<au>();
    }
    
    public au(final Activity activity, final Account account, final Uri em, final String mName, final boolean b) {
        super((Context)activity);
        this.aGD = false;
        this.mClosed = false;
        this.aGE = false;
        this.aGF = false;
        this.eM = em;
        this.mName = mName;
        boolean cy = false;
        if (!b) {
            cy = account.cy(262144);
        }
        this.aGC = new u(activity, this.eM, cy, mName);
    }
    
    public final void onReset() {
        if (!this.aGE) {
            this.aGC.disable();
            this.mClosed = true;
        }
    }
    
    protected final void onStartLoading() {
        if (this.mClosed) {
            this.mClosed = false;
            this.aGC.oV();
        }
        else if (this.aGF) {
            this.aGF = false;
        }
        this.forceLoad();
        this.aGC.resume();
    }
    
    protected final void onStopLoading() {
        this.cancelLoad();
        this.aGC.pause();
    }
}
