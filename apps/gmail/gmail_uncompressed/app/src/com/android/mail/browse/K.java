package com.android.mail.browse;

import android.os.*;
import android.app.*;
import android.content.*;

public final class k extends DialogFragment
{
    private final DialogInterface$OnClickListener alp;
    
    public k() {
        this.alp = (DialogInterface$OnClickListener)new l(this);
    }
    
    public static k q(final CharSequence charSequence) {
        final k k = new k();
        final Bundle arguments = new Bundle();
        arguments.putCharSequence("message", charSequence);
        k.setArguments(arguments);
        return k;
    }
    
    public final void b(final FragmentManager fragmentManager) {
        this.show(fragmentManager, "confirm-dialog");
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this.getActivity());
        alertDialog$Builder.setMessage(this.getArguments().getCharSequence("message")).setPositiveButton(2131296555, this.alp).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null);
        return (Dialog)alertDialog$Builder.create();
    }
}
