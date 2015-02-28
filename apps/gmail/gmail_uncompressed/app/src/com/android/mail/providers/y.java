package com.android.mail.providers;

import android.database.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;

public abstract class y extends DataSetObserver
{
    private static final String mW;
    private cM aBH;
    
    static {
        mW = D.AU();
    }
    
    public final cN a(final cM abh) {
        if (abh == null) {
            E.g(y.mW, "RecentFolderObserver initialized with null controller!", new Object[0]);
        }
        (this.aBH = abh).k(this);
        return this.aBH.vR();
    }
    
    public final void um() {
        if (this.aBH == null) {
            return;
        }
        this.aBH.l(this);
    }
}
