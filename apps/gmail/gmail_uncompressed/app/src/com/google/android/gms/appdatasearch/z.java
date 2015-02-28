package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class z implements Parcelable$Creator<CorpusStatus>
{
    static void a(final CorpusStatus corpusStatus, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, corpusStatus.btY);
        b.d(parcel, 1000, corpusStatus.btV);
        b.a(parcel, 2, corpusStatus.btZ);
        b.a(parcel, 3, corpusStatus.bua);
        b.a(parcel, 4, corpusStatus.bub);
        b.a(parcel, 5, corpusStatus.buc);
        b.a(parcel, 6, corpusStatus.bud, false);
        b.D(parcel, ae);
    }
    
    public static CorpusStatus h(final Parcel parcel) {
        String p = null;
        boolean c = false;
        long i = 0L;
        final int ad = a.ad(parcel);
        Bundle r = null;
        long j = i;
        long k = i;
        int g = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 1000: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    k = a.i(parcel, int1);
                    continue;
                }
                case 3: {
                    j = a.i(parcel, int1);
                    continue;
                }
                case 4: {
                    i = a.i(parcel, int1);
                    continue;
                }
                case 5: {
                    r = a.r(parcel, int1);
                    continue;
                }
                case 6: {
                    p = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new CorpusStatus(g, c, k, j, i, r, p);
    }
}
