package com.google.android.gm.vacation;

import com.android.mail.a.*;
import android.os.*;
import android.app.*;
import android.content.*;

public final class h extends DialogFragment implements DialogInterface$OnClickListener
{
    public static h IN() {
        return new h();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            ((VacationResponderActivity)this.getActivity()).IM();
            return;
        }
        this.dismiss();
        a.oq().a("vacation_responder", "dont_discard", null, 0L);
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setPositiveButton(2131296555, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).setMessage((CharSequence)this.getResources().getString(2131296691)).create();
    }
}
