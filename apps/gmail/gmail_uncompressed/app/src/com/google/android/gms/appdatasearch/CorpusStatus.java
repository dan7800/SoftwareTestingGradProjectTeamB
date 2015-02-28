package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class CorpusStatus implements SafeParcelable
{
    public static final z CREATOR;
    final int btV;
    final boolean btY;
    final long btZ;
    final long bua;
    final long bub;
    final Bundle buc;
    final String bud;
    
    static {
        CREATOR = new z();
    }
    
    CorpusStatus() {
        this(2, false, 0L, 0L, 0L, null, null);
    }
    
    CorpusStatus(final int btV, final boolean btY, final long btZ, final long bua, final long bub, Bundle buc, final String bud) {
        this.btV = btV;
        this.btY = btY;
        this.btZ = btZ;
        this.bua = bua;
        this.bub = bub;
        if (buc == null) {
            buc = new Bundle();
        }
        this.buc = buc;
        this.bud = bud;
    }
    
    private Map<String, Integer> Jj() {
        final HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        for (final String s : this.buc.keySet()) {
            final int int1 = this.buc.getInt(s, -1);
            if (int1 != -1) {
                hashMap.put(s, int1);
            }
        }
        return hashMap;
    }
    
    public final boolean Jg() {
        return this.btY;
    }
    
    public final long Jh() {
        return this.btZ;
    }
    
    public final long Ji() {
        return this.bua;
    }
    
    public int describeContents() {
        final z creator = CorpusStatus.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof CorpusStatus;
        boolean b2 = false;
        if (b) {
            final CorpusStatus corpusStatus = (CorpusStatus)o;
            final boolean b3 = E.b(this.btY, corpusStatus.btY);
            b2 = false;
            if (b3) {
                final boolean b4 = E.b(this.btZ, corpusStatus.btZ);
                b2 = false;
                if (b4) {
                    final boolean b5 = E.b(this.bua, corpusStatus.bua);
                    b2 = false;
                    if (b5) {
                        final boolean b6 = E.b(this.bub, corpusStatus.bub);
                        b2 = false;
                        if (b6) {
                            final boolean b7 = E.b(this.Jj(), corpusStatus.Jj());
                            b2 = false;
                            if (b7) {
                                b2 = true;
                            }
                        }
                    }
                }
            }
        }
        return b2;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btY, this.btZ, this.bua, this.bub, this.Jj() });
    }
    
    @Override
    public String toString() {
        return "CorpusStatus{found=" + this.btY + ", lastIndexedSeqno=" + this.btZ + ", lastCommittedSeqno=" + this.bua + ", committedNumDocuments=" + this.bub + ", counters=" + this.buc + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final z creator = CorpusStatus.CREATOR;
        z.a(this, parcel);
    }
}
