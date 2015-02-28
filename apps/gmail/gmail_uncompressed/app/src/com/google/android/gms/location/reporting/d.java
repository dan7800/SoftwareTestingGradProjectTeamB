package com.google.android.gms.location.reporting;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<ReportingState>
{
    static void a(final ReportingState reportingState, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, reportingState.Jt());
        b.d(parcel, 2, reportingState.TJ());
        b.d(parcel, 3, reportingState.TK());
        b.a(parcel, 4, reportingState.TL());
        b.a(parcel, 5, reportingState.isActive());
        b.a(parcel, 6, reportingState.TM());
        b.d(parcel, 7, reportingState.TN());
        b.a(parcel, 8, reportingState.TO());
        b.D(parcel, ae);
    }
}
