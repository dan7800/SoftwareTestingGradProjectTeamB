package com.google.android.gms.b;

import android.widget.*;
import android.util.*;
import android.text.*;
import com.google.android.gms.people.*;
import java.util.concurrent.*;
import com.google.android.gms.people.model.*;
import com.google.android.gms.common.api.*;
import android.content.*;
import android.accounts.*;
import java.util.*;
import com.android.ex.chips.*;
import android.text.util.*;

public final class e extends Filter
{
    final /* synthetic */ d bBF;
    
    public e(final d bbf) {
        this.bBF = bbf;
    }
    
    protected final Filter$FilterResults performFiltering(final CharSequence charSequence) {
        if (Log.isLoggable("GmsRecipientAdapter", 3)) {
            Log.d("GmsRecipientAdapter", "start filtering. constraint: " + (Object)charSequence + ", thread:" + Thread.currentThread());
        }
        final Filter$FilterResults filter$FilterResults = new Filter$FilterResults();
        if (!this.bBF.bbm.isConnected() || TextUtils.isEmpty(charSequence)) {
            this.bBF.mp();
            return filter$FilterResults;
        }
        final com.google.android.gms.people.d d = q.cgM.a(this.bBF.bbm, charSequence.toString(), new c().gy(this.bBF.mr().name).UK().UL()).a(TimeUnit.SECONDS);
        final Status jk = d.Jk();
        if (jk.getStatusCode() == 15) {
            Log.i("GmsRecipientAdapter", "Autocomplete query timed out.");
        }
        final a sb = d.Sb();
        ArrayList list;
        HashSet<String> set;
        try {
            if (Log.isLoggable("GmsRecipientAdapter", 3)) {
                Log.d("GmsRecipientAdapter", "Autocomplete list loaded: status=" + jk + " list=" + sb);
            }
            if (!jk.Kk() || sb == null) {
                this.bBF.mp();
                return filter$FilterResults;
            }
            list = new ArrayList<g>();
            set = new HashSet<String>();
            final com.android.ex.chips.q mm = this.bBF.mm();
            for (final b b : sb) {
                final String rv = b.RV();
                if (!set.contains(rv)) {
                    set.add(rv);
                    final g g = new g(b);
                    list.add(g);
                    mm.b(g, this.bBF);
                }
            }
        }
        finally {
            if (sb != null) {
                sb.close();
            }
        }
        filter$FilterResults.values = new f(list, set, this.bBF.b(set));
        filter$FilterResults.count = list.size();
        if (sb != null) {
            sb.close();
        }
        return filter$FilterResults;
    }
    
    protected final void publishResults(final CharSequence charSequence, final Filter$FilterResults filter$FilterResults) {
        this.bBF.aci = charSequence;
        this.bBF.mp();
        if (filter$FilterResults.values != null) {
            final f f = (f)filter$FilterResults.values;
            this.bBF.bBE = f.acn;
            this.bBF.ace = f.acq;
            final d bbf = this.bBF;
            final int size = f.acn.size();
            int size2;
            if (f.acr == null) {
                size2 = 0;
            }
            else {
                size2 = f.acr.size();
            }
            bbf.D(size, size2);
            this.bBF.h(f.acn);
            if (f.acr != null) {
                this.bBF.a(charSequence, f.acr, this.bBF.aca - f.acq.size());
            }
            return;
        }
        this.bBF.h((List<ae>)Collections.emptyList());
    }
}
