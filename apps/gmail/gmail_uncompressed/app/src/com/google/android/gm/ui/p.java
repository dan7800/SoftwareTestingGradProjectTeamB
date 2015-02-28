package com.google.android.gm.ui;

import com.google.android.gms.people.accountswitcherview.*;
import com.google.android.gms.people.model.*;
import android.text.*;
import android.graphics.*;
import com.android.mail.utils.*;
import android.widget.*;

final class p implements t
{
    @Override
    public final void a(final u u, final d d, final boolean b, final int n) {
        int n2 = 1;
        final q q = (q)u;
        final C c = (C)d;
        final TextView bqn = q.bqn;
        final int it = c.It();
        int n3;
        if (u.chV != null) {
            u.chV.setTextColor(n);
            if (TextUtils.isEmpty((CharSequence)d.getDisplayName())) {
                u.chV.setText((CharSequence)d.FP());
                n3 = 0;
            }
            else {
                u.chV.setText((CharSequence)d.getDisplayName());
                n3 = n2;
            }
            final TextView chV = u.chV;
            if (!b) {
                n2 = 0;
            }
            chV.setTypeface((Typeface)null, n2);
        }
        else {
            n3 = n2;
        }
        if (u.chU != null) {
            u.chU.setTextColor(n);
            if (n3 != 0) {
                u.chU.setVisibility(0);
                u.chU.setText((CharSequence)d.FP());
            }
            else {
                u.chU.setVisibility(8);
            }
        }
        if (b || it <= 0) {
            bqn.setVisibility(8);
        }
        else {
            bqn.setVisibility(0);
            bqn.setText((CharSequence)ag.l(bqn.getContext(), it));
        }
        if (q.bqm != null) {
            final ImageView bqm = q.bqm;
            int visibility = 0;
            if (!b) {
                visibility = 8;
            }
            bqm.setVisibility(visibility);
        }
    }
}
