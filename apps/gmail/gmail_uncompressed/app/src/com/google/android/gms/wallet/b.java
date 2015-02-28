package com.google.android.gms.wallet;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<Cart>
{
    static void a(final Cart cart, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, cart.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, cart.ckL, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, cart.ckM, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, cart.ckN, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
