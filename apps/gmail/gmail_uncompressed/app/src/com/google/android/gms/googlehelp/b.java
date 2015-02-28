package com.google.android.gms.googlehelp;

import android.accounts.*;
import android.graphics.*;
import android.net.*;
import com.google.android.gms.googlehelp.internal.common.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class b implements Parcelable$Creator<GoogleHelp>
{
    static void a(final GoogleHelp googleHelp, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, googleHelp.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, googleHelp.bQA, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)googleHelp.bQB, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, googleHelp.bQC);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, googleHelp.bQD);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, googleHelp.bQE);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, googleHelp.bQF, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, googleHelp.alt, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, googleHelp.bQG, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, googleHelp.bQH);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable)googleHelp.bQI, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, googleHelp.bQM);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, googleHelp.bQN, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, googleHelp.bQO, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, (Parcelable)googleHelp.bQP, n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 17, googleHelp.bQR);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 16, googleHelp.bQQ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, googleHelp.bQJ);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 18, googleHelp.bQS, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 21, googleHelp.bQL);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 20, googleHelp.bQK);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
