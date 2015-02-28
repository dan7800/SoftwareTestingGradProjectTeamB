package com.google.android.gms.cast;

import android.os.*;
import com.google.android.gms.common.images.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<ApplicationMetadata>
{
    static void a(final ApplicationMetadata applicationMetadata, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, applicationMetadata.Jt());
        b.a(parcel, 2, applicationMetadata.JX(), false);
        b.a(parcel, 3, applicationMetadata.getName(), false);
        b.b(parcel, 4, applicationMetadata.Ka(), false);
        b.a(parcel, 5, applicationMetadata.bBl, false);
        b.a(parcel, 6, applicationMetadata.JY(), false);
        b.a(parcel, 7, (Parcelable)applicationMetadata.JZ(), n, false);
        b.D(parcel, ae);
    }
}
