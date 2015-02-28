package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<AccountChangeEventsResponse>
{
    static void a(final AccountChangeEventsResponse accountChangeEventsResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountChangeEventsResponse.bxf);
        b.b(parcel, 2, accountChangeEventsResponse.bxl, false);
        b.D(parcel, ae);
    }
    
    public static AccountChangeEventsResponse s(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        Object c = null;
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
                    c = a.c(parcel, int1, (android.os.Parcelable$Creator<Object>)AccountChangeEvent.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountChangeEventsResponse(g, (List<AccountChangeEvent>)c);
    }
}
