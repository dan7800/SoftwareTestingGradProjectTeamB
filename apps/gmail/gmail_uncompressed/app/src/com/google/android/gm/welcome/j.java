package com.google.android.gm.welcome;

import android.content.*;

final class j implements DialogInterface$OnClickListener
{
    final /* synthetic */ SetupAddressesFragment bsi;
    
    j(final SetupAddressesFragment bsi) {
        this.bsi = bsi;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        dialogInterface.dismiss();
    }
}
