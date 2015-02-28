package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class q implements Parcelable$Creator<fp>
{
    static void a(final fp fp, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fp.versionCode);
        b.a(parcel, 2, fp.bRY, false);
        b.a(parcel, 3, fp.bSx, false);
        b.a(parcel, 4, fp.bSy, false);
        b.d(parcel, 5, fp.errorCode);
        b.a(parcel, 6, fp.bSz, false);
        b.a(parcel, 7, fp.bSA);
        b.a(parcel, 8, fp.bSB);
        b.a(parcel, 9, fp.bSC);
        b.a(parcel, 10, fp.bSD, false);
        b.a(parcel, 11, fp.bSE);
        b.d(parcel, 12, fp.orientation);
        b.a(parcel, 13, fp.bSF, false);
        b.a(parcel, 14, fp.bSG);
        b.a(parcel, 15, fp.bSH, false);
        b.a(parcel, 19, fp.bSJ, false);
        b.a(parcel, 18, fp.bSI);
        b.a(parcel, 21, fp.bSK, false);
        b.a(parcel, 23, fp.bSM);
        b.a(parcel, 22, fp.bSL);
        b.a(parcel, 25, fp.bSN);
        b.a(parcel, 24, fp.bSw);
        b.D(parcel, ae);
    }
}
