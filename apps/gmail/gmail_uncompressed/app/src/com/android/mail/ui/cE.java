package com.android.mail.ui;

import android.os.*;
import android.app.*;
import java.util.*;
import android.content.*;

public final class ce extends DialogFragment
{
    public final Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage((CharSequence)this.getString(2131296706, new Object[] { Calendar.getInstance().get(1) })).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null).create();
    }
}
