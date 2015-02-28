package com.google.android.gms.b;

import android.content.*;
import android.accounts.*;
import android.util.*;
import com.google.android.gms.people.*;
import java.util.concurrent.*;
import com.android.ex.chips.*;
import android.text.util.*;
import java.util.*;
import com.google.android.gms.common.api.*;
import android.widget.*;

public final class d extends a
{
    private Set<String> ace;
    private List<ae> bBE;
    private final n bbm;
    
    public d(final Context context, final Account account, final n bbm, final b b) {
        super(context);
        this.a(account);
        this.bbm = bbm;
        this.a(b);
    }
    
    @Override
    protected final void a(final i i, final boolean b) {
        if (this.bBE.size() >= this.aca || this.ace.contains(i.acz)) {
            return;
        }
        this.ace.add(i.acz);
        final ae a = ae.a(i.acv, i.acG, i.acz, i.acA, i.acB, i.acC, i.acD, i.acE, i.acF, i.acH);
        this.bBE.add(a);
        this.mm().b(a, this);
    }
    
    @Override
    public final void a(final ArrayList<String> list, final H h) {
        final int min = Math.min(50, list.size());
        final HashSet<String> set = new HashSet<String>();
        for (int i = 0; i < min; ++i) {
            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)list.get(i).toLowerCase());
            String address;
            if (tokenize.length > 0) {
                address = tokenize[0].getAddress();
            }
            else {
                address = list.get(i);
            }
            set.add(address);
        }
        if (Log.isLoggable("GmsRecipientAdapter", 3)) {
            Log.d("GmsRecipientAdapter", "Doing reverse lookup for " + set.toString());
        }
        final HashMap<String, com.google.android.gms.b.g> hashMap = new HashMap<String, com.google.android.gms.b.g>();
        final Account mr = this.mr();
        final com.google.android.gms.people.b ul = new c().gy(mr.name).UJ().UK().UL();
        final Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            final com.google.android.gms.people.d d = com.google.android.gms.people.q.cgM.a(this.bbm, iterator.next(), ul).a(TimeUnit.SECONDS);
            final Status jk = d.Jk();
            final com.google.android.gms.people.model.a sb = d.Sb();
            if (Log.isLoggable("GmsRecipientAdapter", 3)) {
                Log.d("GmsRecipientAdapter", "Autocomplete list loaded: status=" + jk + " list=" + sb);
            }
            if (jk.getStatusCode() == 15) {
                Log.i("GmsRecipientAdapter", "Autocomplete query timed out.");
            }
            if (jk.Kk() && sb != null && sb.getCount() > 0) {
                final com.google.android.gms.people.model.b b = sb.get(0);
                hashMap.put(b.RV(), new com.google.android.gms.b.g(b));
            }
            if (sb != null) {
                sb.close();
            }
        }
        h.b((Map<String, ae>)hashMap);
        final HashSet<String> set2 = new HashSet<String>();
        F.a(this.getContext(), (Map<String, ae>)hashMap, set, mr, set2, h);
        F.a(set2, h);
    }
    
    @Override
    public final Filter getFilter() {
        return new e(this);
    }
    
    @Override
    public final boolean mn() {
        return true;
    }
    
    @Override
    protected final List<ae> mo() {
        return this.bBE;
    }
}
