package com.google.android.gm.drive;

import android.os.*;
import com.android.mail.a.*;
import com.google.android.gm.*;
import android.content.*;
import android.app.*;

public final class e extends DialogFragment implements DialogInterface$OnClickListener
{
    private boolean awy;
    
    public static e o(final int n, final boolean b) {
        final e e = new e();
        final Bundle arguments = new Bundle(2);
        arguments.putInt("numFiles", n);
        arguments.putBoolean("showToast", b);
        e.setArguments(arguments);
        a.oq().a("acl_fixer", "none_fixable_dialog", "shown", 0L);
        return e;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            ((ComposeActivityGmail)this.getActivity()).bP(this.awy);
            a.oq().a("acl_fixer", "none_fixable_dialog", "confirm", 0L);
        }
        else if (n == -2) {
            a.oq().a("acl_fixer", "none_fixable_dialog", "cancel", 0L);
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Bundle arguments = this.getArguments();
        final int int1 = arguments.getInt("numFiles");
        this.awy = arguments.getBoolean("showToast");
        final Activity activity = this.getActivity();
        return (Dialog)new AlertDialog$Builder((Context)activity).setMessage((CharSequence)((Context)activity).getResources().getQuantityString(2131820577, int1)).setPositiveButton(2131296554, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).create();
    }
}
