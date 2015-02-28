package com.google.android.gms.usagereporting;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<UsageReportingOptInOptions>
{
    static void a(final UsageReportingOptInOptions usageReportingOptInOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, usageReportingOptInOptions.btV);
        b.d(parcel, 2, usageReportingOptInOptions.ckI);
        b.D(parcel, ae);
    }
}
