package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class m implements Parcelable$Creator<DataReadRequest>
{
    static void a(final DataReadRequest dataReadRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, dataReadRequest.Mr(), false);
        b.d(parcel, 1000, dataReadRequest.Jt());
        b.b(parcel, 2, dataReadRequest.Nc(), false);
        b.a(parcel, 3, dataReadRequest.Mx());
        b.a(parcel, 4, dataReadRequest.My());
        b.b(parcel, 5, dataReadRequest.Ng(), false);
        b.b(parcel, 6, dataReadRequest.Nh(), false);
        b.d(parcel, 7, dataReadRequest.Mv());
        b.a(parcel, 8, dataReadRequest.Nm());
        b.a(parcel, 9, (Parcelable)dataReadRequest.Ni(), n, false);
        b.d(parcel, 10, dataReadRequest.mx());
        b.a(parcel, 11, dataReadRequest.Nj());
        b.a(parcel, 12, dataReadRequest.Nl());
        b.a(parcel, 13, dataReadRequest.Nk());
        b.D(parcel, ae);
    }
}
