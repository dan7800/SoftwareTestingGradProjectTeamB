package com.android.mail.browse;

import android.os.*;
import android.app.*;
import android.content.*;

public final class ba extends DialogFragment
{
    public static ba rZ() {
        return new ba();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131296599).setMessage(2131296600).setPositiveButton(2131296555, (DialogInterface$OnClickListener)new bc(this)).setNegativeButton(2131296601, (DialogInterface$OnClickListener)new bb(this)).create();
    }
}
