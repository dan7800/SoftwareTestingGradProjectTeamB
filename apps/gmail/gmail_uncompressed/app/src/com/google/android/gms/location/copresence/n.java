package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class n implements Parcelable$Creator<SubscribedMessage>
{
    static void a(final SubscribedMessage subscribedMessage, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, subscribedMessage.Jt());
        b.a(parcel, 2, (Parcelable)subscribedMessage.Rj(), n, false);
        b.D(parcel, ae);
    }
}
