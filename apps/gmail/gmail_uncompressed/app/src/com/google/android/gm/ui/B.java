package com.google.android.gm.ui;

import android.view.*;

final class b implements View$OnClickListener
{
    final /* synthetic */ a bpv;
    
    b(final a bpv) {
        this.bpv = bpv;
    }
    
    public final void onClick(final View view) {
        this.bpv.dismiss();
    }
}
