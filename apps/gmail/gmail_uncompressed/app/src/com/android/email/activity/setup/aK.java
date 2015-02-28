package com.android.email.activity.setup;

import android.os.*;
import android.content.*;
import android.app.*;

public final class ak extends DialogFragment
{
    public static ak t(final String s) {
        final ak ak = new ak();
        final Bundle arguments = new Bundle(1);
        arguments.putString("NoteDialogFragment.Note", s);
        ak.setArguments(arguments);
        return ak;
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        ((an)this.getActivity()).ia();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Activity activity = this.getActivity();
        final String string = this.getArguments().getString("NoteDialogFragment.Note");
        this.setCancelable(true);
        return (Dialog)new AlertDialog$Builder((Context)activity).setIconAttribute(16843605).setTitle(17039380).setMessage((CharSequence)string).setPositiveButton(17039370, (DialogInterface$OnClickListener)new am(this)).setNegativeButton((CharSequence)((Context)activity).getString(17039360), (DialogInterface$OnClickListener)new al(this)).create();
    }
}
