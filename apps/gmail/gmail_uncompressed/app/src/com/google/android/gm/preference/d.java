package com.google.android.gm.preference;

import java.lang.ref.*;
import android.os.*;
import android.content.*;
import android.app.*;

final class d implements DialogInterface$OnClickListener
{
    final /* synthetic */ c bbu;
    
    d(final c bbu) {
        this.bbu = bbu;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.bbu.m(this.bbu.Tz, n == -2);
    }
}
