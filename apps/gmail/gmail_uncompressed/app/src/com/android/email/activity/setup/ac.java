package com.android.email.activity.setup;

import android.content.*;

final class aC implements DialogInterface$OnClickListener
{
    final /* synthetic */ az Ph;
    
    aC(final az ph) {
        this.Ph = ph;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        dialogInterface.cancel();
    }
}
