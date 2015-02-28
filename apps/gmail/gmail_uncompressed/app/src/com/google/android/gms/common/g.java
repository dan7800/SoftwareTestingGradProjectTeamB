package com.google.android.gms.common;

import android.app.*;
import com.google.android.gms.common.internal.*;
import android.support.v4.app.*;
import android.content.*;

public final class g extends h
{
    private Dialog ai;
    private DialogInterface$OnCancelListener bBT;
    
    public g() {
        this.ai = null;
        this.bBT = null;
    }
    
    public static g b(final Dialog dialog, final DialogInterface$OnCancelListener bbt) {
        final g g = new g();
        final Dialog ai = G.f(dialog, "Cannot display null dialog");
        ai.setOnCancelListener((DialogInterface$OnCancelListener)null);
        ai.setOnDismissListener((DialogInterface$OnDismissListener)null);
        g.ai = ai;
        if (bbt != null) {
            g.bBT = bbt;
        }
        return g;
    }
    
    @Override
    public final void a(final p p2, final String s) {
        super.a(p2, s);
    }
    
    @Override
    public final Dialog c() {
        if (this.ai == null) {
            this.b();
        }
        return this.ai;
    }
    
    @Override
    public final void onCancel(final DialogInterface dialogInterface) {
        if (this.bBT != null) {
            this.bBT.onCancel(dialogInterface);
        }
    }
}
