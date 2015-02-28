package com.android.email.activity.setup;

import android.content.*;

final class am implements DialogInterface$OnClickListener
{
    final /* synthetic */ ak OG;
    
    am(final ak og) {
        this.OG = og;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        ((an)this.OG.getActivity()).hZ();
        this.OG.dismiss();
    }
}
