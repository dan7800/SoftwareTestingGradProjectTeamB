package com.android.mail.ui;

import java.lang.ref.*;
import android.os.*;
import com.android.mail.providers.*;
import android.app.*;
import android.content.*;

final class bv implements DialogInterface$OnClickListener
{
    final /* synthetic */ bu aIY;
    
    bv(final bu aiy) {
        this.aIY = aiy;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (this.aIY.aIV != null) {
            final bw bw = (bw)this.aIY.aIV.get();
            if (bw != null) {
                bw.vZ();
            }
        }
    }
}
