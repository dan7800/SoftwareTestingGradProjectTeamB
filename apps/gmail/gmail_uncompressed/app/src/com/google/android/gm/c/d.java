package com.google.android.gm.c;

import android.os.*;
import com.google.android.gms.common.*;
import android.content.*;
import android.app.*;

public final class d extends DialogFragment
{
    private int bqX;
    
    public static d T(final int n, final int n2) {
        final d d = new d();
        final Bundle arguments = new Bundle(2);
        arguments.putInt("error-code", n);
        arguments.putInt("request-code", n2);
        d.setArguments(arguments);
        return d;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final int int1 = this.getArguments().getInt("error-code");
        this.bqX = this.getArguments().getInt("request-code");
        return f.a(int1, this.getActivity(), this.bqX);
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        final Activity activity = this.getActivity();
        if (activity instanceof e) {
            ((e)activity).dy(this.bqX);
        }
    }
}
