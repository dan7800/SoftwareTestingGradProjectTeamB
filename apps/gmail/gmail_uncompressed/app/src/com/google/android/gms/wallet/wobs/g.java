package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<TextModuleData>
{
    static void a(final TextModuleData textModuleData, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, textModuleData.Jt());
        b.a(parcel, 2, textModuleData.cmF, false);
        b.a(parcel, 3, textModuleData.bSx, false);
        b.D(parcel, ae);
    }
}
