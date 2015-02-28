package com.google.android.gms.clearcut;

import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<LogEventParcelable>
{
    static void a(final LogEventParcelable logEventParcelable, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, logEventParcelable.versionCode);
        b.a(parcel, 2, (Parcelable)logEventParcelable.bBM, n, false);
        b.a(parcel, 3, logEventParcelable.bBN);
        b.D(parcel, ae);
    }
    
    public static LogEventParcelable aa(final Parcel parcel) {
        final int ad = a.ad(parcel);
        qu qu = null;
        int g = 0;
        byte[] s = null;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    qu = a.a(parcel, int1, (android.os.Parcelable$Creator<qu>)com.google.android.gms.internal.qu.CREATOR);
                    continue;
                }
                case 3: {
                    s = a.s(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new LogEventParcelable(g, qu, s);
    }
}
