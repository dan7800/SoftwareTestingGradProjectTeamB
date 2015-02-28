package com.google.android.gm.preference;

import android.accounts.*;
import android.content.*;

final class h implements DialogInterface$OnClickListener
{
    final /* synthetic */ String bby;
    final /* synthetic */ g bbz;
    
    h(final g bbz, final String bby) {
        this.bbz = bbz;
        this.bby = bby;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        ContentResolver.setSyncAutomatically(new Account(this.bby, "com.google"), "gmail-ls", true);
    }
}
