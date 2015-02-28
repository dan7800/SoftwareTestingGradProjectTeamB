package com.android.mail.providers;

import android.database.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;

public abstract class e extends DataSetObserver
{
    private static final String mW;
    private O ayK;
    
    static {
        mW = D.AU();
    }
    
    public final Account[] b(final O ayK) {
        if (ayK == null) {
            E.g(e.mW, "AllAccountObserver initialized with null controller!", new Object[0]);
        }
        (this.ayK = ayK).g(this);
        return this.ayK.uo();
    }
    
    public final void onChanged() {
        if (this.ayK == null) {
            return;
        }
        this.ayK.uo();
        this.un();
    }
    
    public final void um() {
        if (this.ayK == null) {
            return;
        }
        this.ayK.h(this);
    }
    
    public abstract void un();
    
    public final Account[] uo() {
        if (this.ayK == null) {
            return null;
        }
        return this.ayK.uo();
    }
}
