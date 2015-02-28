package com.google.android.gm.photo;

import android.os.*;
import android.app.*;
import com.google.android.gms.common.*;
import android.content.*;
import com.android.mail.g.*;

public final class c extends DialogFragment
{
    public final Dialog onCreateDialog(final Bundle bundle) {
        return f.a(this.getArguments().getInt("dialog-error"), this.getActivity(), 9000);
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        ((b)((e)this.getActivity()).nG()).DE();
    }
}
