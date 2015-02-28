package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<Message>
{
    static void a(final Message message, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, message.Jt());
        b.a(parcel, 2, message.getNamespace(), false);
        b.a(parcel, 3, message.getType(), false);
        b.a(parcel, 4, message.getPayload());
        b.D(parcel, ae);
    }
}
