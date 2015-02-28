package com.google.android.gms.people.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<AccountMetadata>
{
    static void a(final AccountMetadata accountMetadata, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountMetadata.btV);
        b.a(parcel, 2, accountMetadata.cjM);
        b.a(parcel, 3, accountMetadata.cjN);
        b.a(parcel, 4, accountMetadata.cjO);
        b.a(parcel, 5, accountMetadata.cjP);
        b.D(parcel, ae);
    }
}
