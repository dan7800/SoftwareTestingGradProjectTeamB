package com.google.android.gms.identity.intents;

import android.os.*;
import com.google.android.gms.identity.intents.model.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<UserAddressRequest>
{
    static void a(final UserAddressRequest userAddressRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, userAddressRequest.Jt());
        b.b(parcel, 2, userAddressRequest.bQZ, false);
        b.D(parcel, ae);
    }
}
