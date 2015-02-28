package com.android.mail.providers;

import android.database.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;

public abstract class o extends DataSetObserver
{
    private static final String mW;
    private by aAM;
    
    static {
        mW = D.AU();
    }
    
    public final Folder a(final by aam) {
        if (aam == null) {
            E.g(o.mW, "FolderObserver initialized with null controller!", new Object[0]);
        }
        (this.aAM = aam).o(this);
        return this.aAM.vT();
    }
    
    public abstract void f(final Folder p0);
    
    public final void onChanged() {
        if (this.aAM == null) {
            return;
        }
        this.f(this.aAM.vT());
    }
    
    public final void um() {
        if (this.aAM == null) {
            return;
        }
        this.aAM.p(this);
    }
}
