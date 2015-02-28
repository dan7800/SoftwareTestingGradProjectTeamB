package com.google.android.gm.welcome;

import android.os.*;
import android.content.*;
import android.app.*;

public final class b extends DialogFragment implements DialogInterface$OnClickListener
{
    public static DialogFragment V(final int n, final int n2) {
        final Bundle arguments = new Bundle(2);
        arguments.putInt("title", n);
        arguments.putInt("message", n2);
        final b b = new b();
        b.setArguments(arguments);
        return b;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.dismiss();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Bundle arguments = this.getArguments();
        final Activity activity = this.getActivity();
        return (Dialog)new AlertDialog$Builder((Context)activity).setPositiveButton(17039370, (DialogInterface$OnClickListener)this).setTitle(arguments.getInt("title")).setMessage((CharSequence)((Context)activity).getString(2131297218, new Object[] { ((Context)activity).getString(arguments.getInt("message")) })).create();
    }
}
