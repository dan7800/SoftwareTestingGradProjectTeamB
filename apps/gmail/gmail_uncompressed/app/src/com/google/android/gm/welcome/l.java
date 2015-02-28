package com.google.android.gm.welcome;

import android.widget.*;
import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import android.provider.*;
import android.database.*;
import com.google.common.collect.*;
import com.google.android.gm.c.*;
import java.util.*;
import com.google.android.gm.*;
import com.android.mail.utils.*;
import android.app.*;
import android.view.*;
import android.content.*;

final class l extends DataSetObserver
{
    final /* synthetic */ SetupAddressesFragment bsi;
    
    private l(final SetupAddressesFragment bsi) {
        this.bsi = bsi;
    }
    
    public final void onChanged() {
        int i = 0;
        super.onChanged();
        E.c("WelcomeTour", "List of accounts changed. Refreshing list.", new Object[0]);
        if (this.bsi.bsd == null) {
            return;
        }
        final Intent intent = new Intent();
        intent.putParcelableArrayListExtra("pending-changes", (ArrayList)this.bsi.bsd.IO());
        this.bsi.getActivity().setResult(0, intent);
        this.bsi.bse.removeAllViews();
        int count;
        for (count = this.bsi.bsd.getCount(); i < count; ++i) {
            this.bsi.bse.addView(this.bsi.bsd.getView(i, null, (ViewGroup)this.bsi.bse));
        }
        final TextView d = this.bsi.bsf;
        int text;
        if (count > 0) {
            text = 2131297214;
        }
        else {
            text = 2131297213;
        }
        d.setText(text);
    }
}
