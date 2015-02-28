package com.google.android.gms.auth.api;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class a implements Parcelable$Creator<GoogleAuthApiRequest>
{
    static void a(final GoogleAuthApiRequest googleAuthApiRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, googleAuthApiRequest.name, false);
        b.d(parcel, 1000, googleAuthApiRequest.versionCode);
        b.a(parcel, 2, googleAuthApiRequest.version, false);
        b.a(parcel, 3, googleAuthApiRequest.bxE, false);
        b.a(parcel, 4, googleAuthApiRequest.bxF, false);
        b.a(parcel, 5, googleAuthApiRequest.bxG);
        b.a(parcel, 6, googleAuthApiRequest.acw, false);
        b.a(parcel, 7, googleAuthApiRequest.bxH, false);
        b.a(parcel, 8, googleAuthApiRequest.bxI, false);
        b.d(parcel, 9, googleAuthApiRequest.bxJ);
        b.a(parcel, 10, googleAuthApiRequest.bxK);
        b.a(parcel, 11, googleAuthApiRequest.bxL);
        b.a(parcel, 12, googleAuthApiRequest.bxM);
        b.D(parcel, ae);
    }
}
