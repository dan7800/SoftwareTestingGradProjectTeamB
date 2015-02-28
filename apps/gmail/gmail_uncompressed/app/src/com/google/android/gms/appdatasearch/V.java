package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class v implements Parcelable$Creator<SuggestSpecification>
{
    static void a(final SuggestSpecification suggestSpecification, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, suggestSpecification.btV);
        b.D(parcel, ae);
    }
    
    public static SuggestSpecification f(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1000: {
                    g = a.g(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new SuggestSpecification(g);
    }
}
