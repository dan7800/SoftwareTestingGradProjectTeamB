package com.android.mail.compose;

import android.os.*;
import android.app.*;
import android.content.*;

public final class r extends DialogFragment
{
    public static r bw(final String s) {
        final r r = new r();
        final Bundle arguments = new Bundle(1);
        arguments.putString("message", s);
        r.setArguments(arguments);
        return r;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage((CharSequence)this.getArguments().getString("message")).setPositiveButton(2131296555, (DialogInterface$OnClickListener)new s(this)).create();
    }
}
