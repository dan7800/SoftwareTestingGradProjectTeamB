package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class w implements Parcelable$Creator<SuggestionResults>
{
    static void a(final SuggestionResults suggestionResults, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, suggestionResults.mErrorMessage, false);
        b.d(parcel, 1000, suggestionResults.btV);
        b.a(parcel, 2, suggestionResults.bwy);
        b.a(parcel, 3, suggestionResults.bwz);
        b.D(parcel, ae);
    }
    
    public static SuggestionResults g(final Parcel parcel) {
        String[] w = null;
        final int ad = a.ad(parcel);
        String p = null;
        int g = 0;
        String[] w2 = null;
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
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    w2 = a.w(parcel, int1);
                    continue;
                }
                case 3: {
                    w = a.w(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new SuggestionResults(g, p, w2, w);
    }
}
