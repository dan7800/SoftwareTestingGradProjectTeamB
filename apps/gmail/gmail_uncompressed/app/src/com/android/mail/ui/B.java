package com.android.mail.ui;

import android.database.*;

final class b extends DataSetObserver
{
    final /* synthetic */ a aEa;
    
    b(final a aEa) {
        this.aEa = aEa;
    }
    
    public final void onChanged() {
        super.onChanged();
        if (this.aEa.aDh != null) {
            this.aEa.aDh.pj();
        }
    }
}
