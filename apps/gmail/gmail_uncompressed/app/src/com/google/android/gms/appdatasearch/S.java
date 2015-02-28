package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class s implements Parcelable$Creator<SearchResults>
{
    static void a(final SearchResults searchResults, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, searchResults.mErrorMessage, false);
        b.d(parcel, 1000, searchResults.btV);
        b.a(parcel, 2, searchResults.bwa);
        b.a(parcel, 3, searchResults.bwb);
        b.a(parcel, 4, searchResults.bwc, n);
        b.a(parcel, 5, searchResults.bwd, n);
        b.a(parcel, 6, searchResults.bwe, n);
        b.d(parcel, 7, searchResults.bwf);
        b.a(parcel, 8, searchResults.bwg);
        b.a(parcel, 9, searchResults.bwh);
        b.a(parcel, 10, searchResults.bwi);
        b.a(parcel, searchResults.bwj);
        b.D(parcel, ae);
    }
    
    public static SearchResults d(final Parcel parcel) {
        int g = 0;
        double[] u = null;
        final int ad = a.ad(parcel);
        byte[] s = null;
        String[] w = null;
        int[] t = null;
        Bundle[] array = null;
        Bundle[] array2 = null;
        Bundle[] array3 = null;
        byte[] s2 = null;
        int[] t2 = null;
        String p = null;
        int g2 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 1000: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    t2 = a.t(parcel, int1);
                    continue;
                }
                case 3: {
                    s2 = a.s(parcel, int1);
                    continue;
                }
                case 4: {
                    array3 = a.b(parcel, int1, (android.os.Parcelable$Creator<Bundle>)Bundle.CREATOR);
                    continue;
                }
                case 5: {
                    array2 = a.b(parcel, int1, (android.os.Parcelable$Creator<Bundle>)Bundle.CREATOR);
                    continue;
                }
                case 6: {
                    array = a.b(parcel, int1, (android.os.Parcelable$Creator<Bundle>)Bundle.CREATOR);
                    continue;
                }
                case 7: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 8: {
                    t = a.t(parcel, int1);
                    continue;
                }
                case 9: {
                    w = a.w(parcel, int1);
                    continue;
                }
                case 10: {
                    s = a.s(parcel, int1);
                    continue;
                }
                case 11: {
                    u = a.u(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new SearchResults(g2, p, t2, s2, array3, array2, array, g, t, w, s, u);
    }
}
