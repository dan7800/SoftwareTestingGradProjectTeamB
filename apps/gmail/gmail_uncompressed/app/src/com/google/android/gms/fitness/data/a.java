package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<Application>
{
    static void a(final Application application, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, application.getPackageName(), false);
        b.d(parcel, 1000, application.Jt());
        b.a(parcel, 2, application.getVersion(), false);
        b.a(parcel, 3, application.Mo(), false);
        b.D(parcel, ae);
    }
}
