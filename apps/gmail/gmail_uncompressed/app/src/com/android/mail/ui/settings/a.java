package com.android.mail.ui.settings;

import com.android.mail.i.*;
import android.content.*;
import android.widget.*;
import android.os.*;
import android.app.*;

public final class a extends DialogFragment implements DialogInterface$OnClickListener
{
    public static a AN() {
        return new a();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            g.ao((Context)this.getActivity()).tH();
            Toast.makeText((Context)this.getActivity(), 2131296620, 0).show();
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131296618).setMessage(2131296619).setIconAttribute(16843605).setPositiveButton(2131296557, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).create();
    }
}
