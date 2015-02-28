package com.google.android.gms.udc;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ConsentFlowConfig>
{
    static void a(final ConsentFlowConfig consentFlowConfig, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, consentFlowConfig.Jt());
        b.a(parcel, 2, consentFlowConfig.Vw());
        b.a(parcel, 3, consentFlowConfig.Vx());
        b.D(parcel, ae);
    }
}
