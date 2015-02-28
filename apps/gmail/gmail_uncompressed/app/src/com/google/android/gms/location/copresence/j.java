package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class j implements Parcelable$Creator<MessageFilter>
{
    static void a(final MessageFilter messageFilter, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, messageFilter.Jt());
        b.b(parcel, 2, messageFilter.Tb(), false);
        b.D(parcel, ae);
    }
}
