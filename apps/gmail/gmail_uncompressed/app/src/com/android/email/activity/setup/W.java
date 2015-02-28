package com.android.email.activity.setup;

import com.android.mail.utils.*;
import com.android.email.*;
import android.content.res.*;
import android.content.*;
import android.os.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import android.net.*;
import android.app.*;
import android.text.*;

public final class w extends DialogFragment implements DialogInterface$OnClickListener
{
    public static w p(final String s) {
        final w w = new w();
        final Bundle arguments = new Bundle();
        arguments.putString("account_name", s);
        w.setArguments(arguments);
        return w;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.dismiss();
        final AccountSecurity accountSecurity = (AccountSecurity)this.getActivity();
        if (accountSecurity.Ml == null) {
            accountSecurity.finish();
            return;
        }
        switch (n) {
            default: {}
            case -2: {
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "User declines; repost notification", new Object[0]);
                }
                a(accountSecurity.Ml, SecurityPolicy.w((Context)accountSecurity));
                accountSecurity.finish();
            }
            case -1: {
                if (b.DEBUG) {
                    E.c("Email/AccountSecurity", "User accepts; advance to next step", new Object[0]);
                }
                accountSecurity.g(accountSecurity.Ml);
            }
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final String string = this.getArguments().getString("account_name");
        final Activity activity = this.getActivity();
        final Resources resources = ((Context)activity).getResources();
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity);
        alertDialog$Builder.setTitle(2131296894);
        alertDialog$Builder.setIconAttribute(16843605);
        alertDialog$Builder.setMessage((CharSequence)resources.getString(2131296895, new Object[] { string }));
        alertDialog$Builder.setPositiveButton(17039370, (DialogInterface$OnClickListener)this);
        alertDialog$Builder.setNegativeButton(17039360, (DialogInterface$OnClickListener)this);
        if (b.DEBUG) {
            E.c("Email/AccountSecurity", "Posting security needed dialog", new Object[0]);
        }
        return (Dialog)alertDialog$Builder.create();
    }
}
