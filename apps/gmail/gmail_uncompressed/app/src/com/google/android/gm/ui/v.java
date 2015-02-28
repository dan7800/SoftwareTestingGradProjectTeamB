package com.google.android.gm.ui;

import com.google.android.gms.people.accountswitcherview.*;
import com.google.android.gms.people.model.*;
import com.android.mail.utils.*;
import android.widget.*;

final class v implements t
{
    final /* synthetic */ com.google.android.gm.ui.t bqr;
    
    private v(final com.google.android.gm.ui.t bqr) {
        this.bqr = bqr;
    }
    
    @Override
    public final void a(final u u, final d d, final boolean b, final int n) {
        final TextView bqs = ((w)u).bqs;
        final int it = ((C)d).It();
        if (b || it <= 0) {
            bqs.setVisibility(8);
            return;
        }
        bqs.setVisibility(0);
        bqs.setText((CharSequence)ag.l(bqs.getContext(), it));
    }
}
