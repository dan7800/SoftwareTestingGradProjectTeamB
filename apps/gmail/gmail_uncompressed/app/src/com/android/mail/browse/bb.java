package com.android.mail.browse;

import android.content.*;

final class bb implements DialogInterface$OnClickListener
{
    final /* synthetic */ ba auF;
    
    bb(final ba auF) {
        this.auF = auF;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        final Intent intent = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
        intent.addFlags(524288);
        this.auF.startActivity(intent);
        dialogInterface.dismiss();
    }
}
