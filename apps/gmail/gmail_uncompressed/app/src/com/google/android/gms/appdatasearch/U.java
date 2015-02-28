package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class u implements Parcelable$Creator<StorageStats>
{
    static void a(final StorageStats storageStats, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, storageStats.bwu, n);
        b.d(parcel, 1000, storageStats.btV);
        b.a(parcel, 2, storageStats.bwv);
        b.a(parcel, 3, storageStats.bww);
        b.a(parcel, 4, storageStats.bwx);
        b.D(parcel, ae);
    }
    
    public static StorageStats e(final Parcel parcel) {
        long i = 0L;
        final int ad = a.ad(parcel);
        int g = 0;
        RegisteredPackageInfo[] array = null;
        long j = i;
        long k = i;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    array = a.b(parcel, int1, (android.os.Parcelable$Creator<RegisteredPackageInfo>)RegisteredPackageInfo.CREATOR);
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
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new StorageStats(g, array, k, j, i);
    }
}
