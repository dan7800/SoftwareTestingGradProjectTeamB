package com.google.android.gm.vacation;

import android.os.*;
import android.app.*;
import android.content.*;

public final class i extends DialogFragment implements DialogInterface$OnClickListener
{
    private String[] brM;
    private j brN;
    
    public static i fw(final String s) {
        final i i = new i();
        final Bundle arguments = new Bundle(1);
        arguments.putString("endDate", s);
        i.setArguments(arguments);
        return i;
    }
    
    public final void onAttach(final Activity activity) {
        super.onAttach(activity);
        this.brN = (j)activity;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        switch (n) {
            default: {}
            case 0: {
                this.brN.IH();
            }
            case 1: {
                this.brN.II();
            }
            case 2: {
                this.brN.IJ();
            }
        }
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Activity activity = this.getActivity();
        this.brM = new String[] { this.getArguments().getString("endDate"), ((Context)activity).getString(2131296689), ((Context)activity).getString(2131296690) };
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131296688).setItems((CharSequence[])this.brM, (DialogInterface$OnClickListener)this).create();
    }
    
    public final void onDetach() {
        super.onDetach();
        this.brN = null;
    }
}
