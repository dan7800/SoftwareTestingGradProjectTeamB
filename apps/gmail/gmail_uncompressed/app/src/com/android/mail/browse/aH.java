package com.android.mail.browse;

import android.os.*;
import android.app.*;
import android.content.*;

public final class ah extends DialogFragment implements DialogInterface$OnClickListener
{
    private String YL;
    
    public static ah bi(final String s) {
        final ah ah = new ah();
        final Bundle arguments = new Bundle(1);
        arguments.putString("subject", s);
        ah.setArguments(arguments);
        return ah;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            ((ClipboardManager)this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence)null, (CharSequence)this.YL));
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        this.YL = this.getArguments().getString("subject");
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage((CharSequence)this.YL).setPositiveButton(2131296484, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).create();
    }
}
