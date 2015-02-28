package com.google.android.gms.fitness.request;

import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class c implements Parcelable$Creator<StartBleScanRequest>
{
    static void a(final StartBleScanRequest startBleScanRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, startBleScanRequest.Mr(), false);
        b.d(parcel, 1000, startBleScanRequest.Jt());
        b.a(parcel, 2, startBleScanRequest.Nv());
        b.d(parcel, 3, startBleScanRequest.Nu());
        b.D(parcel, ae);
    }
}
