package com.google.android.gms.feedback;

import android.app.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class g implements Parcelable$Creator<ErrorReport>
{
    static void a(final ErrorReport errorReport, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, errorReport.versionCode);
        b.a(parcel, 2, (Parcelable)errorReport.bJA, n, false);
        b.a(parcel, 3, errorReport.description, false);
        b.d(parcel, 4, errorReport.bJB);
        b.a(parcel, 5, errorReport.bJC, false);
        b.a(parcel, 6, errorReport.bJD, false);
        b.a(parcel, 7, errorReport.bJE, false);
        b.a(parcel, 8, errorReport.bJF, false);
        b.a(parcel, 9, errorReport.bJG, false);
        b.a(parcel, 10, errorReport.bJH, false);
        b.a(parcel, 11, errorReport.bJI, false);
        b.d(parcel, 12, errorReport.bJJ);
        b.a(parcel, 13, errorReport.release, false);
        b.a(parcel, 14, errorReport.bJK, false);
        b.a(parcel, 15, errorReport.bJL, false);
        b.a(parcel, 17, errorReport.bJN, false);
        b.a(parcel, 16, errorReport.bJM, false);
        b.a(parcel, 19, errorReport.bJP);
        b.a(parcel, 18, errorReport.bJO);
        b.a(parcel, 21, errorReport.bJR, false);
        b.a(parcel, 20, errorReport.bJQ);
        b.a(parcel, 23, errorReport.bJT);
        b.a(parcel, 22, errorReport.bJS, false);
        b.d(parcel, 25, errorReport.bJV);
        b.d(parcel, 24, errorReport.bJU);
        b.d(parcel, 27, errorReport.bJX);
        b.d(parcel, 26, errorReport.bJW);
        b.a(parcel, 29, errorReport.blK, false);
        b.a(parcel, 28, errorReport.bJY, false);
        b.a(parcel, 31, errorReport.bKa);
        b.a(parcel, 30, errorReport.bJZ, false);
        b.d(parcel, 34, errorReport.bKd);
        b.a(parcel, 35, errorReport.bKe);
        b.a(parcel, 32, errorReport.bKb);
        b.d(parcel, 33, errorReport.bKc);
        b.d(parcel, 38, errorReport.throwLineNumber);
        b.a(parcel, 39, errorReport.throwClassName, false);
        b.a(parcel, 36, errorReport.exceptionClassName, false);
        b.a(parcel, 37, errorReport.throwFileName, false);
        b.a(parcel, 42, errorReport.exceptionMessage, false);
        b.a(parcel, 43, errorReport.bKf, false);
        b.a(parcel, 40, errorReport.throwMethodName, false);
        b.a(parcel, 41, errorReport.stackTrace, false);
        b.a(parcel, 44, errorReport.bKg, false);
        b.D(parcel, ae);
    }
}
