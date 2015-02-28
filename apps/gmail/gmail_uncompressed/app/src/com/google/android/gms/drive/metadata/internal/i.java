package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class i implements Parcelable$Creator<MetadataBundle>
{
    static void a(final MetadataBundle metadataBundle, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, metadataBundle.btV);
        b.a(parcel, 2, metadataBundle.bIj);
        b.D(parcel, ae);
    }
}
