package com.google.android.gm.preference;

import java.lang.ref.*;
import android.os.*;
import android.app.*;
import android.content.*;

public final class c extends DialogFragment
{
    private String Tz;
    private WeakReference<e> aIV;
    
    public c() {
        this.aIV = null;
    }
    
    public static c dM(final String s) {
        final c c = new c();
        final Bundle arguments = new Bundle(1);
        arguments.putString("accountName", s);
        c.setArguments(arguments);
        return c;
    }
    
    private void m(final String s, final boolean b) {
        final Activity activity = this.getActivity();
        new i((Context)activity, s).aW(b);
        A.O((Context)activity, s);
        if (this.aIV != null) {
            final e e = this.aIV.get();
            if (e != null) {
                e.DH();
            }
        }
    }
    
    public final void a(final e e) {
        this.aIV = new WeakReference<e>(e);
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        this.m(this.Tz, true);
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        this.Tz = this.getArguments().getString("accountName");
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131297080).setMessage(2131297081).setPositiveButton(2131297082, (DialogInterface$OnClickListener)new d(this)).create();
    }
}
