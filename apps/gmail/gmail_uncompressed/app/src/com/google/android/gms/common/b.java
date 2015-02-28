package com.google.android.gms.common;

import com.google.android.gms.common.internal.*;
import android.content.*;
import android.os.*;
import android.app.*;

public final class b extends DialogFragment
{
    private Dialog ai;
    private DialogInterface$OnCancelListener bBT;
    
    public b() {
        this.ai = null;
        this.bBT = null;
    }
    
    public static b a(final Dialog dialog, final DialogInterface$OnCancelListener bbt) {
        final b b = new b();
        final Dialog ai = G.f(dialog, "Cannot display null dialog");
        ai.setOnCancelListener((DialogInterface$OnCancelListener)null);
        ai.setOnDismissListener((DialogInterface$OnDismissListener)null);
        b.ai = ai;
        if (bbt != null) {
            b.bBT = bbt;
        }
        return b;
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        if (this.bBT != null) {
            this.bBT.onCancel(dialogInterface);
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        if (this.ai == null) {
            this.setShowsDialog(false);
        }
        return this.ai;
    }
    
    public final void show(final FragmentManager fragmentManager, final String s) {
        super.show(fragmentManager, s);
    }
}
