package com.android.mail.browse;

import android.content.*;

final class bc implements DialogInterface$OnClickListener
{
    final /* synthetic */ ba auF;
    
    bc(final ba auF) {
        this.auF = auF;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        dialogInterface.dismiss();
    }
}
