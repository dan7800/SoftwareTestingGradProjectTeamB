package com.android.email.activity.setup;

import android.net.*;
import android.content.*;

final class aN implements DialogInterface$OnClickListener
{
    final /* synthetic */ aK Pm;
    final /* synthetic */ Uri Po;
    
    aN(final aK pm, final Uri po) {
        this.Pm = pm;
        this.Po = po;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.Pm.getActivity().getContentResolver().delete(this.Po, (String)null, (String[])null);
    }
}
