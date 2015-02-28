package com.android.email.activity.setup;

import android.os.*;
import android.content.*;
import android.app.*;

public final class v extends DialogFragment implements DialogInterface$OnClickListener
{
    public static v a(final String s, final boolean b) {
        final v v = new v();
        final Bundle arguments = new Bundle();
        arguments.putString("account_name", s);
        arguments.putBoolean("expired", b);
        v.setArguments(arguments);
        return v;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.dismiss();
        final AccountSecurity accountSecurity = (AccountSecurity)this.getActivity();
        if (n == -1) {
            accountSecurity.startActivity(new Intent("android.app.action.SET_NEW_PASSWORD"));
        }
        accountSecurity.finish();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final String string = this.getArguments().getString("account_name");
        final boolean boolean1 = this.getArguments().getBoolean("expired");
        int title;
        if (boolean1) {
            title = 2131296911;
        }
        else {
            title = 2131296909;
        }
        int n;
        if (boolean1) {
            n = 2131296912;
        }
        else {
            n = 2131296910;
        }
        final Activity activity = this.getActivity();
        return (Dialog)new AlertDialog$Builder((Context)activity).setTitle(title).setIconAttribute(16843605).setMessage((CharSequence)((Context)activity).getResources().getString(n, new Object[] { string })).setPositiveButton(17039370, (DialogInterface$OnClickListener)this).setNegativeButton(17039360, (DialogInterface$OnClickListener)this).create();
    }
}
