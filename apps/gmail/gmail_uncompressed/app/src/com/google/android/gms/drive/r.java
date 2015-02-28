package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class r implements Parcelable$Creator<RealtimeDocumentSyncRequest>
{
    static void a(final RealtimeDocumentSyncRequest realtimeDocumentSyncRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, realtimeDocumentSyncRequest.btV);
        b.a(parcel, 2, realtimeDocumentSyncRequest.bGF, false);
        b.a(parcel, 3, realtimeDocumentSyncRequest.bGG, false);
        b.D(parcel, ae);
    }
}
