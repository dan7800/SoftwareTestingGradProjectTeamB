package com.android.ex.chips;

import android.text.*;
import android.database.*;
import android.widget.*;
import android.accounts.*;
import android.content.*;
import android.net.*;
import android.util.*;
import android.content.pm.*;
import java.util.*;
import android.view.*;
import android.graphics.drawable.*;

public final class e extends Filter
{
    private int aaL;
    final /* synthetic */ a acm;
    private final g acs;
    
    public e(final a acm, final g acs) {
        this.acm = acm;
        this.acs = acs;
    }
    
    private int mx() {
        synchronized (this) {
            return this.aaL;
        }
    }
    
    public final void bp(final int aaL) {
        synchronized (this) {
            this.aaL = aaL;
        }
    }
    
    protected final Filter$FilterResults performFiltering(final CharSequence charSequence) {
        Cursor a = null;
        final Filter$FilterResults filter$FilterResults = new Filter$FilterResults();
        filter$FilterResults.values = null;
        filter$FilterResults.count = 0;
        if (!TextUtils.isEmpty(charSequence)) {
            final ArrayList<i> values = new ArrayList<i>();
            try {
                a = com.android.ex.chips.a.a(this.acm, charSequence, this.mx(), Long.valueOf(this.acs.act));
                if (a != null) {
                    while (a.moveToNext()) {
                        values.add(new i(a, this.acs.act));
                    }
                }
            }
            finally {
                if (a != null) {
                    a.close();
                }
            }
            if (a != null) {
                a.close();
            }
            if (!values.isEmpty()) {
                filter$FilterResults.values = values;
                filter$FilterResults.count = values.size();
            }
        }
        return filter$FilterResults;
    }
    
    protected final void publishResults(final CharSequence charSequence, final Filter$FilterResults filter$FilterResults) {
        this.acm.ack.mw();
        if (TextUtils.equals(charSequence, this.acm.aci)) {
            if (filter$FilterResults.count > 0) {
                final Iterator<i> iterator = ((ArrayList)filter$FilterResults.values).iterator();
                while (iterator.hasNext()) {
                    this.acm.a(iterator.next(), this.acs.act == 0L);
                }
            }
            this.acm.ach--;
            if (this.acm.ach > 0) {
                this.acm.ack.mv();
            }
            if (filter$FilterResults.count > 0 || this.acm.ach == 0) {
                this.acm.mp();
            }
        }
        this.acm.h(this.acm.mo());
    }
}
