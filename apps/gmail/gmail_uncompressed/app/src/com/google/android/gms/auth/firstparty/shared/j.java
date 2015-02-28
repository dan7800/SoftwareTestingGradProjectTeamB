package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class j implements Parcelable$Creator<ScopeDetail>
{
    static void a(final ScopeDetail scopeDetail, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, scopeDetail.version);
        b.a(parcel, 2, scopeDetail.description, false);
        b.a(parcel, 3, scopeDetail.bxU, false);
        b.a(parcel, 4, scopeDetail.bAj, false);
        b.a(parcel, 5, scopeDetail.bAk, false);
        b.a(parcel, 6, scopeDetail.byV, false);
        b.a(parcel, 7, scopeDetail.bAl, false);
        b.a(parcel, 8, (Parcelable)scopeDetail.bAm, n, false);
        b.D(parcel, ae);
    }
}
