package com.android.email.activity.setup;

import android.os.*;
import android.app.*;
import android.content.*;

public final class B extends DialogFragment
{
    public static B hJ() {
        return new B();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final AccountServerSettingsActivity accountServerSettingsActivity = (AccountServerSettingsActivity)this.getActivity();
        return (Dialog)new AlertDialog$Builder((Context)accountServerSettingsActivity).setIconAttribute(16843605).setTitle(17039380).setMessage(2131296913).setPositiveButton(17039370, (DialogInterface$OnClickListener)new C(this, accountServerSettingsActivity)).setNegativeButton((CharSequence)accountServerSettingsActivity.getString(17039360), (DialogInterface$OnClickListener)null).create();
    }
}
