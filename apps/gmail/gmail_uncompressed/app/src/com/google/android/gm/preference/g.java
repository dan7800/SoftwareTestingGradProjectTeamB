package com.google.android.gm.preference;

import android.os.*;
import android.app.*;
import android.content.*;

public final class g extends DialogFragment
{
    public static g dN(final String s) {
        final g g = new g();
        final Bundle arguments = new Bundle(1);
        arguments.putString("accountName", s);
        g.setArguments(arguments);
        return g;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final String string = this.getArguments().getString("accountName");
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage((CharSequence)this.getString(2131297173, new Object[] { string })).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null).setPositiveButton(2131296555, (DialogInterface$OnClickListener)new h(this, string)).create();
    }
}
