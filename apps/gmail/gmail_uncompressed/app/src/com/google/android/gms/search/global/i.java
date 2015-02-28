package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<SetExperimentIdsCall$Request>
{
    static void a(final SetExperimentIdsCall$Request setExperimentIdsCall$Request, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, setExperimentIdsCall$Request.btV);
        b.a(parcel, 1, setExperimentIdsCall$Request.ckp);
        b.a(parcel, 2, setExperimentIdsCall$Request.ckq);
        b.D(parcel, ae);
    }
}
