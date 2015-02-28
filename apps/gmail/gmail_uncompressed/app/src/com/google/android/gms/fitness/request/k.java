package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class k implements Parcelable$Creator<DataDeleteRequest>
{
    static void a(final DataDeleteRequest dataDeleteRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, dataDeleteRequest.Mx());
        b.d(parcel, 1000, dataDeleteRequest.Jt());
        b.a(parcel, 2, dataDeleteRequest.My());
        b.b(parcel, 3, dataDeleteRequest.Nc(), false);
        b.b(parcel, 4, dataDeleteRequest.Mr(), false);
        b.b(parcel, 5, dataDeleteRequest.Nd(), false);
        b.a(parcel, 6, dataDeleteRequest.Ne());
        b.a(parcel, 7, dataDeleteRequest.Nf());
        b.D(parcel, ae);
    }
}
