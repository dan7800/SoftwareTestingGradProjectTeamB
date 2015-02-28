package com.android.mail.ui;

import android.accounts.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import android.content.*;
import android.content.res.*;

final class dq implements DialogInterface$OnClickListener
{
    final /* synthetic */ dp aNN;
    
    dq(final dp ann) {
        this.aNN = ann;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (this.aNN.aNM != null) {
            this.aNN.aNM.Ao();
        }
    }
}
