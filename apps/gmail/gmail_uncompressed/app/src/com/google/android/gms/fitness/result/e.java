package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class e implements Parcelable$Creator<ListSubscriptionsResult>
{
    static void a(final ListSubscriptionsResult listSubscriptionsResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, listSubscriptionsResult.NL(), false);
        b.d(parcel, 1000, listSubscriptionsResult.Jt());
        b.a(parcel, 2, (Parcelable)listSubscriptionsResult.Jk(), n, false);
        b.D(parcel, ae);
    }
}
