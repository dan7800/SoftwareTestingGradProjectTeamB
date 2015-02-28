package com.google.android.gm.preference;

import com.google.android.gm.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.app.*;

public final class l extends DialogFragment implements DialogInterface$OnClickListener, View$OnClickListener
{
    public static DialogFragment DI() {
        return new l();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.startActivity(new Intent("android.settings.SETTINGS"));
    }
    
    public final void onClick(final View view) {
        ay.bb((Context)this.getActivity());
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final View inflate = this.getActivity().getLayoutInflater().inflate(2130968726, (ViewGroup)null);
        inflate.findViewById(2131558865).setOnClickListener((View$OnClickListener)this);
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setView(inflate).setPositiveButton(2131297109, (DialogInterface$OnClickListener)this).setNegativeButton(17039360, (DialogInterface$OnClickListener)null).create();
    }
}
