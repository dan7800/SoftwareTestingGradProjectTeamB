package com.android.mail.ui;

import android.accounts.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import android.content.*;
import android.content.res.*;

public final class dp extends DialogFragment
{
    private static String aNL;
    private ds aNM;
    
    public static dp b(final Account account, final String s) {
        final dp dp = new dp();
        final Bundle arguments = new Bundle(3);
        arguments.putParcelable("account", (Parcelable)account);
        arguments.putString("syncAuthority", s);
        dp.setArguments(arguments);
        return dp;
    }
    
    public static void cu(final String anl) {
        dp.aNL = anl;
    }
    
    public final void a(final ds anm) {
        this.aNM = anm;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Account account = (Account)this.getArguments().getParcelable("account");
        final String string = this.getArguments().getString("syncAuthority");
        final Resources resources = this.getResources();
        final boolean b = ag.b(resources);
        final Object[] array = { null };
        int n;
        if (b) {
            n = 2131296666;
        }
        else {
            n = 2131296665;
        }
        array[0] = resources.getString(n);
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage((CharSequence)resources.getString(2131296664, array)).setTitle(2131296663).setPositiveButton(2131296667, (DialogInterface$OnClickListener)new dr(this, string, account)).setNegativeButton(2131296556, (DialogInterface$OnClickListener)new dq(this)).create();
    }
}
