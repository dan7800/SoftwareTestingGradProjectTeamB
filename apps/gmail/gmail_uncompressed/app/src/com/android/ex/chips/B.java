package com.android.ex.chips;

import android.text.*;
import android.text.util.*;
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

final class b extends Filter
{
    final /* synthetic */ a acm;
    
    private b(final a acm) {
        this.acm = acm;
    }
    
    public final CharSequence convertResultToString(final Object o) {
        final ae ae = (ae)o;
        final String displayName = ae.getDisplayName();
        final String mu = ae.mU();
        if (TextUtils.isEmpty((CharSequence)displayName) || TextUtils.equals((CharSequence)displayName, (CharSequence)mu)) {
            return mu;
        }
        return new Rfc822Token(displayName, mu, (String)null).toString();
    }
    
    protected final Filter$FilterResults performFiltering(final CharSequence charSequence) {
        final Filter$FilterResults filter$FilterResults = new Filter$FilterResults();
        if (TextUtils.isEmpty(charSequence)) {
            this.acm.mp();
            return filter$FilterResults;
        }
        while (true) {
            try {
                final Cursor a = com.android.ex.chips.a.a(this.acm, charSequence, this.acm.aca, null);
                if (a != null) {
                    LinkedHashMap<Long, List<ae>> linkedHashMap = null;
                    ArrayList<ae> list = null;
                    HashSet<String> set = null;
                    Label_0125: {
                        Cursor cursor;
                        try {
                            linkedHashMap = new LinkedHashMap<Long, List<ae>>();
                            list = new ArrayList<ae>();
                            set = new HashSet<String>();
                            while (a.moveToNext()) {
                                com.android.ex.chips.a.a(new i(a, null), linkedHashMap, list, set);
                            }
                            break Label_0125;
                        }
                        finally {
                            cursor = a;
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw;
                    }
                    final List a2 = this.acm.a(linkedHashMap, list);
                    filter$FilterResults.values = new c(a2, linkedHashMap, list, set, this.acm.b(set));
                    filter$FilterResults.count = a2.size();
                }
                if (a != null) {
                    a.close();
                }
                return filter$FilterResults;
            }
            finally {
                final Cursor cursor = null;
                continue;
            }
            break;
        }
    }
    
    protected final void publishResults(final CharSequence aci, final Filter$FilterResults filter$FilterResults) {
        this.acm.aci = aci;
        this.acm.mp();
        if (filter$FilterResults.values != null) {
            final c c = (c)filter$FilterResults.values;
            this.acm.acc = c.aco;
            this.acm.acd = c.acp;
            this.acm.ace = c.acq;
            final a acm = this.acm;
            final int size = c.acn.size();
            int size2;
            if (c.acr == null) {
                size2 = 0;
            }
            else {
                size2 = c.acr.size();
            }
            acm.D(size, size2);
            this.acm.h(c.acn);
            if (c.acr != null) {
                this.acm.a(aci, c.acr, this.acm.aca - c.acq.size());
            }
            return;
        }
        this.acm.h(Collections.emptyList());
    }
}
