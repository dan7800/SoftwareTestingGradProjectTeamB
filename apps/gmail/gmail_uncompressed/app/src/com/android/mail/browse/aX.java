package com.android.mail.browse;

import android.database.*;

final class ax extends DataSetObserver
{
    final /* synthetic */ aw arN;
    
    ax(final aw arN) {
        this.arN = arN;
    }
    
    public final void onChanged() {
        this.arN.notifyDataSetChanged();
    }
}
