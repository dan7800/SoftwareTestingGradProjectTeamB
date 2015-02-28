package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class x implements Parcelable$Creator<OnResourceIdSetResponse>
{
    static void a(final OnResourceIdSetResponse onResourceIdSetResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onResourceIdSetResponse.Jt());
        b.a(parcel, 2, onResourceIdSetResponse.LY(), false);
        b.D(parcel, ae);
    }
}
