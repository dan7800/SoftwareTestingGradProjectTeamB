package com.google.android.gms.common.data;

import android.database.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class i implements Parcelable$Creator<DataHolder>
{
    static void a(final DataHolder dataHolder, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, dataHolder.KL());
        b.d(parcel, 1000, dataHolder.Jt());
        b.a(parcel, 2, dataHolder.KM(), n);
        b.d(parcel, 3, dataHolder.getStatusCode());
        b.a(parcel, 4, dataHolder.KJ());
        b.D(parcel, ae);
    }
    
    public static DataHolder ac(final Parcel parcel) {
        int g = 0;
        Bundle r = null;
        final int ad = a.ad(parcel);
        CursorWindow[] array = null;
        String[] w = null;
        int g2 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    w = a.w(parcel, int1);
                    continue;
                }
                case 1000: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    array = a.b(parcel, int1, (android.os.Parcelable$Creator<CursorWindow>)CursorWindow.CREATOR);
                    continue;
                }
                case 3: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 4: {
                    r = a.r(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        final DataHolder dataHolder = new DataHolder(g2, w, array, g, r);
        dataHolder.KK();
        return dataHolder;
    }
}
