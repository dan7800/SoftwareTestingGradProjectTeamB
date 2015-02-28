package com.google.android.gms.udc;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<SettingState>
{
    static void a(final SettingState settingState, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, settingState.Jt());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, settingState.Vy());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 3, settingState.Vz());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, settingState.VA());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
