package com.google.android.gm.ui;

import com.google.android.gms.people.model.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import android.support.v4.widget.*;
import com.android.mail.i.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import com.android.mail.ui.*;
import java.util.*;
import com.google.android.gms.people.accountswitcherview.*;
import com.android.mail.providers.*;

final class y implements R
{
    @Override
    public final void a(final S s, final List<d> list) {
        final z z = (z)s;
        final Context context = s.cjp.getContext();
        final int size = list.size();
        int it = 0;
        int n = 0;
        switch (size) {
            default: {
                E.g(GmailDrawerFragment.mW, "Unexpected number of recents received: %s", size);
                it = 0;
                n = 0;
                break;
            }
            case 0: {
                it = 0;
                n = 0;
                break;
            }
            case 1: {
                n = list.get(0).It();
                it = 0;
                break;
            }
            case 2: {
                n = list.get(0).It();
                it = list.get(1).It();
                break;
            }
        }
        if (n > 0) {
            z.bqt.setText((CharSequence)ag.l(context, n));
            z.bqt.setVisibility(0);
        }
        else {
            z.bqt.setVisibility(8);
        }
        if (it > 0) {
            z.bqu.setText((CharSequence)ag.l(context, it));
            z.bqu.setVisibility(0);
            return;
        }
        z.bqu.setVisibility(8);
    }
}
