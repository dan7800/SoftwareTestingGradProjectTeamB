package com.android.mail.browse;

import android.content.*;
import com.android.mail.ui.*;

final class l implements DialogInterface$OnClickListener
{
    final /* synthetic */ k alq;
    
    l(final k alq) {
        this.alq = alq;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        final DialogInterface$OnClickListener wy = ((as)this.alq.getActivity()).ya().wy();
        if (wy != null) {
            wy.onClick(dialogInterface, n);
        }
    }
}
